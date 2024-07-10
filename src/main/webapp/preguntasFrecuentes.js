
const preguntas = document.querySelectorAll(".pregunta");

preguntas.forEach(pregunta => {
    pregunta.addEventListener("click", function() {
       
        const respuesta = this.nextElementSibling;

        if (respuesta.classList.contains("mostrar")) {
            respuesta.classList.remove("mostrar");
        } else {
            document.querySelectorAll(".respuesta").forEach(resp => {
                resp.classList.remove("mostrar");
            });
            respuesta.classList.add("mostrar");
        }
    });
});
