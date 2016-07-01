// cuando Julio está cansado

estado_actual = "cansado";

var snd = snd_loop_juego;

switch (ob_nivel1_1_UI.energia){
    case 5:
        julio_alert_state = scr_julio_despierto;
        estado_actual = "despierto";
        break;
    case 0:
        //audio_sound_gain(snd, 0, 1000);
        //audio_play_sound(snd_desafine_mareado, 8 , false);
        julio_alert_state = scr_julio_mareado;
        //audio_sound_pitch(snd, 0.7);
        break;
}

switch (en_manos){
    case "nada":
        sprite_actual = sp_julio_cansado_default;
        break;
    case "plato":
        if (!ob_plato.plato_vacio){
            sprite_actual = sp_julio_cansado_plato_lleno_default;
        } else {
            sprite_actual = sp_julio_cansado_plato_default;
        }
        break;
    case "llaves":
        sprite_actual = sp_julio_cansado_llaves_default;
        break;
}

if (ganaste){

    julio_alert_state = scr_julio_contento;

}

sprite_index = sprite_actual;
