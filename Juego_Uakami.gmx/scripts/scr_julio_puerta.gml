// cuando julio intenta abrir la puerta

if (en_manos != "llaves" && en_manos != "nada"){
    if (!ob_nivel1_1_UI.juego_pausa){
        if (ob_nivel1_1_UI.energia > 0){
            ob_nivel1_1_UI.acciones +=1;
            ob_nivel1_1_UI.energia -=1;
        }else{
            julio_alert_state = scr_julio_dormido;
        }
    ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_manos;
    }
    julio_mov_state = scr_julio_estatico;

}else if (en_manos != "llaves"){
    if (!ob_nivel1_1_UI.juego_pausa){
        if (ob_nivel1_1_UI.energia > 0){
            ob_nivel1_1_UI.acciones +=1;
            ob_nivel1_1_UI.energia -=1;
        }else{
            julio_alert_state = scr_julio_dormido;
        }
    ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_puerta;
    }
    julio_mov_state = scr_julio_estatico;

} else {

    julio_mov_state = scr_julio_abre_puerta;

}
