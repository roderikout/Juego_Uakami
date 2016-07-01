// cuando Julio está mareado

estado_actual = "mareado";
var snd = snd_loop_juego;

switch (ob_nivel1_1_UI.energia){
    case 5:
    julio_alert_state = scr_julio_despierto;
    //audio_stop_sound(snd_desafine_mareado);
    estado_actual = "despierto"
    break;

}

switch (en_manos){
    case "nada":
        sprite_actual = sp_julio_mareado_default;
        break;
    case "plato":
        if (!ob_plato.plato_vacio){
            sprite_actual = sp_julio_mareado_plato_lleno_default;
        } else {
            sprite_actual = sp_julio_mareado_plato_default;
        }
        break;
    case "llaves":
        sprite_actual = sp_julio_mareado_llaves_default;
        break;
}

if (ganaste){

    julio_alert_state = scr_julio_contento;

}

sprite_index = sprite_actual;
audio_sound_pitch(snd, 0.7);
