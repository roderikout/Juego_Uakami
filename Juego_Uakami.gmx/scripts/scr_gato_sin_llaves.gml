// cuando el gato ya no tiene las llaves

mensaje_caminando_salio = false;

speed = 0;

if (ob_julio.en_manos == "llaves"){

    sprite_index = sp_gato_default;

} else {

    gato_state = scr_gato_con_llaves;
    
    with (ob_llaves){
    
        instance_destroy();
    
    }
}
