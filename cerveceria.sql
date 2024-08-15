-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-08-2024 a las 13:47:24
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci,
  `cuerpo` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Título de la novedad 1', 'Subtítulo de la novedad 1', 'Contenido del cuerpo de la novedad 1. Aquí puedes agregar detalles adicionales de la novedad.'),
(2, 'Título de la novedad 2', 'Subtítulo de la novedad 2', 'Contenido del cuerpo de la novedad 2. Aquí puedes agregar detalles adicionales de la novedad.'),
(3, 'Las mejores cervezas artesanales de Argentina', 'Hay rankings donde votan los expertos de la industria y otros donde votan los usuarios. Estas son las variedades y marcas más valoradas.', 'Cada año, el primer viernes de agosto se celebra el Día Internacional de la Cerveza. Cada aficionado a la bebida lo celebra con sus marcas o estilos favoritos, pero, para los iniciados, los rankings pueden ser una referencia para entender cuáles son las más populares o más valoradas por paladares expertos o amateurs.\r\n\r\nEn Argentina, una referencia es la de la Copa Argentina de Cervezas, que desde 2016 organiza anualmente el Centro de Cata de Cerveza de Buenos Aires a través de Martín Boan, sommelier y juez internacional de cervezas. En este certamen, un jurado especializado cata a ciegas 800 muestras de 80 estilos distintos y así se otorgan medallas de oro, plata y bronce para cada categoría.\r\n\r\nPero como no solo vale el gusto de los profesionales de la industria sino el de los consumidores, existen sitios como Untappd.com, una enorme comunidad internacional de fanáticos de la cerveza artesanal que prueban y califican a las que consideran las mejores de cada país. Allí, cada usuario puede otorgar hasta 5 puntos como máximo a cada cerveza, y el score promedio obtenido determina la posición en la tabla. Las mejores argentinas se acercan a los 4 puntos promedio.'),
(5, 'Cuáles fueron las cervecerías argentinas más premiadas de 2023', 'Cuáles fueron las cervecerías argentinas más premiadas de 2023', 'La cuenta Ranking Cervecero elaboró una lista con las cervecerías artesanales argentinas que más y mejores premios recibieron durante todo 2023. Cómo quedó el top 5 y el resto de las marcas de cerveza artesanal argentina.\r\n\r\nLa reciente cuenta de Instagram desarrolló un método para ordenar en cuanto a la jerarquía las distintas competiciones en las que participaron las cervecerías artesanales. De esta manera, según la medalla, de cada certamen, suma una determinada cantidad de puntos y el ranking se elabora según la cantidad de puntos acumulados.\r\n\r\nCómo quedó el top 5 en 2023\r\nJuguetes Perdidos\r\nLa banda de Caseros obtuvo 26 medallas, incluyendo el histórico Oro en la World Beer Cup, la competencia de cerveza más importante del mundo. Sus 8 medallas en la Brasil Beer Cup 2023 le dieron el empujón final necesario para coronarse como los mejores premiados del año.\r\n\r\nCheverry\r\nCon 22 medallas acumuladas, los marplatenses no solo fueron elegidos como Mejor Cervecería de Argentina en la Copa Austral 2023, sino que también fueron la 2nda Mejor Cervecería de la South Beer Cup. Su Old Ale obtuvo este año 5 medallas, y además fue elegida la mejor cerveza de la Copa 3 Ciudades.\r\n\r\nTropel\r\nLos lujanenses totalizaron 20 medallas en el año, que se repartieron entre sus distintos estilos. Destacaron en la Brasil Beer Cup con 2 medallas de plata; y en la Copa Cervezas de América donde su siempre cumplidora ESB se llevó un Oro.\r\n\r\nBrewhouse\r\nLos productores de la costa atlántica tuvieron un año destacadísimo y sumaron 16 medallas. Su actuación más arrolladora fue en la Copa Tayrona donde consiguieron 9 preseas.\r\n\r\nCinco Sabios\r\nDesde la ciudad de La Plata, la gente de Cinco Sabios brilló especialmente con su Honey, que obtuvo 6 medallas en distintas competencias. Su Bitter y su English IPA también destacaron en las premiaciones. La marca totalizó 19 medallas en el año.'),
(7, 'prueba 1', 'prueba1', 'prueba1'),
(8, 'prueba 2', 'prueba 2', 'prueba 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'admin', 'e3274be5c857fb42ab72d786e281b4b8'),
(2, 'user1', '5ccafb277fa23cd0e71d99bc20715d9a'),
(3, 'user2', '55b873945f78672333f33000075e7cde'),
(4, 'user3', 'cc17149e22e73f910c1f8d59a52228b7'),
(5, 'user4', '5d6e97a83bb25ff8c15e05347e594347');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
