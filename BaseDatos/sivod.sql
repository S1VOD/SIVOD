-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-01-2026 a las 15:45:50
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sivod`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id_adm` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_pa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_ma` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `curp` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `n_empleado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `cargo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `foto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`id_adm`, `nombre`, `ape_pa`, `ape_ma`, `curp`, `fecha_nac`, `correo`, `contrasena`, `n_empleado`, `cargo`, `fecha_contratacion`, `telefono`, `direccion`, `foto`, `activo`, `fecha_registro`) VALUES
(1, 'monserrat', 'hernandez', '', 'AAAAAAAAAAAAAAAAAA', '2007-08-31', 'monse3108hdez@hotmail.com', '$2b$12$6kWxv9.WWNZVlX9OpxaiKORlF0d7c3C03N1i2G4r2A7kLkxbd4ZOK', NULL, '', NULL, '', NULL, '4a1a226dba494c88aeb9d8a19e01a5c4.jpg', 1, '2026-01-05 18:55:45'),
(3, 'luz', 'villa', NULL, 'AAAAAAAAAAAAAAAAA1', '1990-10-10', 'trabajador@correo.com', '$2b$12$flGZCjdW0FY70DqAxz7vluujcMtmDoa.i6EgS.A7ubEnwCFz8dr7y', NULL, 'Conserje', NULL, NULL, NULL, 'Fotoperfil.jpg', 1, '2026-01-05 19:41:46'),
(4, 'Anna', 'Fernandez', NULL, 'ANNA00000000000000', '2026-01-20', 'anna@correo.com', '$2b$12$1vRn1pjfE6JZGN.bSzNCDuvXVtOhnhr0L5t2yha6zyu1D5dLXZCIu', NULL, 'Secretaria', NULL, NULL, NULL, 'Fotoperfil.jpg', 1, '2026-01-15 03:02:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_escuelas`
--

CREATE TABLE `administrativo_escuelas` (
  `id_adm_esc` int NOT NULL,
  `id_adm` int NOT NULL,
  `id_esc` int NOT NULL,
  `cargo_en_escuela` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `area` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `administrativo_escuelas`
--

INSERT INTO `administrativo_escuelas` (`id_adm_esc`, `id_adm`, `id_esc`, `cargo_en_escuela`, `area`, `fecha_inicio`, `fecha_fin`, `activo`, `fecha_registro`) VALUES
(1, 1, 4, 'secretaria', 'Administración', '2026-01-05', NULL, 1, '2026-01-05 18:55:45'),
(2, 3, 6, 'Conserje', 'Administración', '2026-01-05', NULL, 1, '2026-01-05 19:41:46'),
(3, 4, 1, 'Secretaria', 'Administración', '2026-01-14', NULL, 1, '2026-01-15 03:02:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alu` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_pa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_ma` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `curp` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_tutor` int DEFAULT NULL,
  `grado` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `grupo` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `escuela_id` int DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alu`, `nombre`, `ape_pa`, `ape_ma`, `curp`, `fecha_nac`, `correo`, `contrasena`, `id_tutor`, `grado`, `grupo`, `escuela_id`, `foto`, `activo`, `fecha_registro`) VALUES
(4, 'Maria', 'Mendoza', NULL, 'AAAAAAAAAAAAAAAAAA', '2009-12-30', 'estudiante@correo.com', '$2b$12$DeGtkvczhyu59pf91DthAuXz8s8/Bqs98WY4qYzxg81LJz0EfJO9i', NULL, '6to', 'a', NULL, 'Fotoperfil.jpg', 1, '2026-01-05 21:51:09'),
(6, 'lisa', 'simpson', NULL, 'AAAAAAAAAAAAAAAAA1', '2222-02-22', 'lisa@correo.com', '$2b$12$paSyPpmlG4kdk.08e6YVKucOVg8BmCsQyWvCGE9yt3zq.SvMBmLk2', NULL, '1ro', 'a', NULL, 'Fotoperfil.jpg', 1, '2026-01-05 22:35:34'),
(8, 'Luis', 'Hernandez', 'Martinez', 'HEML031022HDFRRSA4', '2003-10-22', 'luis2014hdez@hotmail.com', '$2b$12$W7n6Ar/8kxprbMfVODmwH.f92/L3BcDHZYNH4dzVtXtYAUo395I42', NULL, '1ro', '2', NULL, 'Fotoperfil.jpg', 1, '2026-01-06 01:46:03'),
(9, 'Maria', 'Lima', NULL, 'LISL010211MDFMLRA8', '2001-02-11', 'lourdeslima062@gmail.com', '$2b$12$UEcd37nccvL3SQf.t8C.AeM9TEqbgzfzgLVZblX4SLICFKaLz5wtG', NULL, '1ro', 'A', NULL, 'Fotoperfil.jpg', 1, '2026-01-09 20:26:13'),
(10, 'Luz', 'Hernandez', NULL, 'AAAAAAAAAAAAAAAAA2', '2026-01-14', 'correo@correo.com', '$2b$12$wP.i9UPGioCTAh2gqr39Se2MgGbc0STtw2cIrwrvSCdnJQP.gcE6C', NULL, '1ro', 'a', NULL, 'Fotoperfil.jpg', 0, '2026-01-12 19:09:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajas`
--

CREATE TABLE `bajas` (
  `id_baja` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','tutor','alumno','administrativo') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `motivo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `evidencias_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estado` enum('solicitada','en_revision','aprobada','rechazada') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'solicitada',
  `observaciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `id_admin_revisor` int DEFAULT NULL,
  `fecha_solicitud` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_resolucion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buzon_mejora`
--

CREATE TABLE `buzon_mejora` (
  `id_buz` int NOT NULL,
  `id_tutor` int NOT NULL,
  `id_escuela` int NOT NULL,
  `titulo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `evidencias_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estado` enum('pendiente','en_revision','atendido','rechazado') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'pendiente',
  `respuesta_admin` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_respuesta` datetime DEFAULT NULL,
  `id_admin_responde` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_publicaciones`
--

CREATE TABLE `comentarios_publicaciones` (
  `id_comentario` int NOT NULL,
  `id_publicacion` int NOT NULL,
  `autor_tipo` enum('educativo','administrativo','tutor','alumno') COLLATE utf8mb3_spanish_ci NOT NULL,
  `autor_id` int NOT NULL,
  `contenido` text COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_comentario` datetime DEFAULT CURRENT_TIMESTAMP,
  `activo` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios_publicaciones`
--

INSERT INTO `comentarios_publicaciones` (`id_comentario`, `id_publicacion`, `autor_tipo`, `autor_id`, `contenido`, `fecha_comentario`, `activo`) VALUES
(3, 10, 'educativo', 8, 'Buenas tardes maestra', '2026-01-15 16:59:21', 1),
(4, 11, 'alumno', 9, 'Hola Profe', '2026-01-15 17:45:19', 1),
(7, 12, 'administrativo', 3, 'Hola lima', '2026-01-18 16:58:12', 0),
(8, 12, 'administrativo', 3, 'Holis', '2026-01-18 17:15:33', 1),
(9, 13, 'tutor', 4, 'Hola', '2026-01-18 17:58:47', 0),
(10, 13, 'educativo', 6, 'hola', '2026-01-19 14:27:47', 0),
(11, 13, 'educativo', 6, 'Hola ', '2026-01-19 18:37:15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `id_con` int NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `nivel_concurso` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `requisitos` json DEFAULT NULL,
  `imagen_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estado` enum('borrador','publicada','en_proceso','finalizada') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'borrador',
  `id_creador` int DEFAULT NULL,
  `id_escuela` int DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educativos`
--

CREATE TABLE `educativos` (
  `id_edu` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_pa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_ma` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `curp` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_rol` int NOT NULL,
  `n_empleado` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `especialidad` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `n_cedula` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `foto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `educativos`
--

INSERT INTO `educativos` (`id_edu`, `nombre`, `ape_pa`, `ape_ma`, `curp`, `fecha_nac`, `correo`, `contrasena`, `id_rol`, `n_empleado`, `fecha_ingreso`, `especialidad`, `n_cedula`, `telefono`, `direccion`, `foto`, `activo`, `fecha_registro`) VALUES
(1, 'Juan Carlos', 'Mendoza', 'Ríos', 'MENJ750515HDFNRN01', '1975-05-15', 'director.primaria@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR001', NULL, 'Dirección Escolar', 'CEDI001', NULL, NULL, 'FotoPerfil.jpg', 1, '2026-01-05 08:00:03'),
(2, 'Ana Patricia', 'Guzmán', 'Fernández', 'GUFA780822MDFZNN02', '1978-08-22', 'directora.secundaria@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR002', NULL, 'Administración Educativa', 'CEDI002', NULL, NULL, 'FotoPerfil.jpg', 1, '2026-01-05 08:00:03'),
(3, 'Roberto', 'Silva', 'Castro', 'SICR820630HDFLRT03', '1982-06-30', 'director.prepa@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR003', NULL, 'Pedagogía', 'CEDI003', NULL, NULL, 'FotoPerfil.jpg', 1, '2026-01-05 08:00:03'),
(4, 'María Elena', 'Ortega', 'Vargas', 'ORVM851210MDFRRN04', '1985-12-10', 'directora.kinder@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR004', NULL, 'Educación Preescolar', 'CEDI004', NULL, NULL, 'FotoPerfil.jpg', 1, '2026-01-05 08:00:03'),
(5, 'Carlos Alberto', 'Ramírez', 'López', 'RALC790901HDFMPS05', '1979-09-01', 'director.tec@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR005', NULL, 'Tecnología Educativa', 'CEDI005', NULL, NULL, 'FotoPerfil.jpg', 1, '2026-01-05 08:00:03'),
(6, 'Laura Gabriela', 'Santos', 'Moreno', 'SAMG830415MDFNRT06', '1983-04-15', 'directora.sec45@edu.mx', '$2b$12$EixZaYVK1fsbw1ZfbX3OXePaWxn96p36WQoeG6Lruj3vjPGga31lW', 2, 'DIR006', NULL, 'Ciencias Sociales', 'CEDI006', '1234567890', NULL, '0050272f2fc1445cac7b7de9fa799b1a.jpg', 1, '2026-01-05 08:02:55'),
(7, 'Jose', 'Martinez', 'MARTINEZ', 'MMMMMMMMMMMMMMMMMM', '2000-10-22', 'jose.l.hernadez@gmail.com', '$2b$12$FhaF3dwrJrNx5Lf9ME0zMO7gBCRW7UjuiW6jVuYay7IOQ/7aS00KK', 3, NULL, NULL, NULL, '', '1234567891', NULL, 'Fotoperfil.jpg', 1, '2026-01-07 22:20:00'),
(8, 'Jorge', 'Ramirez', NULL, 'JORGAAAAAAAAAAAAAA', '2026-01-08', 'jorge@correo.com', '$2b$12$qGpjVA75tyH0mTLUJ0oyfOBP1riasRCmBlQEeFwh6fh8rGjBjmBlG', 3, NULL, NULL, NULL, '', NULL, NULL, 'Fotoperfil.jpg', 1, '2026-01-12 18:49:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educativo_escuelas`
--

CREATE TABLE `educativo_escuelas` (
  `id_edu_esc` int NOT NULL,
  `id_edu` int NOT NULL,
  `id_esc` int NOT NULL,
  `cargo_en_escuela` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `asignaturas` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `educativo_escuelas`
--

INSERT INTO `educativo_escuelas` (`id_edu_esc`, `id_edu`, `id_esc`, `cargo_en_escuela`, `asignaturas`, `fecha_inicio`, `fecha_fin`, `activo`, `fecha_registro`) VALUES
(1, 1, 1, 'Director', NULL, NULL, NULL, 1, '2026-01-05 08:00:03'),
(2, 2, 2, 'Directora', NULL, NULL, NULL, 1, '2026-01-05 08:00:03'),
(3, 3, 3, 'Director', NULL, NULL, NULL, 1, '2026-01-05 08:00:03'),
(4, 4, 4, 'Directora', NULL, NULL, NULL, 1, '2026-01-05 08:00:03'),
(5, 5, 5, 'Director', NULL, NULL, NULL, 1, '2026-01-05 08:00:03'),
(6, 6, 6, 'Directora', NULL, NULL, NULL, 1, '2026-01-05 08:02:55'),
(7, 7, 5, 'Docente', 'No especificadas', '2026-01-07', NULL, 1, '2026-01-07 22:20:00'),
(8, 8, 6, 'Docente', 'No especificadas', '2026-01-12', NULL, 1, '2026-01-12 18:49:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas_opinion`
--

CREATE TABLE `encuestas_opinion` (
  `id_encuesta` int NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pregunta` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_creador` int NOT NULL,
  `tipo_creador` enum('educativo','tutor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `escuela_id` int NOT NULL,
  `activa` tinyint(1) DEFAULT '1',
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `fecha_cierre` datetime DEFAULT NULL,
  `total_respuestas` int DEFAULT '0',
  `tipo_encuesta` enum('simple','multiple') COLLATE utf8mb4_unicode_ci DEFAULT 'simple',
  `usuarios_permitidos` json DEFAULT NULL COMMENT 'Tipos de usuarios que pueden responder (ej: ["educativo", "tutor"])',
  `permisos_personalizados` json DEFAULT NULL COMMENT 'Permisos específicos por rol/ID',
  `permite_anonimo` tinyint DEFAULT '0',
  `es_obligatoria` tinyint DEFAULT '0',
  `max_respuestas` int DEFAULT NULL COMMENT 'Límite máximo de respuestas totales',
  `mostrar_resultados` tinyint DEFAULT '1' COMMENT 'Mostrar resultados a los usuarios después de responder'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuestas_opinion`
--

INSERT INTO `encuestas_opinion` (`id_encuesta`, `titulo`, `descripcion`, `pregunta`, `id_creador`, `tipo_creador`, `escuela_id`, `activa`, `fecha_creacion`, `fecha_cierre`, `total_respuestas`, `tipo_encuesta`, `usuarios_permitidos`, `permisos_personalizados`, `permite_anonimo`, `es_obligatoria`, `max_respuestas`, `mostrar_resultados`) VALUES
(9, 'Encuesta para saber mas de ti', 'Encuesta para saber alguna informacion adicional de ti', '', 6, 'educativo', 6, 0, '2026-01-18 21:14:33', '2026-01-20 21:12:00', 2, 'multiple', '[\"alumno\"]', NULL, 0, 0, NULL, 1),
(10, 'Encuesta prueba', 'Contesta las preguntas', '', 6, 'educativo', 6, 0, '2026-01-19 16:55:08', '2026-01-21 16:55:00', 1, 'multiple', '[\"educativo\", \"tutor\", \"alumno\", \"administrativo\"]', NULL, 0, 0, NULL, 1),
(11, 'Saber de ti', 'Esta encuesta es para saber un poco mas de los alumnos', '', 6, 'educativo', 6, 1, '2026-01-19 18:42:29', NULL, 1, 'multiple', '[\"alumno\"]', NULL, 0, 0, NULL, 1),
(12, 'EJEMPLO', 'Preguntas ejemplo', '', 6, 'educativo', 6, 1, '2026-01-20 09:28:01', NULL, 1, 'multiple', '[\"tutor\", \"alumno\"]', NULL, 0, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_opciones`
--

CREATE TABLE `encuesta_opciones` (
  `id_opcion` int NOT NULL,
  `id_pregunta` int NOT NULL,
  `texto_opcion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` int DEFAULT '0',
  `imagen_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuesta_opciones`
--

INSERT INTO `encuesta_opciones` (`id_opcion`, `id_pregunta`, `texto_opcion`, `valor`, `orden`, `imagen_url`) VALUES
(16, 14, '10-12', 'opcion_1', 1, NULL),
(17, 14, '13-15', 'opcion_2', 2, NULL),
(18, 14, '16-18', 'opcion_3', 3, NULL),
(19, 15, 'Matematicas', 'opcion_1', 1, NULL),
(20, 15, 'Español', 'opcion_2', 2, NULL),
(21, 15, 'Historia', 'opcion_3', 3, NULL),
(22, 15, 'Educacion fisica', 'opcion_4', 4, NULL),
(23, 19, '10-12', 'opcion_1', 1, NULL),
(24, 19, '13-15', 'opcion_2', 2, NULL),
(25, 19, '16-18', 'opcion_3', 3, NULL),
(26, 20, 'Español', 'opcion_1', 1, NULL),
(27, 20, 'Matematicas', 'opcion_2', 2, NULL),
(28, 20, 'Historia', 'opcion_3', 3, NULL),
(29, 20, 'Educación Física', 'opcion_4', 4, NULL),
(30, 23, '10', 'opcion_1', 1, NULL),
(31, 23, '12', 'opcion_2', 2, NULL),
(32, 23, '13', 'opcion_3', 3, NULL),
(33, 24, 'azul', 'opcion_1', 1, NULL),
(34, 24, 'rojo', 'opcion_2', 2, NULL),
(35, 24, 'verde', 'opcion_3', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_preguntas`
--

CREATE TABLE `encuesta_preguntas` (
  `id_pregunta` int NOT NULL,
  `id_encuesta` int NOT NULL,
  `texto_pregunta` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_pregunta` enum('texto_libre','opcion_multiple','seleccion_unica','escala') COLLATE utf8mb4_unicode_ci DEFAULT 'texto_libre',
  `orden` int DEFAULT '0',
  `obligatoria` tinyint DEFAULT '0',
  `max_longitud` int DEFAULT '2000' COMMENT 'Para texto libre',
  `instrucciones` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuesta_preguntas`
--

INSERT INTO `encuesta_preguntas` (`id_pregunta`, `id_encuesta`, `texto_pregunta`, `tipo_pregunta`, `orden`, `obligatoria`, `max_longitud`, `instrucciones`) VALUES
(13, 9, 'Cual es tu nombre', 'texto_libre', 1, 1, 2000, 'Escribe tu nombre empezando por apellidos'),
(14, 9, 'Cual es tu edad', 'seleccion_unica', 2, 0, 2000, 'Selecciona tu edad'),
(15, 9, 'Cuales son tus materias favoritas', 'opcion_multiple', 3, 0, 2000, NULL),
(16, 9, 'Como calificarias la escuela', 'escala', 4, 0, 2000, NULL),
(17, 10, 'COmo estas', 'texto_libre', 1, 0, 2000, NULL),
(18, 11, 'Cual es tu nombre', 'texto_libre', 1, 0, 2000, 'Ingresa tu nombre empezando por apellidos'),
(19, 11, 'Selecciona tu edad', 'seleccion_unica', 2, 0, 2000, NULL),
(20, 11, 'Cuales son tus materias favoritas', 'opcion_multiple', 3, 0, 2000, NULL),
(21, 11, 'Como calificarias la escuela', 'escala', 4, 0, 2000, NULL),
(22, 12, 'como te llamas', 'texto_libre', 1, 1, 2000, 'contesta'),
(23, 12, 'cuantos años tienes', 'seleccion_unica', 2, 0, 2000, NULL),
(24, 12, 'cuales son tus colores favoritos', 'opcion_multiple', 3, 0, 2000, NULL),
(25, 12, 'del uno al 10 cuanto le das a la escuela', 'escala', 4, 0, 2000, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_respuestas`
--

CREATE TABLE `encuesta_respuestas` (
  `id_respuesta` int NOT NULL,
  `id_encuesta` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','tutor','alumno','administrativo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta_completa` json DEFAULT NULL COMMENT 'Respuestas en formato JSON',
  `fecha_respuesta` datetime DEFAULT CURRENT_TIMESTAMP,
  `anonimo` tinyint DEFAULT '0',
  `duracion_segundos` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encuesta_respuestas`
--

INSERT INTO `encuesta_respuestas` (`id_respuesta`, `id_encuesta`, `id_usuario`, `tipo_usuario`, `respuesta_completa`, `fecha_respuesta`, `anonimo`, `duracion_segundos`) VALUES
(1, 9, 9, 'alumno', '[{\"id_pregunta\": 13, \"valor_escala\": null, \"respuesta_texto\": \"Lima Maria\", \"opciones_seleccionadas\": []}, {\"id_pregunta\": 14, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [18]}, {\"id_pregunta\": 15, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [19, 21]}, {\"id_pregunta\": 16, \"valor_escala\": 5, \"respuesta_texto\": null, \"opciones_seleccionadas\": []}]', '2026-01-18 22:27:53', 0, NULL),
(2, 9, 8, 'alumno', '[{\"id_pregunta\": 13, \"valor_escala\": null, \"respuesta_texto\": \"Hernandez Luis\", \"opciones_seleccionadas\": []}, {\"id_pregunta\": 14, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [18]}, {\"id_pregunta\": 15, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": []}, {\"id_pregunta\": 16, \"valor_escala\": 1, \"respuesta_texto\": null, \"opciones_seleccionadas\": []}]', '2026-01-18 22:46:14', 0, NULL),
(3, 10, 8, 'educativo', '[{\"id_pregunta\": 17, \"valor_escala\": null, \"respuesta_texto\": \"Bien\\n\", \"opciones_seleccionadas\": []}]', '2026-01-19 17:00:09', 0, NULL),
(4, 11, 8, 'alumno', '[{\"id_pregunta\": 18, \"valor_escala\": null, \"respuesta_texto\": \"Hernandez Luis\", \"opciones_seleccionadas\": []}, {\"id_pregunta\": 19, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [25]}, {\"id_pregunta\": 20, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [26, 28]}, {\"id_pregunta\": 21, \"valor_escala\": 3, \"respuesta_texto\": null, \"opciones_seleccionadas\": []}]', '2026-01-19 18:49:05', 0, NULL),
(5, 12, 9, 'alumno', '[{\"id_pregunta\": 22, \"valor_escala\": null, \"respuesta_texto\": \"lulu\", \"opciones_seleccionadas\": []}, {\"id_pregunta\": 23, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [32]}, {\"id_pregunta\": 24, \"valor_escala\": null, \"respuesta_texto\": null, \"opciones_seleccionadas\": [33, 34, 35]}, {\"id_pregunta\": 25, \"valor_escala\": 5, \"respuesta_texto\": null, \"opciones_seleccionadas\": []}]', '2026-01-20 09:28:53', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_respuestas_detalle`
--

CREATE TABLE `encuesta_respuestas_detalle` (
  `id_respuesta_detalle` int NOT NULL,
  `id_respuesta` int NOT NULL,
  `id_pregunta` int NOT NULL,
  `respuesta_texto` text COLLATE utf8mb4_unicode_ci,
  `respuesta_opciones` json DEFAULT NULL COMMENT 'Para preguntas múltiples, IDs de opciones seleccionadas',
  `valor_escala` int DEFAULT NULL COMMENT 'Para preguntas de escala (1-5, etc)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_respuestas_old`
--

CREATE TABLE `encuesta_respuestas_old` (
  `id_respuesta` int NOT NULL,
  `id_encuesta` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','tutor') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `respuesta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_respuesta` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `id_esc` int NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `clave_esc` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `nivel_educativo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `turno` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `municipio` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `colonia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `codigo_postal` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `director_id` int DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`id_esc`, `nombre`, `clave_esc`, `nivel_educativo`, `turno`, `estado`, `municipio`, `colonia`, `direccion`, `codigo_postal`, `telefono`, `correo`, `director_id`, `activo`, `fecha_registro`) VALUES
(1, 'Escuela Primaria \"Miguel Hidalgo\"', '15EPR0012A', 'Primaria', 'Matutino', 'Estado de México', 'Toluca', 'Centro', 'Av. Hidalgo #123', '50000', '7221234567', 'primaria.miguelhidalgo@edu.mx', 1, 1, '2026-01-05 08:00:03'),
(2, 'Escuela Secundaria Técnica No. 45', '15EST0045B', 'Secundaria', 'Vespertino', 'Estado de México', 'Metepec', 'San Mateo', 'Calle Tecnología #45', '52140', '7222345678', 'est45@edu.mx', 2, 1, '2026-01-05 08:00:03'),
(3, 'Preparatoria Oficial No. 12', '15DPR0012C', 'Media Superior', 'Matutino', 'Estado de México', 'Lerma', 'San Nicolás', 'Carretera Lerma #12', '52000', '7283456789', 'prepa12@edu.mx', 3, 1, '2026-01-05 08:00:03'),
(4, 'Jardín de Niños \"María Montessori\"', '15DJN0023D', 'Preescolar', 'Matutino', 'Estado de México', 'Zinacantepec', 'San Miguel', 'Calle Niño Artillero S/N', '51350', '7224567890', 'jardin.montessori@edu.mx', 4, 1, '2026-01-05 08:00:03'),
(5, 'Colegio de Bachilleres Plantel 8', '15DCB0008E', 'Media Superior', 'Mixto', 'Estado de México', 'Naucalpan', 'Satélite', 'Av. Universidad #800', '53100', '5555678901', 'cobach8@edu.mx', 5, 1, '2026-01-05 08:00:03'),
(6, 'Secundaria Federal No. 5 \"Benito Juárez\"', '15ESF0005F', 'Secundaria', 'Matutino', 'Estado de México', 'Ecatepec', 'Jardines de Morelos', 'Av. Central #500', '55070', '5556789012', 'secundaria5@edu.mx', 6, 1, '2026-01-05 08:02:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela_alumnos`
--

CREATE TABLE `escuela_alumnos` (
  `id_esc_alu` int NOT NULL,
  `id_esc` int NOT NULL,
  `id_alu` int NOT NULL,
  `ciclo_escolar` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `grado` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `grupo` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_inscripcion` date NOT NULL,
  `fecha_baja` date DEFAULT NULL,
  `activo` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `escuela_alumnos`
--

INSERT INTO `escuela_alumnos` (`id_esc_alu`, `id_esc`, `id_alu`, `ciclo_escolar`, `grado`, `grupo`, `fecha_inscripcion`, `fecha_baja`, `activo`) VALUES
(4, 3, 4, '2025-2026', '6to', 'a', '2026-01-05', NULL, 1),
(5, 2, 6, '2025-2026', '1ro', 'a', '2026-01-05', NULL, 1),
(7, 6, 8, '2025-2026', '1ro', '2', '2026-01-05', NULL, 1),
(8, 6, 9, '2025-2026', '1ro', 'A', '2026-01-09', NULL, 1),
(9, 3, 10, '2025-2026', '1ro', 'a', '2026-01-12', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `id_eva` int NOT NULL,
  `id_educativo` int NOT NULL,
  `id_alumno` int NOT NULL,
  `tipo_evaluacion` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `calificacion` decimal(5,2) DEFAULT NULL,
  `comentarios` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_evaluacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes_conocimiento`
--

CREATE TABLE `examenes_conocimiento` (
  `id_exa` int NOT NULL,
  `id_educativo` int NOT NULL,
  `id_alumno` int NOT NULL,
  `puntuacion` int NOT NULL,
  `tiempo_segundos` int DEFAULT NULL,
  `intento_num` int DEFAULT '1',
  `fecha_realizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `user_id` int NOT NULL,
  `user_type` enum('educativo','administrativo','tutor','alumno') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `used` tinyint DEFAULT '0',
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`id`, `token`, `user_id`, `user_type`, `email`, `used`, `expires_at`, `created_at`) VALUES
(1, 'niFMEUeVgO0bd1mNGtn0wbaeqg6nT5dFI1_90YWSS9w', 1, 'alumno', 'luis2014hdez@hotmail.com', 1, '2026-01-05 04:52:07', '2026-01-05 10:37:06'),
(5, '4gdZx_4oMoKgDQ0MvV4SZ2IK0oBE9NecCgoqYal6zpY', 8, 'alumno', 'luis2014hdez@hotmail.com', 0, '2026-01-12 13:25:22', '2026-01-12 19:10:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinadores`
--

CREATE TABLE `patrocinadores` (
  `id_pat` int NOT NULL,
  `nombre_empresa` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `nombre_representante` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `municipio` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `logo_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id_pos` int NOT NULL,
  `id_educativo` int NOT NULL,
  `id_convocatoria` int NOT NULL,
  `id_escuela` int NOT NULL,
  `documentos` json DEFAULT NULL,
  `estado` enum('pendiente','revisando','aprobada','rechazada') CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT 'pendiente',
  `observaciones` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `fecha_postulacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_revision` datetime DEFAULT NULL,
  `id_revisor` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_pub` int NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_educativo` int DEFAULT NULL,
  `id_patrocinador` int DEFAULT NULL,
  `tipo_publicacion` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `imagen_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `destacada` tinyint DEFAULT '0',
  `vistas` int DEFAULT '0',
  `likes` int DEFAULT '0',
  `activa` tinyint DEFAULT '1',
  `fecha_publicacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `escuela_id` int DEFAULT NULL,
  `autor_tipo` enum('educativo','administrativo','tutor','alumno') COLLATE utf8mb3_spanish_ci DEFAULT 'educativo',
  `autor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_pub`, `titulo`, `contenido`, `id_educativo`, `id_patrocinador`, `tipo_publicacion`, `imagen_url`, `destacada`, `vistas`, `likes`, `activa`, `fecha_publicacion`, `fecha_actualizacion`, `escuela_id`, `autor_tipo`, `autor_id`) VALUES
(10, 'Soy directora', 'Buenas tardes ', 6, NULL, 'general', NULL, 0, 7, 1, 0, '2026-01-15 22:11:25', '2026-01-19 20:56:09', 6, 'educativo', 6),
(11, 'Soy docente ', 'Buenas tardes', 8, NULL, 'general', NULL, 0, 6, 2, 1, '2026-01-15 22:59:10', '2026-01-19 04:45:57', 6, 'educativo', 8),
(12, 'Soy alumna', 'aaaaaaaaaaaa', NULL, NULL, 'general', NULL, 0, 6, 3, 1, '2026-01-16 15:38:30', '2026-01-19 22:59:45', 6, 'alumno', 9),
(13, 'Soy Admistrativa', 'Holaaaa', NULL, NULL, 'anuncio', NULL, 0, 6, 2, 1, '2026-01-18 23:17:18', '2026-01-19 22:59:54', 6, 'administrativo', 3),
(14, 'Hola mundo', 'akaskndkanskd', 6, NULL, 'general', NULL, 0, 2, 0, 0, '2026-01-19 20:56:25', '2026-01-19 23:40:18', 6, 'educativo', 6),
(15, 'Hola ', 'Como estan todos', 6, NULL, 'general', NULL, 0, 5, 0, 1, '2026-01-20 00:36:28', '2026-01-20 15:38:42', 6, 'educativo', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_likes`
--

CREATE TABLE `publicacion_likes` (
  `id_publicacion_likes` int NOT NULL,
  `id_publicacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','tutor','alumno','administrativo') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_like` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_likes`
--

INSERT INTO `publicacion_likes` (`id_publicacion_likes`, `id_publicacion`, `id_usuario`, `tipo_usuario`, `fecha_like`) VALUES
(9, 12, 9, 'alumno', '2026-01-16 10:36:28'),
(10, 12, 6, 'educativo', '2026-01-16 12:00:04'),
(12, 11, 6, 'educativo', '2026-01-16 12:00:23'),
(13, 12, 3, 'administrativo', '2026-01-18 17:15:07'),
(14, 13, 9, 'alumno', '2026-01-18 17:18:01'),
(15, 13, 4, 'tutor', '2026-01-18 17:58:38'),
(16, 11, 9, 'alumno', '2026-01-18 22:00:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_vistas`
--

CREATE TABLE `publicacion_vistas` (
  `id_publicacion_vistas` int NOT NULL,
  `id_publicacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','tutor','alumno','administrativo') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_vista` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicacion_vistas`
--

INSERT INTO `publicacion_vistas` (`id_publicacion_vistas`, `id_publicacion`, `id_usuario`, `tipo_usuario`, `fecha_vista`) VALUES
(30, 11, 8, 'educativo', '2026-01-19 18:45:06'),
(31, 11, 6, 'educativo', '2026-01-20 09:24:57'),
(32, 11, 9, 'alumno', '2026-01-20 09:28:28'),
(34, 12, 9, 'alumno', '2026-01-20 09:28:27'),
(35, 12, 6, 'educativo', '2026-01-20 09:24:58'),
(36, 13, 4, 'tutor', '2026-01-20 09:38:42'),
(37, 12, 4, 'tutor', '2026-01-20 09:38:43'),
(39, 11, 4, 'tutor', '2026-01-20 09:38:43'),
(40, 13, 6, 'educativo', '2026-01-20 09:24:57'),
(41, 13, 9, 'alumno', '2026-01-20 09:28:27'),
(42, 13, 3, 'administrativo', '2026-01-18 21:17:35'),
(43, 12, 3, 'administrativo', '2026-01-18 21:17:35'),
(44, 11, 3, 'administrativo', '2026-01-18 21:17:35'),
(46, 13, 8, 'alumno', '2026-01-19 18:49:24'),
(47, 12, 8, 'alumno', '2026-01-19 18:49:25'),
(48, 11, 8, 'alumno', '2026-01-19 18:49:25'),
(52, 12, 8, 'educativo', '2026-01-19 18:45:07'),
(53, 13, 8, 'educativo', '2026-01-19 18:45:05'),
(54, 15, 6, 'educativo', '2026-01-20 09:24:57'),
(55, 15, 8, 'educativo', '2026-01-19 18:45:05'),
(56, 15, 8, 'alumno', '2026-01-19 18:49:23'),
(57, 15, 9, 'alumno', '2026-01-20 09:28:28'),
(58, 15, 4, 'tutor', '2026-01-20 09:38:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reconocimientos`
--

CREATE TABLE `reconocimientos` (
  `id_rec` int NOT NULL,
  `id_educativo` int NOT NULL,
  `id_convocatoria` int NOT NULL,
  `nivel_reconocimiento` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `premio` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_otorgado` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_patrocinador` int DEFAULT NULL,
  `evidencias` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int NOT NULL,
  `nombre_rol` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `nivel_acceso` int DEFAULT '1',
  `descripcion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`, `nivel_acceso`, `descripcion`) VALUES
(1, 'admin', 10, 'Administrador del sistema'),
(2, 'director', 8, 'Director de escuela'),
(3, 'docente', 5, 'Docente/Profesor'),
(4, 'tutor', 3, 'Tutor/Padre de familia'),
(5, 'alumno', 2, 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutores`
--

CREATE TABLE `tutores` (
  `id_tut` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_pa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ape_ma` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `curp` varchar(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `telefono` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` text CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci,
  `ocupacion` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `tutores`
--

INSERT INTO `tutores` (`id_tut`, `nombre`, `ape_pa`, `ape_ma`, `curp`, `fecha_nac`, `correo`, `contrasena`, `telefono`, `direccion`, `ocupacion`, `foto`, `activo`, `fecha_registro`) VALUES
(4, 'Raquel', 'Martinez', NULL, 'AAAAAAAAAAAAAAAAAA', '1990-06-27', 'tutor@correo.com', '$2b$12$jD5S/dQz9sFf.MDiH6H.ROlJ/Cgj/Dw.Hl6n.1cSgR8U9DSlUTYTG', NULL, NULL, 'Costurera', 'Fotoperfil.jpg', 0, '2026-01-05 19:04:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verificaciones_cuenta`
--

CREATE TABLE `verificaciones_cuenta` (
  `id_verificacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_usuario` enum('educativo','administrativo','tutor','alumno') COLLATE utf8mb3_spanish_ci NOT NULL,
  `documento_validado` varchar(100) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `fecha_verificacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `resultado` json DEFAULT NULL,
  `id_admin_aprobador` int DEFAULT NULL,
  `estado` enum('pendiente','aprobada','rechazada') COLLATE utf8mb3_spanish_ci DEFAULT 'pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `verificaciones_cuenta`
--

INSERT INTO `verificaciones_cuenta` (`id_verificacion`, `id_usuario`, `tipo_usuario`, `documento_validado`, `fecha_verificacion`, `resultado`, `id_admin_aprobador`, `estado`) VALUES
(1, 8, 'alumno', 'certificado', '2026-01-06 06:26:42', '{\"reason\": \"El documento es un \'Certificado de Terminación de Estudios\' emitido por el Colegio de Estudios Científicos y Tecnológicos del Estado de México, incluye datos oficiales como clave de centro de trabajo, CURP, número de control, sello digital SEP, y referencia a la Ley de Firma Electrónica Avanzada.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(2, 6, 'alumno', 'certificado', '2026-01-06 06:31:42', '{\"reason\": \"El documento contiene elementos característicos de un certificado de estudios mexicano: encabezado \'Certificado de Estudios\', datos del alumno (nombre completo), institución educativa específica (Colegio de Bachilleres Plantel 8), clave CCT (15DCB0008E), periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(3, 4, 'alumno', 'certificado', '2026-01-06 07:08:52', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano, incluyendo nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(4, 8, 'alumno', 'certificado', '2026-01-06 07:15:50', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano, incluyendo nombre del alumno, institución educativa (Colegio de Bachilleres), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(5, 6, 'alumno', 'certificado', '2026-01-06 07:47:17', '{\"reason\": \"El documento contiene elementos clave de un certificado de estudios válido: título \'Certificado de Estudios\', datos del alumno (Luis Hernandez Martinez), institución educativa (Colegio de Bachilleres Plantel 8), clave CCT oficial (15DCB0008E), periodo de estudios (2025-2026), fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(6, 7, 'educativo', 'certificado', '2026-01-07 22:24:24', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano: incluye nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(7, 8, 'alumno', 'certificado', '2026-01-07 22:59:39', '{\"reason\": \"El documento contiene elementos clave de un certificado de estudios válido: nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(8, 8, 'alumno', 'certificado', '2026-01-07 23:01:08', '{\"reason\": \"El documento es un \'Certificado de Terminación de Estudios\' emitido por el Colegio de Estudios Científicos y Tecnológicos del Estado de México, incluye datos oficiales como clave de centro de trabajo, CURP, número de control, sello digital SEP, y referencia a la Ley de Firma Electrónica Avanzada.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(9, 5, 'tutor', 'certificado', '2026-01-08 19:16:41', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano: incluye nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT válida (15DCB0008E), periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(10, 9, 'alumno', 'certificado', '2026-01-09 20:26:57', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano, incluyendo nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(11, 8, 'alumno', 'certificado', '2026-01-12 19:18:46', '{\"reason\": \"El documento presenta estructura y contenido típico de un certificado de estudios mexicano: incluye nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente'),
(12, 4, 'tutor', 'certificado', '2026-01-19 00:00:51', '{\"reason\": \"El documento contiene elementos clave de un certificado de estudios válido: nombre del alumno, institución educativa (Colegio de Bachilleres Plantel 8), clave CCT, periodo de estudios, fecha y lugar de expedición, y firma de la directora del plantel.\", \"isValid\": true, \"isScanned\": false, \"confidence\": 95, \"documentType\": \"certificado\"}', NULL, 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`id_adm`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `n_empleado` (`n_empleado`),
  ADD KEY `idx_admin_correo` (`correo`),
  ADD KEY `idx_admin_cargo` (`cargo`),
  ADD KEY `idx_admin_activo` (`activo`);

--
-- Indices de la tabla `administrativo_escuelas`
--
ALTER TABLE `administrativo_escuelas`
  ADD PRIMARY KEY (`id_adm_esc`),
  ADD UNIQUE KEY `uniq_adm_esc_activo` (`id_adm`,`id_esc`,`activo`),
  ADD KEY `id_adm` (`id_adm`),
  ADD KEY `id_esc` (`id_esc`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alu`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `idx_alumnos_correo` (`correo`),
  ADD KEY `idx_alumnos_tutor` (`id_tutor`),
  ADD KEY `idx_alumnos_escuela` (`escuela_id`),
  ADD KEY `idx_alumnos_grado_grupo` (`grado`,`grupo`);

--
-- Indices de la tabla `bajas`
--
ALTER TABLE `bajas`
  ADD PRIMARY KEY (`id_baja`),
  ADD KEY `id_admin_revisor` (`id_admin_revisor`),
  ADD KEY `idx_bajas_estado` (`estado`);

--
-- Indices de la tabla `buzon_mejora`
--
ALTER TABLE `buzon_mejora`
  ADD PRIMARY KEY (`id_buz`),
  ADD KEY `id_tutor` (`id_tutor`),
  ADD KEY `id_escuela` (`id_escuela`),
  ADD KEY `id_admin_responde` (`id_admin_responde`),
  ADD KEY `idx_buzon_estado` (`estado`);

--
-- Indices de la tabla `comentarios_publicaciones`
--
ALTER TABLE `comentarios_publicaciones`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `idx_publicacion` (`id_publicacion`),
  ADD KEY `idx_autor` (`autor_tipo`,`autor_id`);

--
-- Indices de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD PRIMARY KEY (`id_con`),
  ADD KEY `id_creador` (`id_creador`),
  ADD KEY `idx_convocatorias_fechas` (`fecha_inicio`,`fecha_fin`),
  ADD KEY `idx_convocatorias_estado` (`estado`),
  ADD KEY `id_escuela` (`id_escuela`);

--
-- Indices de la tabla `educativos`
--
ALTER TABLE `educativos`
  ADD PRIMARY KEY (`id_edu`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `n_empleado` (`n_empleado`),
  ADD KEY `idx_educativos_correo` (`correo`),
  ADD KEY `idx_educativos_rol` (`id_rol`),
  ADD KEY `idx_educativos_activo` (`activo`);

--
-- Indices de la tabla `educativo_escuelas`
--
ALTER TABLE `educativo_escuelas`
  ADD PRIMARY KEY (`id_edu_esc`),
  ADD UNIQUE KEY `uniq_edu_esc_activo` (`id_edu`,`id_esc`,`activo`),
  ADD KEY `id_edu` (`id_edu`),
  ADD KEY `id_esc` (`id_esc`);

--
-- Indices de la tabla `encuestas_opinion`
--
ALTER TABLE `encuestas_opinion`
  ADD PRIMARY KEY (`id_encuesta`),
  ADD KEY `idx_encuesta_escuela` (`escuela_id`),
  ADD KEY `idx_encuesta_activa` (`activa`),
  ADD KEY `idx_encuesta_fecha` (`fecha_creacion`);

--
-- Indices de la tabla `encuesta_opciones`
--
ALTER TABLE `encuesta_opciones`
  ADD PRIMARY KEY (`id_opcion`),
  ADD KEY `idx_pregunta_orden` (`id_pregunta`,`orden`);

--
-- Indices de la tabla `encuesta_preguntas`
--
ALTER TABLE `encuesta_preguntas`
  ADD PRIMARY KEY (`id_pregunta`),
  ADD KEY `idx_encuesta_orden` (`id_encuesta`,`orden`);

--
-- Indices de la tabla `encuesta_respuestas`
--
ALTER TABLE `encuesta_respuestas`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD UNIQUE KEY `unique_respuesta_encuesta` (`id_encuesta`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_encuesta_usuario` (`id_encuesta`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_fecha_encuesta` (`fecha_respuesta`,`id_encuesta`);

--
-- Indices de la tabla `encuesta_respuestas_detalle`
--
ALTER TABLE `encuesta_respuestas_detalle`
  ADD PRIMARY KEY (`id_respuesta_detalle`),
  ADD KEY `id_pregunta` (`id_pregunta`),
  ADD KEY `idx_respuesta_pregunta` (`id_respuesta`,`id_pregunta`);

--
-- Indices de la tabla `encuesta_respuestas_old`
--
ALTER TABLE `encuesta_respuestas_old`
  ADD PRIMARY KEY (`id_respuesta`),
  ADD UNIQUE KEY `unique_respuesta` (`id_encuesta`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_respuesta_encuesta` (`id_encuesta`),
  ADD KEY `idx_respuesta_usuario` (`id_usuario`,`tipo_usuario`);

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`id_esc`),
  ADD UNIQUE KEY `clave_esc` (`clave_esc`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `idx_escuelas_clave` (`clave_esc`),
  ADD KEY `idx_escuelas_estado_municipio` (`estado`,`municipio`);

--
-- Indices de la tabla `escuela_alumnos`
--
ALTER TABLE `escuela_alumnos`
  ADD PRIMARY KEY (`id_esc_alu`),
  ADD UNIQUE KEY `uniq_escuela_alumno_ciclo` (`id_esc`,`id_alu`,`ciclo_escolar`),
  ADD KEY `id_alu` (`id_alu`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id_eva`),
  ADD KEY `id_educativo` (`id_educativo`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `idx_evaluaciones_fecha` (`fecha_evaluacion`);

--
-- Indices de la tabla `examenes_conocimiento`
--
ALTER TABLE `examenes_conocimiento`
  ADD PRIMARY KEY (`id_exa`),
  ADD KEY `id_educativo` (`id_educativo`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `idx_examenes_fecha` (`fecha_realizacion`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idx_token` (`token`),
  ADD KEY `idx_user` (`user_id`,`user_type`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Indices de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD PRIMARY KEY (`id_pat`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id_pos`),
  ADD KEY `id_convocatoria` (`id_convocatoria`),
  ADD KEY `id_escuela` (`id_escuela`),
  ADD KEY `id_revisor` (`id_revisor`),
  ADD KEY `idx_postulaciones_estado` (`estado`),
  ADD KEY `idx_postulaciones_educativo` (`id_educativo`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_pub`),
  ADD KEY `id_educativo` (`id_educativo`),
  ADD KEY `id_patrocinador` (`id_patrocinador`),
  ADD KEY `idx_publicaciones_destacada` (`destacada`),
  ADD KEY `idx_publicaciones_fecha` (`fecha_publicacion`),
  ADD KEY `escuela_id` (`escuela_id`),
  ADD KEY `idx_autor_tipo_id` (`autor_tipo`,`autor_id`);

--
-- Indices de la tabla `publicacion_likes`
--
ALTER TABLE `publicacion_likes`
  ADD PRIMARY KEY (`id_publicacion_likes`),
  ADD UNIQUE KEY `unique_like` (`id_publicacion`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_publicacion_usuario` (`id_publicacion`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_usuario_tipo` (`id_usuario`,`tipo_usuario`);

--
-- Indices de la tabla `publicacion_vistas`
--
ALTER TABLE `publicacion_vistas`
  ADD PRIMARY KEY (`id_publicacion_vistas`),
  ADD UNIQUE KEY `unique_view` (`id_publicacion`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_publicacion_usuario` (`id_publicacion`,`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_usuario_tipo` (`id_usuario`,`tipo_usuario`);

--
-- Indices de la tabla `reconocimientos`
--
ALTER TABLE `reconocimientos`
  ADD PRIMARY KEY (`id_rec`),
  ADD KEY `id_convocatoria` (`id_convocatoria`),
  ADD KEY `idx_reconocimientos_educativo` (`id_educativo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`),
  ADD UNIQUE KEY `nombre_rol` (`nombre_rol`);

--
-- Indices de la tabla `tutores`
--
ALTER TABLE `tutores`
  ADD PRIMARY KEY (`id_tut`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `idx_tutores_correo` (`correo`),
  ADD KEY `idx_tutores_activo` (`activo`);

--
-- Indices de la tabla `verificaciones_cuenta`
--
ALTER TABLE `verificaciones_cuenta`
  ADD PRIMARY KEY (`id_verificacion`),
  ADD KEY `idx_usuario_tipo` (`id_usuario`,`tipo_usuario`),
  ADD KEY `idx_fecha_verificacion` (`fecha_verificacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `id_adm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administrativo_escuelas`
--
ALTER TABLE `administrativo_escuelas`
  MODIFY `id_adm_esc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `bajas`
--
ALTER TABLE `bajas`
  MODIFY `id_baja` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `buzon_mejora`
--
ALTER TABLE `buzon_mejora`
  MODIFY `id_buz` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios_publicaciones`
--
ALTER TABLE `comentarios_publicaciones`
  MODIFY `id_comentario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  MODIFY `id_con` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `educativos`
--
ALTER TABLE `educativos`
  MODIFY `id_edu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `educativo_escuelas`
--
ALTER TABLE `educativo_escuelas`
  MODIFY `id_edu_esc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `encuestas_opinion`
--
ALTER TABLE `encuestas_opinion`
  MODIFY `id_encuesta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `encuesta_opciones`
--
ALTER TABLE `encuesta_opciones`
  MODIFY `id_opcion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `encuesta_preguntas`
--
ALTER TABLE `encuesta_preguntas`
  MODIFY `id_pregunta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `encuesta_respuestas`
--
ALTER TABLE `encuesta_respuestas`
  MODIFY `id_respuesta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `encuesta_respuestas_detalle`
--
ALTER TABLE `encuesta_respuestas_detalle`
  MODIFY `id_respuesta_detalle` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encuesta_respuestas_old`
--
ALTER TABLE `encuesta_respuestas_old`
  MODIFY `id_respuesta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `id_esc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `escuela_alumnos`
--
ALTER TABLE `escuela_alumnos`
  MODIFY `id_esc_alu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id_eva` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `examenes_conocimiento`
--
ALTER TABLE `examenes_conocimiento`
  MODIFY `id_exa` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  MODIFY `id_pat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id_pos` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_pub` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `publicacion_likes`
--
ALTER TABLE `publicacion_likes`
  MODIFY `id_publicacion_likes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `publicacion_vistas`
--
ALTER TABLE `publicacion_vistas`
  MODIFY `id_publicacion_vistas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `reconocimientos`
--
ALTER TABLE `reconocimientos`
  MODIFY `id_rec` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutores`
--
ALTER TABLE `tutores`
  MODIFY `id_tut` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `verificaciones_cuenta`
--
ALTER TABLE `verificaciones_cuenta`
  MODIFY `id_verificacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativo_escuelas`
--
ALTER TABLE `administrativo_escuelas`
  ADD CONSTRAINT `administrativo_escuelas_ibfk_1` FOREIGN KEY (`id_adm`) REFERENCES `administrativos` (`id_adm`),
  ADD CONSTRAINT `administrativo_escuelas_ibfk_2` FOREIGN KEY (`id_esc`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `tutores` (`id_tut`),
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`escuela_id`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `bajas`
--
ALTER TABLE `bajas`
  ADD CONSTRAINT `bajas_ibfk_1` FOREIGN KEY (`id_admin_revisor`) REFERENCES `administrativos` (`id_adm`);

--
-- Filtros para la tabla `buzon_mejora`
--
ALTER TABLE `buzon_mejora`
  ADD CONSTRAINT `buzon_mejora_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `tutores` (`id_tut`),
  ADD CONSTRAINT `buzon_mejora_ibfk_2` FOREIGN KEY (`id_escuela`) REFERENCES `escuelas` (`id_esc`),
  ADD CONSTRAINT `buzon_mejora_ibfk_3` FOREIGN KEY (`id_admin_responde`) REFERENCES `administrativos` (`id_adm`);

--
-- Filtros para la tabla `comentarios_publicaciones`
--
ALTER TABLE `comentarios_publicaciones`
  ADD CONSTRAINT `comentarios_publicaciones_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_pub`) ON DELETE CASCADE;

--
-- Filtros para la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD CONSTRAINT `convocatorias_ibfk_1` FOREIGN KEY (`id_creador`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `convocatorias_ibfk_2` FOREIGN KEY (`id_escuela`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `educativos`
--
ALTER TABLE `educativos`
  ADD CONSTRAINT `educativos_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Filtros para la tabla `educativo_escuelas`
--
ALTER TABLE `educativo_escuelas`
  ADD CONSTRAINT `educativo_escuelas_ibfk_1` FOREIGN KEY (`id_edu`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `educativo_escuelas_ibfk_2` FOREIGN KEY (`id_esc`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `encuestas_opinion`
--
ALTER TABLE `encuestas_opinion`
  ADD CONSTRAINT `encuestas_opinion_ibfk_1` FOREIGN KEY (`escuela_id`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `encuesta_opciones`
--
ALTER TABLE `encuesta_opciones`
  ADD CONSTRAINT `encuesta_opciones_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `encuesta_preguntas` (`id_pregunta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `encuesta_preguntas`
--
ALTER TABLE `encuesta_preguntas`
  ADD CONSTRAINT `encuesta_preguntas_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuestas_opinion` (`id_encuesta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `encuesta_respuestas`
--
ALTER TABLE `encuesta_respuestas`
  ADD CONSTRAINT `encuesta_respuestas_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuestas_opinion` (`id_encuesta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `encuesta_respuestas_detalle`
--
ALTER TABLE `encuesta_respuestas_detalle`
  ADD CONSTRAINT `encuesta_respuestas_detalle_ibfk_1` FOREIGN KEY (`id_respuesta`) REFERENCES `encuesta_respuestas` (`id_respuesta`) ON DELETE CASCADE,
  ADD CONSTRAINT `encuesta_respuestas_detalle_ibfk_2` FOREIGN KEY (`id_pregunta`) REFERENCES `encuesta_preguntas` (`id_pregunta`);

--
-- Filtros para la tabla `encuesta_respuestas_old`
--
ALTER TABLE `encuesta_respuestas_old`
  ADD CONSTRAINT `encuesta_respuestas_old_ibfk_1` FOREIGN KEY (`id_encuesta`) REFERENCES `encuestas_opinion` (`id_encuesta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD CONSTRAINT `escuelas_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `educativos` (`id_edu`);

--
-- Filtros para la tabla `escuela_alumnos`
--
ALTER TABLE `escuela_alumnos`
  ADD CONSTRAINT `escuela_alumnos_ibfk_1` FOREIGN KEY (`id_esc`) REFERENCES `escuelas` (`id_esc`),
  ADD CONSTRAINT `escuela_alumnos_ibfk_2` FOREIGN KEY (`id_alu`) REFERENCES `alumnos` (`id_alu`);

--
-- Filtros para la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD CONSTRAINT `evaluaciones_ibfk_1` FOREIGN KEY (`id_educativo`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `evaluaciones_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alu`);

--
-- Filtros para la tabla `examenes_conocimiento`
--
ALTER TABLE `examenes_conocimiento`
  ADD CONSTRAINT `examenes_conocimiento_ibfk_1` FOREIGN KEY (`id_educativo`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `examenes_conocimiento_ibfk_2` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id_alu`);

--
-- Filtros para la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD CONSTRAINT `postulaciones_ibfk_1` FOREIGN KEY (`id_educativo`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `postulaciones_ibfk_2` FOREIGN KEY (`id_convocatoria`) REFERENCES `convocatorias` (`id_con`),
  ADD CONSTRAINT `postulaciones_ibfk_3` FOREIGN KEY (`id_escuela`) REFERENCES `escuelas` (`id_esc`),
  ADD CONSTRAINT `postulaciones_ibfk_4` FOREIGN KEY (`id_revisor`) REFERENCES `administrativos` (`id_adm`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`id_educativo`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`id_patrocinador`) REFERENCES `patrocinadores` (`id_pat`),
  ADD CONSTRAINT `publicaciones_ibfk_3` FOREIGN KEY (`escuela_id`) REFERENCES `escuelas` (`id_esc`);

--
-- Filtros para la tabla `publicacion_likes`
--
ALTER TABLE `publicacion_likes`
  ADD CONSTRAINT `publicacion_likes_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_pub`) ON DELETE CASCADE;

--
-- Filtros para la tabla `publicacion_vistas`
--
ALTER TABLE `publicacion_vistas`
  ADD CONSTRAINT `publicacion_vistas_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_pub`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reconocimientos`
--
ALTER TABLE `reconocimientos`
  ADD CONSTRAINT `reconocimientos_ibfk_1` FOREIGN KEY (`id_educativo`) REFERENCES `educativos` (`id_edu`),
  ADD CONSTRAINT `reconocimientos_ibfk_2` FOREIGN KEY (`id_convocatoria`) REFERENCES `convocatorias` (`id_con`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
