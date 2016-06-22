/// para cambiar de color los objetos

image_blend = -1;

if (yo_soy != "boton_pausa"  && yo_soy != "boton_cafe" && yo_soy != "tile" && yo_soy != "zoom_nevera" && yo_soy != "boton_x_cierra"){

    if(mouse_position == myId && !ob_nivel1_1_UI.juego_pausa){
     
        if (my_tile_super == ob_julio.tile_actual || my_tile_ultra == ob_julio.tile_actual){
            
            image_blend = c_aqua;
        
        } else {
        
            image_blend = c_red;
            
        }
     
    }
} else if (yo_soy == "tile" && mouse_position == myId && !ob_nivel1_1_UI.juego_pausa){

    var left_tile, right_tile
    with (ob_julio.tile_actual){     // tile en el que esta Julio
        left_tile = myLeftTile;      // tile de la izquierda
        right_tile = myRightTile;    // tile de la derecha
    }
    if (myId != left_tile && myId != right_tile){   // si el tile seleccionado esta la izq o der de Julio
        
        myId.image_blend = c_red;               //colorear de rojo
                     
    } else if (myId == ob_julio.tile_actual){
    
        myId.image_blend = c_red;
    
    } else {
        
        myId.image_blend = c_blue;               //colorear de azul
    } 

}
