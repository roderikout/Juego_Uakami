//juego en pausa

juego_pausa = true;

var instInteract

// chequear si se hizo click en un objeto interactuable 
// chequear si se hace click en un objeto interactuable o recogible


if mouse_check_button_released(mb_left){
    instInteract = instance_position(mouse_x, mouse_y, ob_interactuable); //instancia interactuable
    isBoton = instance_position(mouse_x, mouse_y, ob_x_cierra);
   
    //si es un objeto interactuable  
    if (instInteract) {
        with (instInteract){  //buscar el nombre del objeto y el index de su padre
            Obj_name = objName;
            if (object_is_ancestor(object_index,ob_interactuable)) {    
                Tile_under = collision_line(x, y - 10, x, 1080, ob_superTile ,true,false);
                Obj_parent = "interactuable";
            }
        }
           
        if (Obj_parent == "interactuable"){
                                
            if (Tile_under == ob_julio.tile_actual){
           
                if(Obj_name == "ob_nevera"){ 
                    ob_julio.julio_mov_state = scr_julio_abriendo_mueble;
                
                }
            }
        }
        
    }   
    
    if (isBoton){
             
        mensajes_state = scr_sin_mensaje;
            
    
    } 
}
