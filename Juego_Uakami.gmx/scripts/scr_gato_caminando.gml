// cuando el gato está caminando

sprite_index = sp_gato_caminando_default;


if (mouse_check_button_released(mb_left)){
    if(!audio_is_playing(snd_na_ah) && ob_julio.no_sono_na_ah){
        audio_play_sound(snd_na_ah, 8, false);
        ob_julio.no_sono_na_ah = false;
    }            
    
    if (!mensaje_caminando_salio){
        ob_nivel1_1_UI.mensajes_state = scr_mensaje_status_gato_camina;
    }
}

if (ob_nivel1_1_UI.plato_lleno_en_suelo){

    gato_caminando = true;
    // determinar la distancia entre gato y el el plato
    dist = point_distance(x, y,ob_plato.x - 15, y);
    
    // si la distancia es mayor a su velocidad, moverse
    if  dist > sp {    
        ob_nivel1_1_UI.juego_pausa = true;
        move_towards_point(ob_plato.x - 15, y, sp);
        image_xscale = -1;
    
    } else { // si no, volver a state sin moverse
        ob_nivel1_1_UI.juego_pausa = false;
        gato_state = scr_gato_bebe_leche;

    } 

} else {
    gato_caminando = true;
    // determinar la distancia entre Julio y el punto a ir
    dist = point_distance(x, y,ob_tile4.x + 20, y)
    
    // si la distancia es mayor a su velocidad, moverse
    if  dist > sp {    
        ob_nivel1_1_UI.juego_pausa = true;
        move_towards_point(ob_tile4.x, y, sp);
        image_xscale = 1;
    
    } else { // si no, volver a state estatico
        ob_nivel1_1_UI.juego_pausa = false;
        if (ob_julio.en_manos == "llaves"){
            gato_state = scr_gato_sin_llaves;
        } else {
            gato_state = scr_gato_con_llaves;
        }
    } 

}
