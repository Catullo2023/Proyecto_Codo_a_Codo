
function mostrarMensaje(id, mensaje) {
    var mensajeDiv = document.getElementById(id);
    mensajeDiv.textContent = mensaje;
    mensajeDiv.style.display = 'block';
    mensajeDiv.classList.remove('hidden');

    setTimeout(function() {
        mensajeDiv.classList.add('fade-out');

        setTimeout(function() {
            mensajeDiv.style.display = 'none';
            mensajeDiv.classList.remove('fade-out');
        }, 500); // Duración de la transición CSS
    }, 8000); // Ocultar después de 8 segundos
}

// ----------------------Ocultar mensaje 
function ocultarMensaje(id) {
    var mensajeDiv = document.getElementById(id);
    mensajeDiv.classList.add('fade-out');

    setTimeout(function() {
        mensajeDiv.style.display = 'none';
        mensajeDiv.classList.remove('fade-out');
    }, 500); // Duración de la transición CSS
}

// -------------------------------Manejar parámetros de URL para mensajes de registro
window.onload = function () {
    var urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('exito') === 'true') {
        mostrarMensaje('mensajeExito', 'Registro exitoso.');
    } else if (urlParams.get('error') === 'true') {
        mostrarMensaje('mensajeError', 'Error al registrarse.');
    } else if (urlParams.get('error') === 'email_duplicado') {
        mostrarMensaje('mensajeEmail', 'El email ya se encuentra registrado');
    }
};

// ---------------------------- mensajes de login
document.addEventListener('DOMContentLoaded', function() {
    const params = new URLSearchParams(window.location.search);
    if (params.has('errorL')) {
        const errorType = params.get('errorL');
        if (errorType === 'registro') {
            mostrarMensaje('errorMensaje', 'Error al loggearse. Email o clave erroneas.');
        }
    }
});