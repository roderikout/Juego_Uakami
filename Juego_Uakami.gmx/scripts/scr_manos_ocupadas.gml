// cuando Julio tiene las manos ocupadas

if (en_manos_es_silueta){
    if (intento_recoger == en_manos){
        switch (en_manos) {
            case "plato":
            ob_plato.sprite_index = sp_plato_default;
            ob_plato.soy_silueta = false;
            break;
            case "llaves":
            ob_llaves.sprite_index = sp_llaves_default;
            ob_llaves.soy_silueta = false;
            break;
        }
        manos_ocupadas = false;
        en_manos_es_silueta = false;
        sprite_index = sp_julio_default;
        ob_nivel1_1_UI.acciones +=1;
    }
}
