/// para cambiar de color los objetos

rojizo = make_colour_rgb(190,164,174);

azulado = make_colour_rgb(171,184,195);

image_blend = -1;

if (yo_soy != "boton_pausa"  && yo_soy != "boton_cafe" && yo_soy != "tile" && yo_soy != "zoom_nevera" && yo_soy != "boton_x_cierra" && yo_soy != "alerta"  && yo_soy != "status" && yo_soy != "mensaje_ganaste"){

    if(mouse_position == myId && !ob_nivel1_1_UI.juego_pausa){
     
        if (my_tile_super == ob_julio.tile_actual || my_tile_ultra == ob_julio.tile_actual){
            
            image_blend = azulado;
        
        } else {
        
            image_blend = rojizo;
            if (!audio_is_playing(snd_noclick) && ob_nivel1_1_UI.suena){
                audio_play_sound(snd_noclick, 8, false);
                ob_nivel1_1_UI.alarm[3] = 60;
                ob_nivel1_1_UI.suena = false;         //sonar
            }
            
        }
     
    }
} else if (yo_soy == "tile" && mouse_position == myId && !ob_nivel1_1_UI.juego_pausa){

    var left_tile, right_tile
    with (ob_julio.tile_actual){     // tile en el que esta Julio
        left_tile = myLeftTile;      // tile de la izquierda
        right_tile = myRightTile;    // tile de la derecha
    }
    if (myId != left_tile && myId != right_tile){   // si el tile seleccionado esta la izq o der de Julio
        
        myId.image_blend = rojizo;      //colorear de rojo
        if (!audio_is_playing(snd_noclick) && ob_nivel1_1_UI.suena){
                audio_play_sound(snd_noclick, 8, false);
                ob_nivel1_1_UI.alarm[3] = 15;
                ob_nivel1_1_UI.suena = false;         //sonar
            }
                     
    } else if (myId == ob_julio.tile_actual){
    
        myId.image_blend = rojizo;
    
    } else {
        
        myId.image_blend = azulado;               //colorear de azul
    } 

}
