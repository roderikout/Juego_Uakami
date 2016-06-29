// Script para determinar sobre que se hace click

// para mensajes de ayuda

script_execute(scr_mensajes_ayuda);


if (mouse_check_button_released(mb_left) && !ob_julio.caminando){    

    instInteract = instance_position(mouse_x, mouse_y, ob_interactuable); //instancia interactuable
    isBoton = instance_position(mouse_x, mouse_y, ob_x_cierra);
    
   
    //si es un objeto interactuable  
    if (instInteract) {
        with (instInteract){  //con la instancia interactuable, buscar el nombre del objeto y el index de su padre
            Obj_name = yo_soy;
            if (object_is_ancestor(object_index,ob_superTile)) {  //si el objeto padre es un tile
                Tile_id = myId;                      
                Obj_parent = "tile";
            }else if (object_is_ancestor(object_index,ob_recogible)) {  //si el objeto es un recogible
                Tile_under = instance_position(x, y, ob_superTile); //tile que esta debajo directamente del objeto
                Obj_parent = "recogible";
                    if (!soy_silueta && Tile_under == ob_julio.tile_actual && !ob_nivel1_1_UI.juego_pausa && !ob_nivel1_1_UI.plato_lleno_en_suelo){
                        soy_silueta = true;
                    } else {
                        soy_silueta = false;
                    }
            
            }else{             //si el objeto es interactuable
                Tile_under = collision_line(x, y, x, 780, ob_superTile, true, false); //tile que esta abajo linealmente del objeto
                if (object_is_ancestor(object_index,ob_mueble_con_ventana)) {  //si el objeto es un abrible 
                    Obj_parent = "mueble_con_ventana";
                }else{
                
                    Obj_parent = "interactuable";
                }
            }
        }
        
        // si el objeto es un tile, si el tile que estoy clicando esta inmediatamente a la derecha o izquierda del que estoy, 
        // entonces buscar su centro y darle ese punto a la variable de Julio: target_x    
        
        if (Obj_parent == "tile") {
            var left_tile, right_tile
            with (ob_julio.tile_actual){     // tile en el que esta Julio
                left_tile = myLeftTile;      // tile de la izquierda
                right_tile = myRightTile;    // tile de la derecha
            }
            if (Tile_id == left_tile || Tile_id == right_tile){   // si el tile seleccionado esta la izq o der de Julio
                with (Tile_id) {
                    ob_julio.target_x = myCenter;        //el target de Julio es ir al centro del tile seleccionado
                }
                             
                if (!juego_pausa){
                    audio_play_sound(snd_click, 9, false)
                    if (ob_julio.estado_actual != "mareado"){
                        ob_julio.julio_mov_state = scr_julio_caminando; 
                    }else if (Obj_name != "boton_cafe"){
                        ob_julio.julio_alert_state = scr_julio_dormido;  
                    }
                }

            } else if(!juego_pausa) {
                audio_play_sound(snd_na_ah, 9, false);      
            }
        }
        
        
        // si es un objeto recogible preguntar si el tile coincide con Juio y guardar cual es su tipo
        if (Obj_parent == "recogible" && !juego_pausa) {
            // chequear si esta en el mismo tile que Julio
            if (Tile_under == ob_julio.tile_actual) {
                audio_play_sound(snd_click, 9, false)
                if (ob_julio.estado_actual != "mareado"){
                    ob_julio.intento_recoger = instInteract.yo_soy;   //el nombre del objeto que intenta recoger
                    ob_julio.julio_mov_state = scr_julio_recogiendo;
                }else if (Obj_name != "boton_cafe"){
                    ob_julio.julio_alert_state = scr_julio_dormido;        
                }
            } else {
                audio_play_sound(snd_na_ah, 9, false)       
            }
        }
    
        if (Obj_parent == "interactuable" || Obj_parent == "mueble_con_ventana"){
        
            if(Obj_name == "boton_cafe" && ob_julio.estado_actual != "dormido"){

                if (energia < max_energia){
                    audio_play_sound(snd_click, 9, false)
                    ob_julio.julio_mov_state = scr_julio_bebe_cafe;
                } else {
                    audio_play_sound(snd_na_ah, 9, false)
                    mensajes_state = scr_mensaje_status_energia_full;       
                }
            
            }
            
            if(Obj_name == "boton_pausa" && !(instance_exists(ob_mensaje_pausa)) && !(instance_exists(ob_mensaje_ganaste))){
                    
                    audio_play_sound(snd_click, 9, false)
                    instance_create(0,0,ob_mensaje_pausa);
                    juego_pausa = true;
            
            }
            
                    
           if (Tile_under == ob_julio.tile_actual){
           
                if(Obj_parent == "mueble_con_ventana"){
                    audio_play_sound(snd_click, 9, false)
                    if (ob_julio.estado_actual != "mareado"){
                        ob_julio.julio_mov_state = scr_julio_abriendo_mueble;
                    }else if (Obj_name != "boton_cafe"){
                        ob_julio.julio_alert_state = scr_julio_dormido;        
                    }
                }
           
                
                if(Obj_name == "puerta"){
                    audio_play_sound(snd_click, 9, false)
                    if (ob_julio.estado_actual != "mareado"){
                        ob_julio.julio_mov_state = scr_julio_puerta;
                    }else if (Obj_name != "boton_cafe"){
                        ob_julio.julio_alert_state = scr_julio_dormido;        
                    }
                }                
                
                if(Obj_name == "gato"){
                
                    if (ob_gato.gato_llaves || ob_gato.gato_bebe_leche){
                        
                        ob_julio.julio_mov_state = scr_julio_gato;
                                                        
                    }
                
                }
                
                if(Obj_name == "cafetera" && !juego_pausa){
                
                    if (cafe_en_taza < max_cafe_en_taza){
                        audio_play_sound(snd_click, 9, false)
                        ob_julio.julio_mov_state = scr_julio_llena_taza;
                                                        
                    } else {
                        audio_play_sound(snd_na_ah, 9, false);
                        mensajes_state = scr_mensaje_status_taza_llena;       
                    }
                
                }
                
            } else if (Obj_name != "boton_pausa" && Obj_name !="boton_cafe" && !juego_pausa) {
                
                audio_play_sound(snd_na_ah, 9, false);
                      
            } 
        }
        
    }
    
    if (ob_nivel1_1_UI.isBoton > 0 && !instance_exists(ob_animacion_leche)){   //si es el boton para cerrar mensajes
             
        mensajes_state = scr_elimina_mensajes;
        audio_play_sound(snd_click, 9, false)
            
    
    }      
}
