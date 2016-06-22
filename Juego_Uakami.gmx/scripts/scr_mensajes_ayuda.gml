///  lo que sucede cuando haces hover por los objetos usables

sobreObjeto = instance_position(mouse_x, mouse_y, ob_con_ayuda);
if (sobreObjeto){
    mensaje_ayuda_actual = sobreObjeto.mensajeAyuda;
    mensaje_ayuda_activo = true;
}else{
    mensaje_ayuda_activo = false;
}
