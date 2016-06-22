/// para colorear los objetos de rojo y azul

instInteract = instance_position(mouse_x, mouse_y, id); //instancia interactuable

//si es un objeto interactuable  
if (instInteract && !ob_nivel1_1_UI.juego_pausa) { //con la instancia interactuable, buscar el nombre del objeto y el index de su padre
    Obj_name = yo_soy;
    if (object_is_ancestor(object_index,ob_superTile)) {  //si el objeto padre es un tile
        Tile_id = myId;
        Obj_parent = "tile";
    }else if (object_is_ancestor(object_index,ob_recogible)) {  //si el objeto es un recogible
        Tile_under = instance_position(x, y, ob_superTile); //tile que esta debajo directamente del objeto
        Obj_parent = "recogible";
    }else{             //si el objeto es interactuable
        Tile_under = collision_line(x, y - 10, x, 1080, ob_superTile ,true,false); //tile que esta abajo linealmente del objeto
        if (object_is_ancestor(object_index,ob_mueble_con_ventana)) {  //si el objeto es un abrible 
            Obj_parent = "mueble_con_ventana";
        }else{
            Obj_parent = "interactuable";
        }
    }
    
    // si el objeto es un tile, si el tile que estoy clicando esta inmediatamente a la derecha o izquierda del que estoy,   
    
    if (Obj_parent == "tile") {
        var left_tile, right_tile
        with (ob_julio.tile_actual){     // tile en el que esta Julio
            left_tile = myLeftTile;      // tile de la izquierda
            right_tile = myRightTile;    // tile de la derecha
        }
        if (Tile_id == left_tile || Tile_id == right_tile){   // si el tile seleccionado esta la izq o der de Julio
            
            Tile_id.image_blend = c_blue;               //colorear de azul
                         
        } else {
            
            Tile_id.image_blend = c_red;               //colorear de rojo
        }   
                                                 
    } 
    
    // si es un objeto recogible preguntar si el tile coincide con Juio y guardar cual es su tipo
    if (Obj_parent == "recogible") {
        // chequear si esta en el mismo tile que Julio
        if (Tile_under == ob_julio.tile_actual) {
            if (Obj_name == "plato" && ob_julio.en_manos == "llaves"){    // preguntar por objeto, si es plato y tiene llaves rojo, else azul
            
                instInteract.image_blend = c_red;
            
            } else {
            
                instInteract.image_blend = c_blue;
            }                                 
             
            if (Obj_name == "llaves" && ob_julio.en_manos == "plato"){   // si es llaves y tiene plato rojo, else azul
            
                instInteract.image_blend = c_red;
            
            } else {
            
                instInteract.image_blend = c_blue;
            }                                     
                                         
        
        } else {
            instInteract.image_blend = c_red;                             //rojo       
        }
    }

    
    if (Obj_parent == "interactuable" || Obj_parent == "mueble_con_ventana"){
                   
       if (Tile_under == ob_julio.tile_actual){
       
            if(Obj_parent == "mueble_con_ventana"){
                
                if (ob_julio.en_manos == "llaves") {    // si tiene llaves rojo, else azul
                    instInteract.image_blend = c_red                              
                } else {
                    instInteract.image_blend = c_blue
                
                }
            }
       
            if(Obj_name == "puerta"){
                if (ob_julio.en_manos == "llaves") {    // si llaves azul, else rojo
                    instInteract.image_blend = c_blue                              
                } else {
                    instInteract.image_blend = c_red
                
                }
                                            
            }                
            
            if(Obj_name == "gato"){
            
                if (ob_gato.gato_llaves){
                    
                   instInteract.image_blend = c_red    // colorear de rojo
                                                    
                }
            
            }
            
        } else {
            instInteract.image_blend = c_red          // instInteract rojo   
        }
    }
    
} else {

    image_blend = -1;
    
}
