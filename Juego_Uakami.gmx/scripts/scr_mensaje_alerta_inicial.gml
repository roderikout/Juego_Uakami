// cuando hay un mensaje de alerta de no tienes llaves para puerta activo

if (!instance_exists(ob_mensajes_alerta)){
    instance_create (x, y, ob_blanco_fondo); 
    mensaje_activo = instance_create(x , y, ob_mensajes_alerta);
    mensaje_activo.sprite_index = sp_mensaje_inicial_cocina; 
    instance_create(1209, 333, ob_x_cierra);

    juego_pausa = true;
    mensaje_alerta_activo = true;
    
} /*else {
    
    if(mouse_check_button_released(mb_left)){
        
        if(instance_position(mouse_x, mouse_y, ob_x_cierra)){
        
            script_execute(scr_elimina_mensajes);
            salio_mensaje_inicial = true;
        
        }
    
    }

}

