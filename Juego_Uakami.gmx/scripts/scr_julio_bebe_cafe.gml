// cuando Julio bebe café

if (ob_nivel1_1_UI.cafe_en_taza > 0){

    ob_nivel1_1_UI.energia = ob_nivel1_1_UI.max_energia;
    
    ob_nivel1_1_UI.cafe_en_taza -= 1;
    
    if random(3) >= 2
    {
        audio_play_sound(snd_bebe_taza_2, 8, false);
    } else {
        audio_play_sound(snd_bebe_taza_1, 8, false);
    }    
    
    julio_mov_state = scr_julio_estatico;
    
    ob_nivel1_1_UI.mensajes_alerta_salieron[4] = 0;
}
