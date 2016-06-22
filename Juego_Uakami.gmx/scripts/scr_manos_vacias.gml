// cuando Julio tiene las manos vacias
// entonces pasan a estar ocupadas con lo que este recogiendo

if (!en_manos_es_silueta){
    en_manos = intento_recoger;
    switch (en_manos) {
        case "plato":
        sprite_index = sp_julio_plato_default;
        ob_plato.sprite_index = sp_silueta_plato_default;
        ob_plato.soy_silueta = true;
        break;
        case "llaves":
        sprite_index = sp_julio_llaves_default;
        ob_llaves.sprite_index = sp_silueta_llaves_default;
        ob_llaves.soy_silueta = true;
        break;
    }
    manos_ocupadas = true;
    en_manos_es_silueta = true;
    ob_nivel1_1_UI.acciones +=1;
}
