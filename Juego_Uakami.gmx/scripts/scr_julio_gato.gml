// cuando julio intenta interactuar con el gato

if (en_manos != "nada"){
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

} else {

    if (ob_gato.gato_bebe_leche){
    
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_status_gato_bebe;
    
    } else {
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_alerta_gato;
    
    }
    
    julio_mov_state = scr_julio_estatico;

}
