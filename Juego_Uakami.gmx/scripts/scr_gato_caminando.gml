// cuando el gato está caminando

if (gato_bebe_leche){
    // determinar la distancia entre gato y el el plato
    dist = point_distance(x, y,ob_plato.x, y)
    
    // si la distancia es mayor a su velocidad, moverse
    if  dist > sp {    
        ob_nivel1_1_UI.juego_pausa = true;
        move_towards_point(ob_plato.x, y, sp);
    
    } else { // si no, volver a state sin moverse
        ob_nivel1_1_UI.juego_pausa = false;
        gato_state = scr_gato_bebe_leche;

    } 

} else {

    // determinar la distancia entre Julio y el punto a ir
    dist = point_distance(x, y,ob_tile4.x, y)
    
    // si la distancia es mayor a su velocidad, moverse
    if  dist > sp {    
        ob_nivel1_1_UI.juego_pausa = true;
        move_towards_point(ob_tile4.x, y, sp);
    
    } else { // si no, volver a state estatico
        ob_nivel1_1_UI.juego_pausa = false;
        if (ob_julio.en_manos == "llaves"){
            gato_state = scr_gato_sin_llaves;
        } else {
            gato_state = scr_gato_con_llaves;
        }
    } 

}
