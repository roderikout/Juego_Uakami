// cuando el plato está vacío

if (soy_silueta){

    sprite_index = sp_silueta_plato_default;
    
} else {

    if (plato_vacio){
        
            sprite_index = sp_plato_vacio_default;
        
    } else {
        
        sprite_index = sp_plato_default;
        
    }

}


