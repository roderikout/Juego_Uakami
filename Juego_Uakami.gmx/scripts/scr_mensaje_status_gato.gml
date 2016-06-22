// cuando hay un mensaje de status de el gato no suelta llaves activo

if (!ob_julio.caminando){
    if (!instance_exists(ob_mensajes_status)){
        mensaje_activo = instance_create (ob_julio.x, ob_julio.y - 400, ob_mensajes_status); 
        mensaje_activo.sprite_index = sp_mensaje_status_gato;
        mensaje_off = false;
        alarm[1] = 105;
    }else{
        if mouse_check_button_released(mb_left){
            ob_nivel1_1_UI.mensajes_state = scr_elimina_mensajes;
            
        }
        mensaje_activo.x = ob_julio.x;
        mensaje_activo.y = ob_julio.y - 400; 
    }
    
    script_execute(scr_on_off_mensajes);
}
