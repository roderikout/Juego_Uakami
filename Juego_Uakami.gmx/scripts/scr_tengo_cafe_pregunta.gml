/// Julio se pregunta si tiene cafe y si tiene energia

if (energia == 0){

    ob_boton_cafe.sprite_index = sp_boton_cafe_glow;

    if (mensajes_alerta_salieron[4] == 0){

        mensajes_state = scr_mensaje_status_sin_energia;

    }

}   else {
    
    ob_boton_cafe.sprite_index = sp_boton_cafe_default;

}   


if (cafe_en_taza == 0){

    ob_cafetera.sprite_index = sp_cafetera_glow;

    if (mensajes_alerta_salieron[3] == 0){

    cafe_state = scr_sin_cafe;
    
    }
    
} else {
    
    ob_cafetera.sprite_index = sp_cafetera;

}


