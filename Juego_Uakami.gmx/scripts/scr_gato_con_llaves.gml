// cuando el gato tiene las llaves

speed = 0;

sprite_index = sp_gato_llaves_default;

ob_gato.x = ob_tile4.x;

gato_llaves = true;

if (ob_nivel1_1_UI.plato_lleno_en_suelo){

    sprite_index = sp_gato_caminando_default;

    llaves = instance_create(x - 50, y - 10, ob_llaves);
    
    gato_state = scr_gato_caminando;
    
    gato_llaves = false;
    
    gato_bebe_leche = true;
    
    acciones_antes_beber_leche = ob_nivel1_1_UI.acciones;

}
