// para la nevera cerrada

if (nevera_cerrada) {
    if(ob_julio.en_manos = "plato" || ob_julio.en_manos = "nada"){  
        sprite_index = sp_nevera_abierta_default;
        ob_nivel1_1_UI.juego_pausa = true;
        alarm[0] = 15;
        nevera_state = scr_nevera_abierta;
        if(!ob_nevera.sono_abrir_puerta){
            audio_play_sound(snd_nevera_abre, 8, false);
            ob_nevera.sono_abrir_puerta = true;
        }
    }else{
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_manos;
        nevera_state = scr_nevera_desactivada;
    }
    
} else {

    nevera_state = scr_nevera_desactivada;
}  











