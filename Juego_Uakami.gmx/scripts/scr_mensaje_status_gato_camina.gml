// cuando hay un mensaje de status cuando el gato camina

if (!ob_julio.caminando){
    if (!instance_exists(ob_mensajes_status)){
        mensaje_activo = instance_create (ob_julio.x_para_status, ob_julio.y - 400, ob_mensajes_status); 
        mensaje_activo.sprite_index = sp_mensaje_status_gato_camina;
        mensaje_una_vez = true;
        alarm[5] = 60;
    }else{
        if (mouse_check_button_released(mb_left) || ob_gato.gato_bebe_leche || ob_gato.gato_llaves || !mensaje_una_vez){
            ob_nivel1_1_UI.mensajes_state = scr_elimina_mensajes;
            
        }
        mensaje_activo.x = ob_julio.x;
        mensaje_activo.y = ob_julio.y - 400; 
    }

}
