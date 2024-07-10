

function obtenerDetallesLibro() {
    const urlParams = new URLSearchParams(window.location.search);
  const libroId = urlParams.get('id');
  console.log(`Libro ID: ${libroId}`);
    fetch(`/BibliotecaDigital/detalleServlet?id=${libroId}`)
        .then(respuesta => respuesta.json())
        .then(libro => {
            console.log(libro);
            const detalleHTML = `
                <img src="Tapas de Libros/${libro.portada}">
                <h2>${libro.titulo}</h2>
                
                <p><strong>Autor:</strong> ${libro.autor}</p>
                <p><strong>Publicado:</strong> ${libro.anio}</p>
                <p><strong>Editorial:</strong> ${libro.editorial}</p>
                <p><strong>Sinopsis:</strong> <span> ${libro.sinopsis}</span></p>
                <form class="formulario" action="tendencias.html">
                <button id="botonVolver" type="submit">Volver</button>
                </form>
            `;
            document.getElementById('libroDetalle').innerHTML = detalleHTML;
        });
}

obtenerDetallesLibro();

/*var link = document.createElement('link');
link.rel = 'stylesheet';
link.href = 'detalleLibro.css';
document.head.appendChild(link);
document.head.insertAdjacentHTML('beforeend', '<link rel="stylesheet" href="detalleLibro.css">');*/
