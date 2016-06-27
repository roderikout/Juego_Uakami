// cuando hay un mensaje de alerta de el gato no suelta llaves activo

if (mensajes_alerta_salieron[1] != 1){
    if (!instance_exists(ob_mensajes_alerta)){
        audio_play_sound(snd_gato_pifia, 8, false);
        instance_create (x, y, ob_blanco_fondo); 
        mensaje_activo = instance_create(x, y, ob_mensajes_alerta);
        mensaje_activo.sprite_index = sp_mensaje_alerta_gato; 
        instance_create(ob_mensajes_alerta.bbox_right -294, ob_mensajes_alerta.bbox_top + 76, ob_x_cierra);
        
        juego_pausa = true;
        mensajes_alerta_salieron[1] = 1;
        mensaje_alerta_activo = true; 
    }
} else if (mensaje_alerta_activo = false){
        audio_play_sound(snd_gato_pifia, 8, false);
        mensaje_alerta_pequeno_activo = true;
        mensajes_state = scr_mensaje_status_gato;
}
