// cuando no hay mensajes activos

if (instance_exists(ob_mensajes_alerta)){
    
    juego_pausa = false;
    mensaje_alerta_activo = false;
    with(ob_mensajes_alerta){
        instance_destroy();
    }
    
}

if (instance_exists(ob_mensajes_status)){

    with(ob_mensajes_status){
        instance_destroy();
    }
    
    ob_julio.no_sono_na_ah = true;
    
    mensaje_una_vez = false;
}

if (instance_exists(ob_nevera_zoom)){

    ob_nevera.nevera_cerrada = false;
    ob_nevera.nevera_state = scr_nevera_cerrada;
    audio_play_sound(snd_nevera_cierra, 8, false);
    ob_nevera.alarm[1] = 5;

    with(ob_nevera_zoom){
        instance_destroy();
    }
    
    with(ob_selector){
        instance_destroy();
    }
    
    with(ob_mano_julio){
        instance_destroy();
    }
    
}
    
if (instance_exists(ob_blanco_fondo)){ 
    
    with(ob_blanco_fondo){
        instance_destroy();
    }
    
    with(ob_x_cierra){
        instance_destroy();
    }  
    
}


mensajes_state = scr_sin_mensaje;
