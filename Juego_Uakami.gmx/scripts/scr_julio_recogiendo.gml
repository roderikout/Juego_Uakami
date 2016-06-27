// cuando Julio recoge o deja algo en el suelo

//hay que volver este script escalable


//  chequear si estan las manos vacias, activar estado de manos ocupadas, desaparecer objeto clicado y sumar una accion

if (!manos_ocupadas){ // recoge objeto
    switch(intento_recoger){   
        case "plato":
            ob_plato.soy_silueta = true;
            audio_play_sound(snd_recoge_plato, 8, false);
            break;
        case "llaves":
            ob_llaves.sprite_index = sp_silueta_llaves_default;
            ob_llaves.soy_silueta = true;
            audio_play_sound(snd_exito_llave, 8, false);
            audio_sound_gain(snd_exito_llave,0.3,0);
            audio_play_sound(snd_tomar_llaves, 8, false);
            break; 
    } 
    en_manos = intento_recoger;
    manos_ocupadas = true;
    julio_mov_state = scr_julio_estatico;
    if (ob_nivel1_1_UI.energia > 0){  //solo podria salir mensaje status porque no tiene nada en manos
        ob_nivel1_1_UI.acciones +=1;
        ob_nivel1_1_UI.energia -=1;
    }else{
        julio_alert_state = scr_julio_dormido;
    }    
} else { //suelta objeto
    if (intento_recoger == en_manos){
        switch (en_manos) {
            case "plato":
                ob_plato.soy_silueta = false;
                audio_play_sound(snd_coloca_plato, 8, false);
                if(!ob_plato.plato_vacio){
                    ob_nivel1_1_UI.plato_lleno_en_suelo = true;
                }
                break;
            case "llaves":
                ob_llaves.sprite_index = sp_llaves_default;
                audio_play_sound(snd_soltar_llaves, 8, false);
                ob_llaves.soy_silueta = false;
                break;
        }
        manos_ocupadas = false;
        en_manos = "nada";
        julio_mov_state = scr_julio_estatico;
        if (ob_nivel1_1_UI.energia > 0){ //no podria haber error por dos mensajes porque efectivamente suelta el objeto
            ob_nivel1_1_UI.acciones +=1;
            ob_nivel1_1_UI.energia -=1;
        }else{
            julio_alert_state = scr_julio_dormido;
        }
    } else {
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_manos;
        julio_mov_state = scr_julio_estatico;
    }

}
