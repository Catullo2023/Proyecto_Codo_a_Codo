function llamarBD(){
    fetch('/BibliotecaDigital/LibrosServlet')
    .then(respuesta=> respuesta.json())
    .then(libros=>{mostrar(libros);
    // Imprimir los IDs en la consola
    libros.forEach(libro => {
        console.log(`ID del libro: ${libro.id}`);
    });
});
}

function Libros(libro){
    
    return  `
    <div class="tendenciasLibros">
    <a href="detalleLibro.html?id=${libro.id}">
        <img src="Tapas de Libros/${libro.portada}">
        </a>
        <div class="tituloLibro">
            <h4>${libro.titulo}</h4>
        </div>
    </div>
`;

}
function mostrar(libros){
    const filas=libros.map(libro=>Libros(libro));
    document.querySelector('.tendencias').innerHTML= filas.join('');;
}
llamarBD();

/*--------------------------------------aside--------------------------------------------------*/ 
const clave="AIzaSyB5pbXuWuRylbF_P9JafznUWcPZQT_y6jM";
const url="https://www.googleapis.com/books/v1/volumes";

function Baudelaire(){
    fetch(`${url}?q=intitle:Baudelaire&maxResults=4&orderBy=relevance&langRestrict=es&key=${clave}`)
    .then(response => response.json())
    .then(data => {
        console.log(data);
        dibujarB(data);
    })
}
function dibujarB(json){
    const filas = json.items.map(obj => LibroB(obj));
    document.querySelector('.LibrosBaudelaire').innerHTML = filas.join('');
}
function LibroB(obj) {
    const info = obj.volumeInfo;
    return `
    <li class="Baudelaire">
    <div class="tituloImagen">
    <img src="${info.imageLinks ? info.imageLinks.thumbnail : 'https://via.placeholder.com/150'}" alt="${info.title}" loading="lazy">
    <h4 class="LibroBaudelaire">${info.title}</h4>
    </div>
    <p>${info.description.substring(0, 250)}<a href="${info.infoLink}">...ver más</a></p>
    </li>
    `;
}
Baudelaire();