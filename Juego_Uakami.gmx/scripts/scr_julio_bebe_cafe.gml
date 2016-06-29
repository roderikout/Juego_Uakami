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
} else {
    if(!audio_is_playing(snd_na_ah) && no_sono_na_ah){
        audio_play_sound(snd_na_ah, 9, false);
        no_sono_na_ah = false;
    }
    ob_nivel1_1_UI.mensajes_state = scr_mensaje_status_sin_cafe;
}
