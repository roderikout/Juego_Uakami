// cuando la nevera está abierta

var nevera_zoom, mano_julio;

if (zoom == true){
    if (!instance_exists(ob_nevera_zoom)){
        blanco_fondo = instance_create (ob_nivel1_1_UI.x, ob_nivel1_1_UI.y, ob_blanco_fondo);
        nevera_zoom = instance_create(ob_nivel1_1_UI.x, ob_nivel1_1_UI.y, ob_nevera_zoom);  
        instance_create(1209, 333, ob_x_cierra);
        juego_pausa = true;
        
        if (!ob_julio.manos_ocupadas){
            mano_julio = instance_create(ob_nevera_zoom.bbox_right + 100, ob_nevera_zoom.bbox_top + 56, ob_mano_julio)
        
        } else {
            mano_julio = instance_create(ob_nevera_zoom.bbox_right + 100, ob_nevera_zoom.bbox_top + 56, ob_mano_julio)
            if (ob_plato.plato_vacio){
                mano_julio.sprite_index = sp_mano_plato_vacio;
            } else {
                mano_julio.sprite_index = sp_mano_plato_lleno;
            }
        }
        
    } else {
    
        if (ob_nevera_zoom.objeto_nevera_seleccionado = "leche"){
            if(ob_julio.manos_ocupadas){
                ob_mano_julio.sprite_index = sp_mano_plato_lleno;
                
                ob_plato.plato_vacio = false;
            }
        }
    
    }
}    
