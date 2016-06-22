// para la nevera cerrada

if (nevera_cerrada) {
    if(ob_julio.en_manos = "plato" || ob_julio.en_manos = "nada"){  
        sprite_index = sp_nevera_abierta_default;
        ob_nivel1_1_UI.juego_pausa = true;
        alarm[0] = 15;
        nevera_state = scr_nevera_abierta;
    }else{
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_manos;
        nevera_state = scr_nevera_desactivada;
    }
    
} else {

    nevera_state = scr_nevera_desactivada;
}  











