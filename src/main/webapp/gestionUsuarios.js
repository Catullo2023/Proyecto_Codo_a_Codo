document.addEventListener('DOMContentLoaded', cargarUsuarios);

let modificarModal;

document.addEventListener('DOMContentLoaded', function() {
    modificarModal = new bootstrap.Modal(document.getElementById('modificarModal'));
    cargarUsuarios();
});
// -- Cargar usuarios -- //
function cargarUsuarios() {

    fetch('/BibliotecaDigital/GestionUsuariosServlet')
        .then(response => response.json())
        .then(usuarios => {
            //console.log(usuarios);
            const tbody = document.querySelector('#usuariosTable tbody');
            tbody.innerHTML = '';
            usuarios.forEach(usuario => {
               // console.log(`Fecha original: ${usuario.fecha}`);
               const fechaFormateada = new Date(usuario.fecha).toISOString().split('T')[0];
                //console.log(`Fecha formateada: ${fechaFormateada}`); 
                //const fecha = new Date(usuario.fecha);
              
                tbody.innerHTML += `
                    <tr>
                        <td>${usuario.id}</td>
                        <td>${usuario.nombre}</td>
                        <td>${usuario.apellido}</td>
                         <td>${fechaFormateada}</td>
                        <td>${usuario.email}</td>
                        <td>${usuario.pass}</td>
                        <td>${usuario.pais}</td>
                        <td>
                            <button class="btn btn-primary btn-sm" onclick="mostrarModificarModal(${usuario.id})">Modificar</button>
                            <button class="btn btn-danger btn-sm" onclick="eliminarUsuario(${usuario.id})">Eliminar</button>
                        </td>
                    </tr>
                `;
            });
        })
       
}

// -- Mostrar y modificar el modal -- //

function mostrarModificarModal(id) {
    fetch(`/BibliotecaDigital/GestionUsuariosServlet?id=${id}`)
        .then(response => response.json())
        .then(usuario => {
            //console.log(usuario);
            document.getElementById('userId').value = usuario.id;
            document.getElementById('nombre').value = usuario.nombre;
            document.getElementById('apellido').value = usuario.apellido;
            document.getElementById('fecha').value = new Date(usuario.fecha).toISOString().split('T')[0];
            document.getElementById('email').value = usuario.email;
            document.getElementById('pass').value = usuario.pass;
            
            //document.getElementById('fechaNacimiento').value = usuario.fechaNacimiento;
            document.getElementById('pais').value = usuario.pais;
            modificarModal.show();
        })
        .catch(error => console.error('Error:', error));
}

function guardarModificacion() {
    const usuario = {
        id: document.getElementById('userId').value,
        nombre: document.getElementById('nombre').value,
        apellido: document.getElementById('apellido').value,
        fecha: document.getElementById('fecha').value,
        email: document.getElementById('email').value,
        pass: document.getElementById('pass').value,
       
        pais: document.getElementById('pais').value
    };

    fetch('/BibliotecaDigital/GestionUsuariosServlet', {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(usuario)
        //método en JavaScript que convierte un objeto JavaScript en una cadena JSON.
    })
    .then(response => response.json())
    .then(data => {
        console.log(data.exito)
        if (data.exito) {
            modificarModal.hide();
            cargarUsuarios();
        } else {
            alert('Error al modificar el usuario');
        }
    })
    .catch(error => console.error('Error:', error));
}

// -----------------------------------------------------
// -- Eliminar usuario -- //

function eliminarUsuario(id) {
    //función que muestra un cuadro de diálogo con un mensaje y botones "Aceptar" y "Cancelar"
    //Devuelve true si el usuario hace clic en "Aceptar" y false si hace clic en "Cancelar".
    if (confirm('¿Está seguro de que desea eliminar este usuario?')) {
        fetch(`/BibliotecaDigital/GestionUsuariosServlet?id=${id}`, { method: 'DELETE' })
            .then(response => response.json())
            .then(data => {
                console.log(data.exito)
                if (data.exito) {
                    const filaAEliminar = document.querySelector(`#usuariosTable tbody tr[data-id="${id}"]`);
                    if (filaAEliminar) {
                        filaAEliminar.remove();
                    }
                    cargarUsuarios();
                } else {
                    alert('Error al eliminar el usuario');
                }
            })
            .catch(error => console.error('Error:', error));
    }
}                    
