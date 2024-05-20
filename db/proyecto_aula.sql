-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2024 a las 00:31:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_aula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Nivel_Educativo` varchar(20) NOT NULL,
  `Profesor_ID` int(11) DEFAULT NULL,
  `Horas_Semanales` int(11) DEFAULT NULL,
  `Creditos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`ID`, `Nombre`, `Descripcion`, `Nivel_Educativo`, `Profesor_ID`, `Horas_Semanales`, `Creditos`) VALUES
(1, 'Álgebra', 'Estudio de las estructuras algebraicas', 'Bachillerato', 1, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text DEFAULT NULL,
  `Nivel_Educativo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID`, `Nombre`, `Descripcion`, `Nivel_Educativo`) VALUES
(1, 'Curso de Matemáticas', 'Curso de Matemáticas Avanzadas', 'Bachillerato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_asignatura`
--

CREATE TABLE `curso_asignatura` (
  `Curso_ID` int(11) NOT NULL,
  `Asignatura_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_estudiante`
--

CREATE TABLE `curso_estudiante` (
  `Curso_ID` int(11) NOT NULL,
  `Estudiante_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_profesor`
--

CREATE TABLE `curso_profesor` (
  `Curso_ID` int(11) NOT NULL,
  `Profesor_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID` int(11) NOT NULL,
  `Tipo_Documento` varchar(50) DEFAULT NULL,
  `Numero_Identidad` int(11) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Genero` enum('Masculino','masculino','femenino','Femenino','otro','Otro') DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Puesto` varchar(100) DEFAULT NULL,
  `Departamento` varchar(100) DEFAULT NULL,
  `Fecha_Contratacion` date DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID` int(11) NOT NULL,
  `Tipo_Documento` varchar(50) DEFAULT NULL,
  `Numero_Identidad` int(11) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Genero` enum('Masculino','masculino','femenino','Femenino','otro','Otro') DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Nivel_Educativo` varchar(20) DEFAULT NULL,
  `Grado_Curso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID`, `Tipo_Documento`, `Numero_Identidad`, `Nombre`, `Apellido`, `Fecha_Nac`, `Genero`, `Direccion`, `Telefono`, `Email`, `Nivel_Educativo`, `Grado_Curso`) VALUES
(1, 'Tarjeta de Identidad', 1234567890, 'Ana', 'García', '2010-05-20', 'femenino', 'Avenida Siempreviva 742', '3012345678', 'ana.garcia@example.com', 'Bachillerato', '5to Grado'),
(2, 'cedula', 23456789, 'jhorman', 'ruiiz', '2024-05-02', 'Masculino', 'hbd234567', '12345678', 'jhorman@gmail.com', '3', 'cd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `ID` int(11) NOT NULL,
  `Tipo_Documento` varchar(50) DEFAULT NULL,
  `Numero_Identidad` int(11) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Genero` enum('Masculino','masculino','femenino','Femenino','otro','Otro') DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Especialidad` varchar(100) DEFAULT NULL,
  `Titulo` varchar(100) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Nivel_Educativo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`ID`, `Tipo_Documento`, `Numero_Identidad`, `Nombre`, `Apellido`, `Fecha_Nac`, `Genero`, `Direccion`, `Telefono`, `Email`, `Especialidad`, `Titulo`, `Salario`, `Nivel_Educativo`) VALUES
(1, 'Cédula de Ciudadanía', 12345678, 'Juan', 'Pérez', '1980-01-15', 'Masculino', 'Calle Falsa 123', '3001234567', 'juan.perez@example.com', 'Matemáticas', 'Licenciado en Matemáticas', 4500.00, 'bachillerato'),
(2, 'cedula', 13456789, 'rober', 'luiz', '2024-05-03', 'Masculino', 'los angeles', '765432', 'rober@unicolombo.edu.co', 'matematicas ', 'master', 200000.00, '10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_profesor` (`Profesor_ID`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `curso_asignatura`
--
ALTER TABLE `curso_asignatura`
  ADD PRIMARY KEY (`Curso_ID`,`Asignatura_ID`),
  ADD KEY `fk_curso_asignatura_asignatura` (`Asignatura_ID`);

--
-- Indices de la tabla `curso_estudiante`
--
ALTER TABLE `curso_estudiante`
  ADD PRIMARY KEY (`Curso_ID`,`Estudiante_ID`),
  ADD KEY `fk_curso_estudiante_estudiante` (`Estudiante_ID`);

--
-- Indices de la tabla `curso_profesor`
--
ALTER TABLE `curso_profesor`
  ADD PRIMARY KEY (`Curso_ID`,`Profesor_ID`),
  ADD KEY `fk_curso_profesor_profesor` (`Profesor_ID`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Numero_Identidad` (`Numero_Identidad`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Numero_Identidad` (`Numero_Identidad`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Numero_Identidad` (`Numero_Identidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `fk_profesor` FOREIGN KEY (`Profesor_ID`) REFERENCES `profesores` (`ID`);

--
-- Filtros para la tabla `curso_asignatura`
--
ALTER TABLE `curso_asignatura`
  ADD CONSTRAINT `fk_curso_asignatura_asignatura` FOREIGN KEY (`Asignatura_ID`) REFERENCES `asignaturas` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_curso_asignatura_curso` FOREIGN KEY (`Curso_ID`) REFERENCES `curso` (`ID`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_estudiante`
--
ALTER TABLE `curso_estudiante`
  ADD CONSTRAINT `fk_curso_estudiante_curso` FOREIGN KEY (`Curso_ID`) REFERENCES `curso` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_curso_estudiante_estudiante` FOREIGN KEY (`Estudiante_ID`) REFERENCES `estudiantes` (`Numero_Identidad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_profesor`
--
ALTER TABLE `curso_profesor`
  ADD CONSTRAINT `fk_curso_profesor_curso` FOREIGN KEY (`Curso_ID`) REFERENCES `curso` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_curso_profesor_profesor` FOREIGN KEY (`Profesor_ID`) REFERENCES `profesores` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
