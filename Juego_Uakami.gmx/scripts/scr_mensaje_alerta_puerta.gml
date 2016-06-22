// cuando hay un mensaje de alerta de no tienes llaves para puerta activo

if (mensajes_alerta_salieron[0] != 1){
    if (!instance_exists(ob_mensajes_alerta)){
        instance_create (x, y, ob_blanco_fondo); 
        mensaje_activo = instance_create(x + 448, y + 156, ob_mensajes_alerta);
        mensaje_activo.sprite_index = sp_mensaje_alerta_puerta; 
        instance_create(ob_mensajes_alerta.bbox_right - 74, ob_mensajes_alerta.bbox_top + 26, ob_x_cierra);
    
        juego_pausa = true;
        mensajes_alerta_salieron[0] = 1;
        mensaje_alerta_activo = true; 
    }
}else if (mensaje_alerta_activo = false){
        mensaje_alerta_pequeno_activo = true;
        mensajes_state = scr_mensaje_status_puerta;
}
