// cuando Julio bebe café

if (ob_nivel1_1_UI.cafe_en_taza > 0){

    ob_nivel1_1_UI.energia = ob_nivel1_1_UI.max_energia;
    
    ob_nivel1_1_UI.cafe_en_taza -= 1;
    
    julio_mov_state = scr_julio_estatico;
    
    ob_nivel1_1_UI.mensajes_alerta_salieron[4] = 0;
}
