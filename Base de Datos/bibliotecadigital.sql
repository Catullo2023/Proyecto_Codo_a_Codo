-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2024 a las 21:25:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bibliotecadigital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginusuarios`
--

CREATE TABLE `loginusuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `loginusuarios`
--

INSERT INTO `loginusuarios` (`id`, `email`, `pass`) VALUES
(1, 'jere@jere.com', 'admin01'),
(46, 'adrian@hotmail.com', 'adfasdas'),
(48, 'german@german.com', 'german1'),
(49, 'damian@damian.com', '1234567'),
(50, 'paula@hotmail.com', 'paula2024'),
(51, 'fabiola@fabiola.com', '7489552'),
(52, 'evaristo@hotmail.com', 'evaristo2024'),
(53, 'elba@hotmail.com', 'elba2024'),
(54, 'javiera@hotmail.com', 'javiera2024'),
(55, 'muriel@hotmail.com', 'muriel2024'),
(56, 'alfredito@alfredito.com', 'alfredo2024'),
(57, 'simon@hotmail.com', 'simon2024'),
(58, 'abril@abril.com', 'abril2024'),
(59, 'cristian@hotmail.com', 'cristian2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrousuarios`
--

CREATE TABLE `registrousuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registrousuarios`
--

INSERT INTO `registrousuarios` (`id`, `nombre`, `apellido`, `fecha`, `email`, `password`, `pais`) VALUES
(53, 'Adrian', 'Bianco', '1999-08-05', 'adrian@hotmail.com', 'adfasdas', 'VE'),
(55, 'German', 'Segundo', '1999-08-05', 'german@german.com', 'german1', 'BR'),
(56, 'Damian', 'Wenseslao', '1999-09-08', 'damian@damian.com', '1234567', 'CH'),
(57, 'Paula ', 'Maggi', '1999-05-08', 'paula@hotmail.com', 'paula2024', 'CO'),
(58, 'Fabiola', 'Carroza', '1888-09-08', 'fabiola@fabiola.com', '7489552', 'PY'),
(59, 'Evaristo', 'Cornelio', '2000-08-05', 'evaristo@hotmail.com', 'evaristo2024', 'EC'),
(60, 'Elba', 'Gallo', '2005-09-06', 'elba@hotmail.com', 'elba2024', 'AR'),
(61, 'Javiera', 'Rancuzzo', '2007-04-06', 'javiera@hotmail.com', 'javiera2024', 'BR'),
(62, 'Muriel', 'Vasconcelos', '2009-08-09', 'muriel@hotmail.com', 'muriel2024', 'CH'),
(63, 'Alfredo', 'Bianco', '2009-03-08', 'alfredito@alfredito.com', 'alfredo2024', 'PY'),
(64, 'Simon', 'Badano', '2010-05-31', 'simon@hotmail.com', 'simon2024', 'AR'),
(65, 'Abril', 'Cayuqueo', '2015-12-25', 'abril@abril.com', 'abril2024', 'PE'),
(66, 'Cristian', 'Ledesma', '2019-09-06', 'cristian@hotmail.com', 'cristian2024', 'BO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tendencias`
--

CREATE TABLE `tendencias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `publicado` int(11) NOT NULL,
  `editorial` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `portada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tendencias`
--

INSERT INTO `tendencias` (`id`, `titulo`, `autor`, `publicado`, `editorial`, `sinopsis`, `portada`) VALUES
(1, 'Actuar, jugar, pensar', 'Bernard Aucouturier', 2018, 'Grao', 'En los diferentes capítulos del libro se propone una exhaustiva reflexión sobre el juego espontáneo del niño («La angustia, tensión de todas las esperanzas»), analiza también qué ocurre con el niño que no juega («La angustia tensión de todos los peligros») hasta llegar al niño que piensa («Un camino, condiciones para pensar»). En definitiva, se aborda un desarrollo psicológico del niño en el cuerpo, el juego, la acción y el placer. Finalmente, en el último capítulo del libro, el autor concreta ampliamente la filosofía y los contenidos de formación para los profesionales que quieran formarse en la PPA.', 'Actuar,Jugar,Pensar.jpg'),
(2, 'Axel. Solo Los muertos no tienen secretos', 'Luis García-Rey', 2023, 'ESPASA', 'Miércoles, 13 de marzo de 2019. El agente de la policía judicial Axel Nash no es capaz de tomarse la vida con calma y, si no hay casos que resolver, se aburre mortalmente. No en vano dejó su Vigo natal para buscar más acción en Madrid. Una mañana recibe la llamada de su nueva compañera, Loor Galván, a la que apenas conoce, pero con la que, sorprendentemente, conecta: Marcos Goya, presentador radiofónico de un programa nocturno, acaba de aparecer en un hotelucho de citas asesinado a cuchilladas y con restos aparentes de haber sido torturado. Mientras tanto en Vigo, Omar Pombo y su amigo Javier Grande, Jarvis, que, como muchos otros jóvenes de las Rías Baixas, han acabado trapicheando para el narcotráfico, acaban de meterse en un lío descomunal: han perdido un cargamento y las consecuencias son previsibles. Y no son buenas. Un mundo con personajes demasiado apegados al poder -y a los vicios- de los grandes empresarios, trata de blancas y prostitución, narcotráfico, mucho cine y mucha música en dos tramas perfectamente enlazadas, con giros magistrales y dos protagonistas inolvidables: eso y más es Axel, el debut narrativo del periodista Luis García-Rey.', 'Axel - Garcia Rey Luis.jpg'),
(3, 'Cien años de teatro argentino', 'Jorge Dubatti', 2012, 'Editorial Biblos', 'Este libro brinda un conjunto de observaciones y herramientas para leer la fecunda historia del teatro argentino entre aproximadamente 1910 y 2010. Parte de la idea de que no hay un teatro argentino sino teatro(s) argentino(s), según el fenómeno que se focalice geográficamente. Por la naturaleza de su acontecer, el teatro no se deja desterritorializar a través de la mediación tecnológica y exige la presencia de los cuerpos de quienes lo hacen: actores, técnicos, espectadores. Dar cuenta de esta complejidad es la ambiciosa tarea que emprende Jorge Dubatti en este libro. Para ello organiza siete períodos en los que el lector puede observar la coexistencia de diversas formas de producir y concebir el teatro (comercial, profesional de arte, oficial, independiente, filodramática, de variedades, etc.), es decir, el espesor inabarcable de la historia teatral, así como los procesos que asumen ciertas tendencias, constantes y cambios teatrales que se van reformulando y que trascienden los límites de las unidades de periodización. El desarrollo de un campo teatral se mide por un conjunto concertado de factores: el teatro propio que gesta y estrena, el teatro argentino y extranjero que recibe, el comportamiento de su público, el funcionamiento de su crítica, el grado de institucionalización de la actividad (a través de asociaciones, gremios, organismos, leyes, etc.), el desarrollo de su pedagogía, la infraestructura de salas y equipamiento, y también, no menos centralmente, la investigación que produce. Estos aspectos también son abordados aquí. Jorge Dubatti presenta algunas hipótesis sobre la peculiaridad de ciertos fenómenos distintivos que, sin ser los únicos, plantean una diferencia creadora: el sainete y el grotesco criollos, algunas poéticas escénicas del tango, el teatro independiente, la cultura teatral oficialista del peronismo, la respuesta de Teatro Abierto 1981 a la dictadura, el teatro comunitario, el teatro de estados, en suma, aquellos elementos que permiten hablar de la existencia de un teatro auténticamente nacional. Sin duda, estas páginas son una herramienta imprescindible para que el lector enriquezca su actividad como espectador en el presente.', 'Cien Años De Teatro Argentino - Dubatti Jorge.jpg'),
(4, 'El diablo sabe mi nombre', 'Jacinta Escudos', 2008, 'Editorial CONSONNI', 'Estos cuentos crean un universo propio donde todo está permitido: transformaciones, realidades paralelas, desdoblamientos, antropofagia, mutaciones. Los cuentos que conforman El Diablo sabe mi nombre son muy distintos entre sí, pero guardan dos cuestiones en común.Por un lado, la transgresión, el deseo de traspasar una frontera, normalmente imposible. Son las fronteras entre el sexo masculino y el femenino, entre seres humanos y animales, entre la locura y la cordura, o entre la vida y la muerte. Por otro lado, lo onírico. De los 14 relatos, más de la mitad fueron sueños que la autora tuvo y que transformó en cuentos sin pretender hacer una lectura racional de los mismos, dejando hablar a la oscuridad, explorando aquellas zonas profundas que no comprendemos plenamente. Este carácter de fantásticos los une como libro.', 'El Diablo Sabe Mi Nombre - Escudos Jacinta.jpg'),
(5, 'El portador del fuego', 'Elena Garquin', 2022, 'Independiente', 'La Profecía que se cierne sobre el reino de Saksa debe cumplirse, pero el tiempo se acaba. Sunna, una joven bruja, abandonará su hogar dispuesta a llevar a cabo la misión. Nada la detendrá. Ni siquiera Donar el Cazador, un fiero guerrero huido de la justicia, capaz de sumirla en una atracción de consecuencias imprevisibles para todos.\nDonar, para quien lo primordial es la seguridad, no duda en apresar a Sunna, pero tendrá que elegir entre el deber de proteger a los suyos y la necesidad irrefrenable de poseerla por completo.\nInmersos en una guerra que amenazará su mundo, ambos deberán aunar fuerzas para expulsar el mal que está a punto de destruir Saksa, enfrentándose al mayor peligro de todos: desentrañar el verdadero significado de La Profecía, junto con aquello que dictan sus corazones.', 'El Portador Del Fuego - Garquin Elena.jpg'),
(6, 'El primer caso de Unamuno', 'Luis Garcia Jambrina', 2024, 'Alfaguara', 'En el crudo diciembre de 1905, Enrique Maldonado, propietario de las tierras del municipio salamantino de Boada y cacique local, aparece brutalmente apuñalado en las afueras del pueblo. Los vecinos son los principales sospechosos de haberle dado muerte y Unamuno, que escribió un artículo incendiario para denunciar las condiciones de vida de los campesinos boadenses, decide investigar el crimen con la ayuda de Manuel Rivera, abogado defensor de los detenidos, y Teresa Maragall, una misteriosa anarquista.\n \nConforme vayan apareciendo nuevos cadáveres, el perfil público de Unamuno como intelectual de renombre y polémico rector de la Universidad de Salamanca se verá dividido entre sus valedores y sus detractores, y su carácter indomable se topará con el poder y sus insidias, dificultando las pesquisas y poniendo en peligro muchas vidas, entre ellas la suya.', 'El Primer Caso De Unamuno - Garcia Jambrina Luis.jpg'),
(7, 'El sistema y la madre que lo parió. Las trampas y mentiras del discurso políticamente correcto', 'Javi Cabello', 2023, 'HARPERCOLLINS ', '¿Crees que pagas muchos impuestos? ¿Te indignas cada vez que haces la declaración de la renta? ¿Te preocupa la posibilidad de cobrar una pensión ridícula en el futuro? ¿Te has planteado abrir un negocio y te acojona la burocracia? ¿Te inquieta qué pasará cuando recibas la herencia de tus familiares? ¿Es verdad que nuestros impuestos van para sanidad y educación? ¿Te sientes impotente cada vez que pides cita en la seguridad social? ¿Crees que España es un país de funcionarios? Si al contestar estas preguntas te empiezas a poner de mala leche, este libro te interesa.\n\nEn El sistema y la madre que lo parió, Javi Cabello, más conocido como Ciudadano Alternativo, lanza una llamada a la acción colectiva, pone patas arriba la cultura de lo políticamente correcto y se rebela contra el estado del bienestar que prometen los que mandan.\n\nMediante cotidianos e indignantes casos prácticos y reflexiones cargadas de datos inapelables, ironía y sentido común, te descubrirá los entresijos del sistema, te demostrará que nada es gratis y te empujará a dudar de los principios regidos por el discurso único que pocos se atreven a poner en el centro del debate.\n\nUn texto que cuestiona y tira por tierra las verdades oficiales que sostienen al establishment.', 'el sistema y la madre que lo pario.jpg'),
(8, 'Experiencia y habla', 'Vicenzo Costa', 2018, 'Herder Editorial', 'Acerca de Heidegger se ha escrito muchísimo. Sin embargo, hay una faceta del pensador alemán que ha sido poco tratada y que no se incluye como uno de sus temas habituales: en el plano trascendental desde el que se describe la experiencia humana, Heidegger parece sugerir la necesidad de cuestionar el origen del discurso, sus formas, sus cambios a través del tiempo, y cómo se podría construir en sus formas actuales y en sus límites históricos y sistemáticos.\n\nExperiencia y habla mantiene un enfoque nada usual de Heidegger. Al evitar abordar directamente los grandes temas ontológicos para concentrarse en los temas antropológicos -que pueden parecer, a primera vista, marginales-, Vincenzo Costa da un valor apasionante y original a esta obra en la que se plantea la cuestión del nexo entre la experiencia y el habla a partir de Heidegger. El libro resulta muy adecuado tanto para todo aquel lector que quiera una introducción a esta novedosa y desconocida faceta del pensamiento de Heidegger como también para todo aquel que requiera de una presentación sencilla a la filosofía del lenguaje.', 'experiencia y habla. Vincenzo costa.jpg'),
(9, 'Hijos De Gael 02 - La Lucha De Connor', 'Garquin Elena', 2023, 'Independiente', '¿Qué hacer cuando una inesperada pasión amenaza con resucitar los fantasmas del pasado?\nDeirdre Callaghan ama a los suyos por encima de todo, pero el brutal ataque cometido contra ellos la llevará hasta Alec el Negro, un peligroso proscrito buscado por toda Escocia, implacable y astuto, que terminará convirtiéndose en la peor amenaza para todas sus emociones.\nOculto tras una falsa identidad, Connor MacDonald debe llevar a cabo una importante misión para la causa jacobita. Lo último que imagina es que esa intensa atracción sentida hacia cierta irlandesa, tan valiente como inaccesible, pondrá en peligro unos planes cuidadosamente trazados para los que ha vivido durante los últimos cuatro años.\nInmersos en un enfrentamiento entre compatriotas que herirá de muerte a toda una nación, ambos emprenderán la lucha más importante de sus vidas: preservar el vínculo indestructible que los une, al amparo de sus propios corazones.\n\nSigue la serie HIJOS DE GAEL, esta vez de la mano de Connor MacDonald, y adéntrate en las historias de los bravos highlanders que ayudaron a crear una nación.', 'Hijos De Gael 02 - La Lucha De Connor - Garquin Elena.jpg'),
(10, 'Historia General De Las Literaturas Hispanicas III - Renacimiento Y Barroco', 'Diaz Plaja Guillermo', 1968, 'Vergara', 'Tenemos el honor de poner en manos del público culto de todas las tierras hispánicas una obra en que se intentan captar cuantos valores estéticos ha producido el genio literario albergado en los confines históricos y geográficos que se conocen o se han conocido alguna vez bajo el nombre de España. Una enorme ambición preside esta obra, fruto de muchas horas de desvelo, las más claras mentes de nuestro saber y entender literario dictaminan acerca de todas las formas de expresión surgidas en el amplio solar que nos sustenta. Ningún obstáculo ha quedado sin obviar para que, al frente de cada capítulo, campee una figura de prestigio tal que ofrezca el máximo rigor científico, el dato más exacto, la bibliografía más\napurada, el más agudo sentido crítico. Libro, pues, pensado para servir los altos fines de la cultura científica de todos los países hispánicos, pero, también, para que sea un índice vivo de valores, un repertorio de inquietud y de sabiduría. La especialización de cada uno de los colaboradores de esta obra le da el tono denso y tenso que hemos logrado mantener en todos sus ángulos, la vitalidad apasionada, el apretado rigor del que tiene mucho que decir y sacrifica mucha sabiduría para extraer los conceptos señeros, las síntesis vibrantes y aleccionadoras.\nEl ámbito de la obra es, también, una orgullosa exhibición de la amplitud de nuestro criterio. Españoles somos y nada de lo que ha sido español nos es ajeno», diríamos. Mucho más cuando tan clara huella de fraternidad presentan los frutos, de apariencia dispar, de las literaturas de las Españas.', 'Historia General De Las Literaturas Hispanicas III - Renacimiento Y Barroco - Diaz Plaja Guillermo.jpg'),
(11, 'La juventud atracada', 'José ignacio Conde-Ruiz y Carlotta Conde Garcia', 2023, 'Ediciones Península', 'España va a ser uno de los países más envejecidos del mundo en 2050. La combinación de bajas tasas de natalidad y una alta longevidad ha provocado que sean los mayores, gracias a su peso electoral, quienes determinen la agenda política de nuestro país y el destino del gasto público. España ha dejado de invertir en las políticas que favorecen el crecimiento de largo plazo como la educación, la I+D, el acceso a la vivienda o pobreza infantil, y su sistema educativo languidece al lado de los países de su entorno. Y, por si esto fuera poco, los jóvenes tienen que enfrentarse a tres retos globales inéditos hasta la fecha: el envejecimiento de la población, el cambio climático y la revolución digital.\n\nEste libro, que nace del diálogo entre el economista José Ignacio Conde-Ruiz y su hija Carlotta, pone de manifiesto las dificultades y la invisibilidad a la que están sometidos estos jóvenes en España, víctimas de una crisis continua que pronto alcanzará su segunda década, así como las funestas consecuencias que tendrá para el futuro de nuestro país seguir dándole la espalda a las nuevas generaciones.', 'juventud atracada. José ignacio Conde-Ruiz, Carlotta Conde Garcia.jpg'),
(12, 'Las brujas de Vardo', 'Anya Bergman', 2024, 'Vidis', 'Noruega, 1662. Una época peligrosa para ser mujer, cuando incluso bailar puede dar lugar a acusaciones de brujería. Zigri, una viuda del pueblo, tiene una aventura con un comerciante, es descubierta y enviada a la fortaleza de Vardø para ser juzgada como bruja.\nLa hija de Zigri, Ingeborg, se adentra en territorios helados y yermos para intentar rescatar a su madre. Maren, hija de una bruja, la acompaña en su travesía. Su naturaleza salvaje y su espíritu invencible le dan a Ingeborg el coraje para arriesgarlo todo.\nEn la fortaleza también hay otra mujer cautiva. Es Anna Rhodius, quien fue amante del rey de Dinamarca, pero fue enviada a la isla de Vardø después de perder su favor. ¿Qué hará y a quién traicionará para volver a su vida privilegiada en la corte?\nEstas brujas de Vardø son más fuertes incluso que el rey. En una época en la que todo está en su contra, se niegan a ser víctimas. Se hará justicia, solo necesitan demostrar su poder.', 'Las brujas de Vardo.jpg'),
(13, 'Luz interna', 'Agustin Jose', 1989, 'Grijalbo', '«Luz interna», publicada originalmente como parte —o contraparte— de «El rey se acerca a su templo» (1977), es una novela que con el paso del tiempo se ha revelado como uno de los textos más intensos de José Agustín, un escritor que se caracteriza justamente por su intensidad narrativa. Tres personajes arquetípicos de la juventud mexicana clasemediera —Ernesto, Raquelita y Salvador— se ven envueltos en una confrontación vital que tiene como escenarios una lúgubre celda del Palacio de Lecumberri, el espacio de la gran ciudad y la intimidad de dos alcobas. Situándose al borde del desgarramiento, la autodestrucción y la oscuridad, estos seres reviven el mítico triángulo amoroso para, finalmente, encontrar la luz en el fondo de ellos mismos.', 'LuzInterna.jpg'),
(14, 'Perfiles Etico Politicos De La Educacion', 'Cullen Carlos', 2004, 'Paidós', 'El filósofo Carlos Cullen afirma que en la discusión sobre la nueva institucionalidad de la escuela “debe explicitarse la dimensión ético política de la educación, justamente porque se están formando ciudadanos, pero creo que es mucho más que eso, allí está aconteciendo ciudadanía”. Cullen nos recuerda al respecto que la educación debe ser una acción social justa que equitativa y solidariamente busque socializar mediante el conocimiento legitimado públicamente y que en todo momento la educación se debe basar en los criterios de coherencia,racionalidad y razonabilidad.\nEn momentos en que la educación corre el riesgo de convertirse en un fenómeno de mercado regido por el criterio de la competitividad o en una mera rutina, urge indagar en qué sentido el concepto mismo de educación tiene una dimensión éticopolítica y de qué manera esa dimensión incide en las prácticas educativas y en el quehacer de los docentes. A esa tarea se aboca este libro, examinando desde una perspectiva filosófica - que no excluye el diálogo con otras disciplinas, como la historia, las ciencias del lenguaje, el psicoanálisis - aquellos aspectos que atañen al fundamento de la educación: la cuestión de la justicia en las políticas públicas, la intrínseca relación de la educación con los derechos humanos, la importancia de las categorías de ciudadanía y de sujeto moral como responsabilidades educativas. En la medida en que la educación es una práctica histórica, social, formadora de sujetos, debe ser analizada a fondo en su doble aspecto de institución y mediación: es decir, tanto en lo que respecta al rol de la escuela y a la crisis que atraviesa en el marco incierto de la globalización, como en lo que concierne a su productividad como experiencia intersubjetiva fundante. Así, pensar la escuela desde un abordaje éticopolítico supone construir instituciones públicas sólidas, no represoras, sustentadas por genuinas prácticas sociales y subjetivantes, y supone además concebir esa construcción no sólo como esperanza de un futuro más promisorio sino también como una responsabilidad impostergable.', 'Perfiles Etico Politicos De La Educacion - Cullen Carlos.jpg'),
(15, 'Praxis y educación', 'Aleman Manuel', 2024, 'La Caja', 'Las ideas de Freire han traspasado las fronteras de su país originario. Varios de sus libros han sido traducidos a diversos idiomas: castellano, francés, inglés, italiano.\nLos estudiosos del pensador brasileiro vienen analizando su obra y han publicado múltiples escritos, pero en orden a un tema casi único: el método educativo de Pablo Freire. La larga lista de bibliografía sobre Freire que presentamos como anexo en el presente estudio es testimonio fehaciente del eco despertado por el pensamiento freireano y del interés suscitado por su teoría en el campo concreto de las corrientes pedagógicas. Pero toda teoría educativa comporta una filosofía del hombre e implica una comprensión de la sociedad. Y, sin duda, un concepto del hombre y de la sociedad subyace y\nanima la teoría educativa de Freire. Y es este precisamente —la filosofía subyacente en el pensamiento de Freire— un tema que ni el propio Freire desarrolló con amplitud ni sus exegetas han analizado con detenimiento. Este dato fue un reclamo que se fue convirtiendo en un reto para mi afán de profundización sobre et pensamiento freireano. Introducción.', 'praxisyeduc.jpg'),
(16, 'Rumbo Al Ecocidio', 'Esquinas Jose', 2023, 'Espasa', '¿Qué está fallando en un sistema agroalimentario que produce el 60 % más de lo necesario para alimentar a la humanidad y donde sin embargo pasan hambre más de 800 millones de personas, muchos de los cuales mueren, y además es responsable de casi el 30 % de los gases de efecto invernadero y de la pérdida de más del 90 % de la biodiversidad agrícola?\n\n¿Qué está fallando en un sistema económico que aumenta las desigualdades, que confunde desarrollo con crecimiento, que esquilma y privatiza los recursos naturales limitados del planeta y que rompe los equilibrios ecológicos y ciclos naturales, provocando el cambio climático?\n\n¿Qué está fallando en una sociedad que confunde bienestar con consumismo, aún a costa de degradar la naturaleza y condenar a las generaciones futuras? ¿Es sostenible esta sociedad de consumo? ¿Es más feliz?\n\nEste libro, prologado por Federico Mayor Zaragoza, intenta dar respuesta a estas preguntas con un lenguaje claro, riguroso y alejado de tecnicismos, y propone soluciones que permitan cambiar el rumbo del Ecocidio a la Esperanza.', 'Rumbo Al Ecocidio - Esquinas Jose.jpg'),
(17, 'Tecnicas Freinet De La Escuela Moderna', 'Freinet Celestin', 1970, '‎Siglo XXI', 'La preocupación por renovar los métodos y técnicas de la enseñanza primaria y secundaria quiere hacer de los individuos seres libres, que puedan desarrollar con mayor facilidad su personalidad e imaginación así como su capacidad creadora; quiere humanizar la enseñanza haciendo del trabajo escolar un placer para maestros y alumnos; quiere que las experiencias vitales sean el material escolar: la escuela debe ser parte de la vida. He aquí las metas que han orientado los esfuerzos del maestro francés Frienet durante toda su vida. Este libro expone la concepción de estas nuevas técnicas, los primeros ensayos, las diversas dificultades que han retardado su aplicación, sus éxitos y sobre todo su valor y el esfuerzo constante de profesores que se empeñan en in campo tan importante para la sociedad como es el de la educación en todos sus niveles.', 'Tecnicas Freinet De La Escuela Moderna - Freinet Celestin.jpg'),
(18, 'Tiempo de la vida y tiempo del mundo', 'Blumenberg Hans', 2007, '‎Pre-textos', 'El presente libro desarrolla un análisis en torno a los factores que agudizan el conflicto derivado de la apertura de las tijeras del tiempo. La experiencia del mundo en el decurso de una vida se va empequeñeciendo a pesar de los mecanismos disponibles para ganar tiempo, para subsanar déficits vivenciales que afectan a todo individuo aunque no sea más que en forma de crisis generadas por la conciencia de que una sola vida, la única que se tiene, no es suficiente para lograr una vivencia comprehensiva de lo que llamamos mundo.', 'Tiempo de la vida y tiempo del mundo.jpg'),
(19, 'Un psicoanalísta en el cine', 'Gustavo Chiozza', 2021, '‎Libros del Zorzal', 'Un psicoanalista en el cine no es un libro sobre psicoanálisis aunque tampoco sea, en el sentido más estricto del término, un libro sobre cine. En él se conjuga la experiencia clínica como método de exploración y la cinefilia bien entendida para, a partir de ambas, abrir un nuevo horizonte de sentidos. El autor se desliza lenta, subrepticiamente en la oscuridad de la sala de proyección, en la intimidad de nuestro living, para susurrarnos historias veladas, ocultas, muchas veces contrabandeadas en las múltiples capas de una comedia romántica o un thriller de suspenso. Historias que ya estaban allí, ocultas en la mente del director, agazapadas en la densidad del celuloide, y que este libro tiene el mérito –y la generosidad– de compartir con nosotros. Gracias a una prosa fluida y transparente, los ensayos aquí reunidos logran ese equilibrio extraño e infrecuente entre riqueza y claridad, potenciándose unos a otros, intercambiando ideas y objetos para mostrar un nuevo camino y descubrir un placer secreto e impensado. Gustavo Chiozza es nuestro guía hacia esa nueva dimensión donde el cine y la vida son la misma cosa. Su especialidad es descubrir mundos intermedios entre aquél que se esperaba encontrar y el que finalmente se encontró. Y vale la pena acompañarlo.', 'Un psicoanalísta en el cine.jpg'),
(20, 'Wonka', 'Dahl Roald', 2024, '‎Alfaguara ', 'Y es que, desde niño, Willy Wonka había imaginado poder crear su propio chocolate y compartirlo con el mundo entero.\n\nCuando era joven, llegó a las famosísimas Galerías Gourmet, dispuesto a cambiarlo todo con cada uno de los bocados de sus deliciosos dulces. Pero un trío de chocolateros envidiosos lo engañó y lo condenó a trabajar de por vida en una lavandería.\n\nCon algo de suerte y muchísima magia, además de la ayuda de sus amigos, conseguirá cumplir su sueño.\n\nPorque, cuando eres Willy Wonka, todo es posible.\n\nEsta deliciosa historia sobre sueños, amistad y chocolate está basada en la película Wonka, dirigida por Paul King, quién creó la historia y escribió el guion junto a Simon Farnaby. La exitosa autora Sibéal Pounder ha adaptado la historia en esta novela.', 'Wonka - Dahl Roald.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loginusuarios`
--
ALTER TABLE `loginusuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `tendencias`
--
ALTER TABLE `tendencias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `loginusuarios`
--
ALTER TABLE `loginusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `registrousuarios`
--
ALTER TABLE `registrousuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `tendencias`
--
ALTER TABLE `tendencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
