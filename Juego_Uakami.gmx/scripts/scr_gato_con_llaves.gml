// cuando el gato tiene las llaves

speed = 0;

sprite_index = sp_gato_llaves_default;

ob_gato.x = ob_tile4.x + 20;

gato_llaves = true;

gato_caminando = false;

if (ob_nivel1_1_UI.plato_lleno_en_suelo){

    sprite_index = sp_gato_caminando_default;

    llaves = instance_create(ob_tile4.x + 60, y - 10, ob_llaves);
    
    gato_llaves = false; 
    
    acciones_antes_beber_leche = ob_nivel1_1_UI.acciones;
    
    gato_state = scr_gato_caminando;

}
