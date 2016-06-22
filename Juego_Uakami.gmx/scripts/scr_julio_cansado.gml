// cuando Julio está cansado

estado_actual = "cansado";

switch (ob_nivel1_1_UI.energia){
    case 5:
    julio_alert_state = scr_julio_despierto;
    estado_actual = "despierto";
    break;
    case 0:
    julio_alert_state = scr_julio_mareado;
    break;
}

switch (en_manos){
    case "nada":
        sprite_actual = sp_julio_cansado_default;
        break;
    case "plato":
        if (!ob_plato.plato_vacio){
            sprite_actual = sp_julio_cansado_plato_lleno_default;
        } else {
            sprite_actual = sp_julio_cansado_plato_default;
        }
        break;
    case "llaves":
        sprite_actual = sp_julio_cansado_llaves_default;
        break;
}
/*
if (!ob_plato.plato_vacio){
    sprite_actual = sp_julio_cansado_plato_lleno_default;
} else {
    sprite_actual = sp_julio_cansado_plato_default;
}*/


sprite_index = sprite_actual;
