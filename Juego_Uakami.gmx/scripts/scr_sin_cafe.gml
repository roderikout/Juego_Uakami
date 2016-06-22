/// lo que pasa cuando Julio se queda sin cafe

if (mensajes_alerta_salieron[3] = 1){

    cafe_state = scr_tengo_cafe_pregunta;

} else {

    mensajes_alerta_salieron[3] = 1;
    mensajes_state = scr_mensaje_status_sin_cafe;

}

