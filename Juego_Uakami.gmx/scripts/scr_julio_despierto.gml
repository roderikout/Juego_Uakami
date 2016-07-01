// cuando Julio está despierto

var snd = snd_loop_juego;

//audio_sound_gain(snd, 1, 500);

audio_sound_pitch(snd, 1);


switch (ob_nivel1_1_UI.energia){
    case 5:
    case 4:
    case 3:
        estado_actual = "despierto"
        break;
    case 2:
        audio_play_sound(snd_bostezo, 8 , false);
        julio_alert_state = scr_julio_cansado;
        break;
    case 0:
        julio_alert_state = scr_julio_mareado;
    break;
}

switch (en_manos){
    case "nada":
        sprite_actual = sp_julio_default;
        break;
    case "plato":
        if (!ob_plato.plato_vacio){
            sprite_actual = sp_julio_plato_lleno_default;
        } else {
            sprite_actual = sp_julio_plato_default;
        }
        break;
    case "llaves":
        sprite_actual = sp_julio_llaves_default;
        break;
}

if (ganaste){

    julio_alert_state = scr_julio_contento;

}

sprite_index = sprite_actual;
