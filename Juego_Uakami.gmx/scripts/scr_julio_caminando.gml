///cuando Julio está caminando

if (!caminando){
    ob_nivel1_1_UI.acciones +=1;
    ob_nivel1_1_UI.energia -=1;
}

// determinar la distancia entre Julio y el punto a ir
dist = point_distance(x, y,target_x, y)

if(target_x > x){

    image_xscale = -1;

} else {

    image_xscale = 1;
    
}

// si la distancia es mayor a su velocidad, moverse
if  dist > sp {    
    caminando = true;
    move_towards_point(target_x, y, sp);

} else { // si no, volver a state estatico
    caminando = false;
    julio_mov_state = scr_julio_estatico;

}



