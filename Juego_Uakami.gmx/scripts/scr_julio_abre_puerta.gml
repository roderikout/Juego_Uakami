/// lo que sucede cuando Julio abre la puerta

ganaste = true;

ob_puerta.sprite_index = sp_puerta_abierta_default;

sprite_index = sp_julio_contento;

juego_pausa = true;

if (!instance_exists(ob_mensaje_ganaste) && ob_nivel1_1_UI.sale_mensaje){
    instance_create(0,0,ob_mensaje_ganaste);  
    julio_mov_state = scr_julio_estatico;
}
