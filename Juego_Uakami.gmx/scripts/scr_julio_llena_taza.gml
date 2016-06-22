// cuando Julio está llenando taza

if (!ob_nivel1_1_UI.juego_pausa){
    if (ob_nivel1_1_UI.energia > 0){
        ob_nivel1_1_UI.acciones +=1;
        ob_nivel1_1_UI.energia -=1;
    }else{
        julio_alert_state = scr_julio_dormido;
    }
    ob_nivel1_1_UI.cafe_en_taza = 3;
    ob_nivel1_1_UI.mensajes_alerta_salieron[3] = 0;

}

julio_mov_state = scr_julio_estatico;
