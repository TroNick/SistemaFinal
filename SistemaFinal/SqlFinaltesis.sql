-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2019 a las 05:21:26
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tesis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facultad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `facultad`, `grado`, `titulo`, `nombre`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniería de Sistemas e Informática', 'Ingeniero de Sistemas e Informática', 'Ingeniero de Sistemas e Informática', 'Ingeniería de Sistemas e Informática', 'Un ingeniero de sistemas e informática es un experto en el diseño de programas, aplicaciones, sistemas operativos y sistemas de transmisión de datos con gran capacidad de aprendizaje y de adaptación, pues es un sector de continuo cambio.', 'img-11-04.jpg', '2019-07-15 01:31:11', '2019-07-21 02:38:49'),
(2, 'Ingeniería Civil', 'Ingeniero Civil', 'Ingeniero Civil', 'Ingeniería Civil', 'Para el ingeniero civil, los retos son oportunidades. Diseña los sistemas humanos en todo el planeta, genera cambios a pequeña y gran escala en contextos urbanos y globales y, con ello, mejora las condiciones de vida de las personas.', 'img-11-07.jpg', '2019-07-15 01:31:19', '2019-07-21 02:39:19'),
(3, 'Ingeniería Eléctrica', 'Ingeniero Eléctrica', 'Ingeniero Eléctrica', 'Ingeniería Eléctrica', 'La ingeniería eléctrica se ocupa del estudio y la aplicación de la electricidad, la electrónica y el electromagnetismo. Aplica conocimientos de ciencias como la física y las matemáticas para diseñar sistemas y equipos que permitan generar, transportar, distribuir y utilizar la energía eléctrica.', 'img-11-05.jpg', '2019-07-15 01:31:29', '2019-07-21 02:39:34'),
(4, 'Ingeniería Industrial', 'Ingeniero Industrial', 'Ingeniero Industrial', 'Ingeniería Industrial', 'El ingeniero industrial elabora estratégicamente sistemas eficientes al interior de una empresa y optimiza sus procesos productivos. El orden, la simplificación y la claridad en sus objetivos son sus secretos para dominar la industria.', 'img-11-03.jpg', '2019-07-15 01:31:37', '2019-07-21 02:39:49'),
(5, 'Ingeniería Minas', 'Ingeniero Minas', 'Ingeniero Minas', 'Ingeniería Minas', 'La minería es una de las principales actividades económicas del Perú, por lo que sus profesionales son muy requeridos en el mercado laboral. El país necesita de ingenieros de minas capaces de optimizar costos, mejorar los indicadores de desempeño y reforzar la seguridad en proyectos mineros, partiendo de la responsabilidad social y la preservación del medioambiente.', 'img-11-02.jpg', '2019-07-21 02:40:06', '2019-07-21 02:40:06'),
(6, 'Ingeniería Ambiental', 'Ingeniero Ambiental', 'Ingeniero Ambiental', 'Ingeniería Ambiental', 'El Perú es uno de los diez países con mayor biodiversidad del mundo, por lo que su gestión ambiental debe ser liderada por profesionales que promuevan la conservación y el manejo eficiente de los recursos naturales. Los ingenieros ambientales conocen los procesos físicos, químicos y biológicos que ayudan a prevenir problemas ambientales y permiten que haya armonía entre la humanidad y la naturaleza.', 'img-11-08.jpg', '2019-07-21 02:40:22', '2019-07-21 02:40:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expertos`
--

CREATE TABLE `expertos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profesion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expecialidad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trabajoact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(1911) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `expertos`
--

INSERT INTO `expertos` (`id`, `nombre`, `apellidos`, `profesion`, `expecialidad`, `trabajoact`, `descripcion`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Yeancol W', 'Alvarez Luis', 'Psicologo', 'Eduacion y Desarrollo', 'Ugel Satipo', 'El psicólogo educativo es el profesional de la psicología cuya misión es el estudio e intervención sobre el comportamiento humano en el contexto de la educación. Su objetivo último es el desarrollo de las capacidades de las personas, grupos e instituciones. Además, en la definición se entiende el término educativo en el sentido más amplio de formación, esa que posibilita el desarrollo personal y colectivo.\r\n\r\nEl campo de estudio y de actuación del psicólogo educativo está relacionado con los procesos cognitivos asociados o derivados del aprendizaje. Reflexiona y desarrolla su labor en todos los niveles de la psicología, ya sea el nivel social, personal, biológico, de salud, etc.', '21psicologo.png', '2019-09-12 08:08:21', '2019-09-12 08:08:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asunto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receptor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emisor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2013_07_11_072320_create_rols_table', 1),
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_07_13_142847_create_expertos_table', 1),
(15, '2019_07_13_143014_create_carreras_table', 1),
(16, '2019_07_13_143029_create_tpreguntas_table', 1),
(17, '2019_07_13_143039_create_preguntas_table', 1),
(18, '2019_07_14_073333_create_respuestas_table', 1),
(19, '2019_08_08_052901_create_mensajes_table', 1),
(20, '2019_08_10_071120_create_registros_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pregunta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calificacion` int(11) NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpregunta` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `calificacion`, `estado`, `bpregunta`, `orden`, `created_at`, `updated_at`) VALUES
(1, '	¿Te gusta resolver problemas de matemáticas?.	', 1, '1', 10, 1, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(2, '	¿Prefiere diseñar el modelo de casas, edificios, parques, etc.?.	', 1, '1', 10, 2, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(3, '	¿Te agrada observar la conducta de las personas y opinar sobre su personalidad?.	', 1, '1', 8, 3, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(4, '	¿Prefieres expresar un fenómeno concreto en una ecuación matemática?.	', 1, '1', 1, 4, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(5, '	¿Te gusta caminar por los cerros buscando piedras raras?.	', 1, '1', 6, 5, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(6, '	¿Prefieres diseñar las viviendas de una urbanización?.	', 1, '1', 3, 6, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(7, '	¿Te gusta hacer tallados en madera?.	', 1, '1', 1, 7, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(8, '	¿Prefieres calcular la cantidad de materiales para una construcción?.	', 1, '1', 1, 8, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(9, '	¿Te gusta planificar acerca de cómo formar una empresa?.	', 1, '1', 1, 9, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(10, '	¿Prefieres estudiar algún lenguaje de computación?.	', 1, '1', 2, 10, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(11, '	¿Te interesa mucho ser abogado?.	', 1, '1', 8, 11, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(12, '	¿Preferirías dedicarse a escribir un libro de Física-Matemática?.	', 1, '1', 1, 12, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(13, '	¿Te cuenta su padre y a su madre todas sus cosas?.	', 1, '1', 9, 13, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(14, '	¿Prefieres ocultar algunas cosas para usted solo (a)?.	', 1, '1', 9, 14, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(15, '	¿Le agrada estudiar la estructura atómica de los cuerpos.?	', 1, '1', 10, 15, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(16, '	¿Prefieres asumir la defensa legal de una persona acusada por algún delito?.	', 1, '1', 10, 16, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(17, '	¿Te interesa mucho estudiar cómo funciona un computador?.	', 1, '1', 2, 17, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(18, '	¿Prefieres el estudio de las leyes y principios de la conducta de las personas?.	', 1, '1', 8, 18, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(19, '	¿Te agrada analizar la forma como se organiza un pueblo?.	', 1, '1', 8, 19, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(20, '	Prefieres responderse a la pregunta ¿Por qué de los seres y de las cosas?.	', 1, '1', 2, 20, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(21, '	¿Te gusta analizar las rocas, piedras y tierra para averiguar su composición mineral?.	', 1, '1', 6, 21, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(22, '	¿Prefieres el estudio de  las organizaciones sean: campesinas, educativas, laborales, políticas , económicos o religiosas?.	', 1, '1', 5, 22, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(23, '	¿Te agrada diseñar muebles, puertas, ventanas?.	', 1, '1', 1, 23, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(24, '	¿Prefieres dedicar su tiempo  en conocer las costumbres  y tradiciones  de los pueblos?.	', 1, '1', 8, 24, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(25, '	¿Te gusta ser parte de la administración de una empresa?.	', 1, '1', 5, 25, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(26, '	¿Prefieres el estudio de las formas más efectivas para la enseñanza de jóvenes y niños?.	', 1, '1', 8, 26, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(27, '	¿Te agrada mucho estudiar el código del derecho civil?.	', 1, '1', 1, 27, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(28, '	¿Prefieres el estudio de las culturas peruanas y de otras naciones?.	', 1, '1', 8, 28, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(29, '	¿Te agrada que sus hermanos o familiares lo vigilen constantemente?.	', 1, '1', 9, 29, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(30, '	¿Prefieres que confíen  en tu buen criterio?	', 1, '1', 9, 30, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(31, '	¿Te gustaría escribir un libro acerca de la Historia del Perú?.	', 1, '1', 10, 31, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(32, '	¿Prefieres asesorar sobre asuntos legales?.	', 1, '1', 10, 32, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(33, '	¿Te gustaría proyectar las redes de agua  y desagüe de una ciudad?.	', 1, '1', 3, 33, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(34, '	¿Prefieres estudiar  acerca de las enfermedades  de la dentadura?.	', 1, '1', 8, 34, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(35, '	¿Te gustaría visitar museos arqueológicos y conocer la vivienda y otros utensilios de nuestros antepasados?.	', 1, '1', 8, 35, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(36, '	¿Prefieres hacer moldes  para una dentadura postiza?.	', 1, '1', 8, 36, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(37, '	¿Te gustaría recolectar plantas y clasificarlas por especie?.	', 1, '1', 7, 37, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(38, '	¿Prefieres leer sobre el origen y funcionamiento de las plantas y animales?.	', 1, '1', 7, 38, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(39, '	¿Te agrada construir , muebles, puertas, ventanas, etc?.	', 1, '1', 1, 39, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(40, '	¿Prefieres estudiar acerca de las enfermedades de las personas?.	', 1, '1', 8, 40, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(41, '	¿Te gusta saber mucho sobre los principios económicos  de una empresa?.	', 1, '1', 5, 41, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(42, '	¿Prefieres conocer las enfermedades que atacan al ganado, aves, perros, etc.?	', 1, '1', 8, 42, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(43, '	¿Te agrada defender pleitos judiciales de recuperación de tierras?.	', 1, '1', 8, 43, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(44, '	¿Prefieres hacer mezclas de sustancias químicas para obtener derivaciones con fines productivos?.	', 1, '1', 8, 44, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(45, '	¿Sus amigos  saben todo de usted, para ellos no tiene secretos?.	', 1, '1', 9, 45, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(46, '	¿Prefieres reservar  solo algunos secretos para usted?.	', 1, '1', 9, 46, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(47, '	¿Te gusta investigar acerca de los recursos naturales de nuestro país (su flora, su fauna y suelo)?.	', 1, '1', 10, 47, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(48, '	¿Prefieres estudiar el Derecho Internacional?.	', 1, '1', 10, 48, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(49, '	¿Te gusta trabajar haciendo instalaciones eléctricas?.	', 1, '1', 4, 49, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(50, '	¿Prefieres dedicar su tiempo en la lectura de las novedades en la decoración de ambientes?.	', 1, '1', 8, 50, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(51, '	¿Te agrada mucho visitar el hogar de los trabajadores con el fin de verificar su verdadera situación  social y económica?.	', 1, '1', 8, 51, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(52, '	¿Prefieres trabajar en el decorado de tiendas y vitrinas?.	', 1, '1', 8, 52, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(53, '	¿Te gusta estudiar los recursos geográficos?.	', 1, '1', 7, 53, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(54, '	¿Prefieres observar el comportamiento  de las personas e imitarlas?.	', 1, '1', 8, 54, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(55, '	¿Te gusta la idea de estudiar escultura en la escuela de bellas artes?.	', 1, '1', 8, 55, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(56, '	¿Te atrae ser parte de un elenco de teatro?.	', 1, '1', 8, 56, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(57, '	¿Encuentras atractivo trabajar tramitando la compra-venta de inmuebles?.	', 1, '1', 8, 57, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(58, '	¿Prefieres utilizar las líneas y colores para expresar un sentimiento?.	', 1, '1', 1, 58, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(59, '	¿Te agrada tramitar judicialmente el reconocimiento de hijos?.	', 1, '1', 8, 59, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(60, '	¿Te agrada más aprender o tocar algún instrumento musical?.	', 1, '1', 8, 60, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(61, '	Si pasa por un cine y descubre que no hay vigilancia, ¿esperarías a comprar un boleto para ingresar?.	', 1, '1', 9, 61, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(62, '	Si pasa por un cine y descubre que no hay vigilancia, ¿Prefieres aprovechar la ocasión para ingresar sin pagar boleto?.	', 1, '1', 9, 62, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(63, '	¿Te interesa más diseñar y/o confeccionar artículos de cuero?.	', 1, '1', 10, 63, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(64, '	¿Prefieres asumir la defensa legal en la demarcación de fronteras territoriales?.	', 1, '1', 10, 64, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(65, '	¿Te gustaría proyectar  la extracción  de metales de una mina?.	', 1, '1', 6, 65, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(66, '	¿Prefieres participar como jurado en un juicio?.	', 1, '1', 8, 66, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(67, '	¿Te gusta descifrar los diseños gráficos y escritos de culturas muy antiguas?.	', 1, '1', 8, 67, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(68, '	¿Prefieres persuadir a la gente para que compre un producto?.	', 1, '1', 8, 68, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(69, '	¿Te agrada el estudio de los mecanismos  de la visión y de sus enfermedades?.	', 1, '1', 8, 69, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(70, '	¿Prefieres vender cosas?.	', 1, '1', 8, 70, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(71, '	¿Te agradaría llevar la contabilidad de una empresa o negocio?.	', 1, '1', 8, 71, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(72, '	¿Prefieres hacer las planillas de pago para los trabajadores de una empresa o institución?	', 1, '1', 8, 72, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(73, '	¿Te gustaría asumir la defensa legal de una persona acusada de asesinato?.	', 1, '1', 8, 73, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(74, '	¿Prefieres ser incorporado como miembro de la corporación nacional de comercio?.	', 1, '1', 5, 74, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(75, '	¿Te agrada vestir todos los días muy formalmente (con terno y corbata , por ejemplo)?.	', 1, '1', 9, 75, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(76, '	Prefieres reservar vestir formalmente para ciertas ocasiones?	', 1, '1', 9, 76, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(77, '	¿Te gusta evaluar la producción laboral  de un grupo de trabajadores?.	', 1, '1', 10, 77, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(78, '	¿Prefieres plantear; previa investigación, la acusación de un sujeto que ha actuado en contra de la ley?.	', 1, '1', 10, 78, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(79, '	¿Te agrada estudiar la estructura atómica de los cuerpos?.	', 1, '1', 10, 79, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(80, '	¿Prefieres asumir la defensa legal de una persona acusada por algún delito?.	', 1, '1', 10, 80, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(81, '	¿Le gustaría escribir un libro  acerca de la Historia del Perú?.	', 1, '1', 10, 81, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(82, '	¿Prefieres asesorar sobre asuntos legales?	', 1, '1', 10, 82, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(83, '	¿Te gusta investigar acerca de los recursos naturales de nuestro país (su flora, su fauna y suelo).	', 1, '1', 10, 83, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(84, '	¿Prefieres estudiar el Derecho Internacional?.	', 1, '1', 10, 84, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(85, '	Te interesa diseñar   y/o confeccionar   artículos de cuero?	', 1, '1', 10, 85, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(86, '	¿Prefieres asumir  la defensa legal  en la demarcación de fronteras territoriales?.	', 1, '1', 10, 86, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(87, '	¿Te gusta evaluar la producción laboral de un grupo de trabajadores?	', 1, '1', 10, 87, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(88, '	¿Prefieres plantear previa investigación la acusación de un sujeto que ha ido en contra de la ley?.	', 1, '1', 10, 88, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(89, '	¿Te gustaría dedicarse a la legalización de documentos  (contratos, cartas, partidas, títulos, etc.)?.	', 1, '1', 8, 89, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(90, '	¿Prefieres ser incorporado en una comisión para redactar un proyecto de ley?.	', 1, '1', 8, 90, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(91, '	¿Te agradaría viajar en un microbús repleto de gente aun cuando no tienes ningún apuro?.	', 1, '1', 9, 91, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(92, '	Con respecto a la pregunta anterior. ¿Prefieres esperar  otro vehículo?.	', 1, '1', 9, 92, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(93, '	¿Te gusta resolver problemas matemáticos?.	', 1, '1', 10, 93, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(94, '	¿Prefieres diseñar el modelo de casas; edificios, parques, etc.?	', 1, '1', 10, 94, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(95, '	¿Administras bien tu dinero?	', 1, '1', 1, 95, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(96, '	¿Tienes habilidad para las ventas?	', 1, '1', 1, 96, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(97, '	¿Eres capaz de reparar algún aparato eléctrico?.	', 1, '1', 4, 97, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(98, '	¿Se le facilita el manejo de aparatos tecnológicos?	', 1, '1', 2, 98, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(99, '	 ¿Se le facilita realizar modelos a escala?	', 1, '1', 1, 99, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(100, '	¿Entiendes de medidas y puntos cardinales?	', 1, '1', 1, 100, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(101, '	¿Tienes aptitudes para dibujar planos?	', 1, '1', 1, 101, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(102, '	¿Eres paciente y dedicado con lo que hace?	', 1, '1', 1, 102, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(103, '	¿Usted está interesado en cómo funcionan los dispositivos y sistemas eléctricos?.	', 1, '1', 4, 103, '2019-07-21 01:16:39', '2019-07-21 01:16:39'),
(104, '	¿Usted quiere ayudar a impulsar la próxima fase de los avances tecnológicos?.	', 1, '1', 4, 104, '2019-07-21 01:16:39', '2019-07-21 01:16:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estudiante` int(11) NOT NULL,
  `carrera_elegida` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera_seleccionada` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `identificadortest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificadorpreg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npregunta` int(11) NOT NULL,
  `respuesta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpreguntas`
--

CREATE TABLE `tpreguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acronimo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tpreguntas`
--

INSERT INTO `tpreguntas` (`id`, `descripcion`, `acronimo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'GENERALES', 'GEN', '1', '2019-07-15 01:31:53', '2019-07-20 21:37:51'),
(2, 'Ingenieria de sistemas', 'SIS', '1', '2019-07-15 01:32:06', '2019-07-20 21:38:10'),
(3, 'Ingenieria Civil', 'CIV', '1', '2019-07-15 01:32:19', '2019-07-20 21:38:31'),
(4, 'ingenieria electronica', 'ELE', '1', '2019-07-20 21:38:51', '2019-07-20 21:38:51'),
(5, 'ingenieria industrial', 'IND', '1', '2019-07-20 21:39:06', '2019-07-20 21:39:06'),
(6, 'ingenieria de minas', 'MIN', '1', '2019-07-20 21:39:20', '2019-07-20 21:39:20'),
(7, 'ingenieria ambiental', 'AMB', '1', '2019-07-20 21:39:39', '2019-07-20 21:39:39'),
(8, 'OTROS', 'OTR', '1', '2019-07-20 21:39:57', '2019-07-20 21:39:57'),
(9, 'VERRACIDAD', 'VER', '1', '2019-07-20 21:40:10', '2019-07-20 21:40:10'),
(10, 'CONSTANCIA', 'CON', '1', '2019-07-20 21:40:27', '2019-07-20 21:40:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apellidos`, `documento`, `celular`, `rol`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Paul', 'Marquina', '70121788', '979378667', 1, 'paul@gmail.com', NULL, '$2y$10$7Ru7ordzXo45fkfLuazlxuP5uUY79RMx2LtGVwFLbxxnuLQSfoOBK', NULL, '2019-09-12 07:32:11', '2019-09-12 07:32:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expertos`
--
ALTER TABLE `expertos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rols_descripcion_unique` (`descripcion`);

--
-- Indices de la tabla `tpreguntas`
--
ALTER TABLE `tpreguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `expertos`
--
ALTER TABLE `expertos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tpreguntas`
--
ALTER TABLE `tpreguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
