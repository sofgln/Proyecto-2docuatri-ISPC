const validarFormulario = () => {
    let inputName = document.forms["contacto"]["name"].value;
    // let pattern = new RegExp('^[A-Z]+$', 'i');

    if (inputName != "") {
        console.log('input name esta bien');
        console.log(inputName);
        return true;
    } else {
        console.log('input name esta mal');
        console.log(inputName);
        return false;
    }
}