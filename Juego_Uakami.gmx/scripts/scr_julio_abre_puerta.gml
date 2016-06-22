/// lo que sucede cuando Julio abre la puerta

if (!instance_exists(ob_mensaje_ganaste)){
    instance_create(0,0,ob_mensaje_ganaste);  
}

ob_puerta.sprite_index = sp_puerta_abierta_default;

juego_pausa = true;

julio_mov_state = scr_julio_estatico;
