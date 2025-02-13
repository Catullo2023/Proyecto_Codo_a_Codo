

document.addEventListener("DOMContentLoaded", function() {
    fetch('/BibliotecaDigital/loginServlet', {
        method: 'GET',
        credentials: 'include'
    })
    .then(response => response.json())
    .then(data => {
        console.log(data); 
        const navList = document.querySelector('.listaNav');
        const loginItem = document.querySelector('.linkNav.Sesión');
       const navFootList = document.querySelector('.listaNavFoot');
        if (data.loggedIn) {
            console.log("LoggedIn"); 
            loginItem.textContent = `Cerrar Sesión (${data.usuario})`;
            loginItem.href = "javascript:void(0);"; // Evitar la recarga de la página
            loginItem.addEventListener("click", function() {
                fetch('/BibliotecaDigital/CerrarSesionServlet', {
                    method: 'GET',
                    credentials: 'include'
                })
                .then(() => {
                    window.location.href = "IniciarSesion.html"; 
                });
            });
            if (data.usuario === "jere@jere.com") {
                const adminItem = document.createElement('li');
                adminItem.classList.add('listItemFoot');
                adminItem.innerHTML = '<a href="gestionUsuarios.html" class="linkNavFoot">Administrador</a>';
                navFootList.appendChild(adminItem); 
            }

            const comentariosItem = document.createElement('li');
            comentariosItem.classList.add('listItem');
            comentariosItem.innerHTML = '<a href="tendencias.html" class="linkNav">Tendencias</a>';
           // navList.appendChild(comentariosItem);
           navList.insertBefore(comentariosItem, loginItem.parentNode);
        } else {
            console.log("Not LoggedIn"); 
            loginItem.textContent = "Iniciar Sesión";
            loginItem.href = "IniciarSesion.html";
        }
    });
});

