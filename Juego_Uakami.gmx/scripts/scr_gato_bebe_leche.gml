// cuando el gato está bebiendo leche

speed = 0;

acciones_durante_gato_leche = ob_nivel1_1_UI.acciones;

acciones_cuenta_gato = acciones_durante_gato_leche - acciones_antes_beber_leche;

if (acciones_cuenta_gato >= 7){

    gato_bebe_leche = false;
    ob_plato.plato_vacio = true;
    ob_nivel1_1_UI.plato_lleno_en_suelo = false;
    gato_state = scr_gato_caminando;

}