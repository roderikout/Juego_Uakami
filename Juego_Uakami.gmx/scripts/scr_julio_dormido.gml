// cuando Julio está dormido

estado_actual = "dormido";

switch (en_manos){
    case "nada":
        sprite_actual = sp_julio_dormido_default;
        break;
    case "plato":
        if (!ob_plato.plato_vacio){
            sprite_actual = sp_julio_dormido_plato_lleno_default;
        } else {
            sprite_actual = sp_julio_dormido_plato_default;
        }
        break;
    case "llaves":
        sprite_actual = sp_julio_dormido_llaves_default;
        break;
}

sprite_index = sprite_actual;
ob_nivel1_1_UI.juego_pausa = true;
perdiste = true;

if (!audio_is_playing(snd_ronquido)){
    audio_play_sound(snd_ronquido, 8, true);
}

if (!instance_exists(ob_mensaje_ganaste)){

    mensaje_activo = instance_create(0,0,ob_mensaje_ganaste);
    mensaje_activo.sprite_index = sp_mensaje_perdiste;

}
