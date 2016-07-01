// cuando hay un mensaje de status de sin energia activo

//if (!ob_julio.caminando){
    if (!instance_exists(ob_mensajes_status)){
        mensaje_activo = instance_create (ob_julio.x_para_status, ob_julio.y - 400, ob_mensajes_status); 
        mensaje_activo.sprite_index = sp_mensaje_status_energia;
        mensajes_alerta_salieron[4] = 1;
        mensaje_off = false;
        alarm[1] = 105;
    }else{
        if mouse_check_button_released(mb_left){
            mensajes_state = scr_elimina_mensajes;
        }
        mensaje_activo.x = ob_julio.x;
        mensaje_activo.y = ob_julio.y - 400; 
    }
    
    script_execute(scr_on_off_mensajes);
//}
