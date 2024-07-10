
document.addEventListener('DOMContentLoaded', (event) => {
  const formComentario = document.querySelector('.formComentario');
  const aparece = document.querySelector('.aparece');
  const contenedorComentarios = document.querySelector('#contenedorComentarios');
  const botonCerrar = document.querySelector('.cruz');
  formComentario.hidden = true;

  
  if (aparece) {
      aparece.addEventListener('click', mostrar);
  }

  function mostrar() {
      formComentario.style.display = "block";
  }

 
  if (botonCerrar) {
      botonCerrar.addEventListener('click', cerrar);
  }

  function cerrar() {
      formComentario.style.display = 'none';
  }

  
  document.querySelector('#formularioComentario').addEventListener('submit', captComentario);

  function captComentario(event) {
      event.preventDefault();
      const comentario = document.querySelector("#comentario").value;
      const nombreUsuario = 'Nombre del Usuario'; // No puedo obtenerlo no me sale
      const fecha = new Date().toLocaleString();

 
      const nuevoComentario = document.createElement('div');
      nuevoComentario.classList.add('comentario');

      nuevoComentario.innerHTML = `
          <div class="nombreUsuario">
              <h4>${nombreUsuario}</h4>
              <h5>${fecha}</h5>
          </div>
          <p>${comentario}</p>
          <div class="responder">
              <h5 class="aparece2">Responder</h5>
              <img src="imagenes/bibliotecaLibro.png">
          </div>
      `;

      
      contenedorComentarios.appendChild(nuevoComentario);

      // Limpiar el formulario
      document.querySelector("#comentario").value = '';
      formComentario.style.display = 'none';

      
      nuevoComentario.querySelector('.responder h5').addEventListener('click', function() {
          mostrarRespuesta(nuevoComentario);
      });
  }

  function mostrarRespuesta(comentarioElemento) {
     
      const formsRespuesta = document.querySelectorAll('.formRespuesta');
      formsRespuesta.forEach(form => form.remove());

      const respuestaForm = document.createElement('div');
      respuestaForm.classList.add('formRespuesta');
      respuestaForm.innerHTML = `
          <textarea placeholder="Escribe tu respuesta aquí..." required></textarea>
          <button type="submit">Responder</button>
          <button class="cruz">×</button>
      `;

      comentarioElemento.appendChild(respuestaForm);

      respuestaForm.querySelector('button[type="submit"]').addEventListener('click', function(event) {
          event.preventDefault();
          const respuesta = respuestaForm.querySelector('textarea').value;
          const nombreUsuario = 'Nombre del Usuario'; 
          const fecha = new Date().toLocaleString();

          const nuevaRespuesta = document.createElement('div');
          nuevaRespuesta.classList.add('respuesta');
          nuevaRespuesta.innerHTML = `
              <div class="nombreUsuario">
                  <h4>${nombreUsuario}</h4>
                  <h5>${fecha}</h5>
              </div>
              <p>${respuesta}</p>
          `;

          comentarioElemento.appendChild(nuevaRespuesta);
          comentarioElemento.removeChild(respuestaForm);
      });

      respuestaForm.querySelector('.cruz').addEventListener('click', function() {
          comentarioElemento.removeChild(respuestaForm);
      });
  }
});
