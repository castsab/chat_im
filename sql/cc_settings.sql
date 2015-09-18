-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-09-2015 a las 20:03:31
-- Versión del servidor: 5.5.42-cll
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ciercent_cpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cc_settings`
--

CREATE TABLE IF NOT EXISTS `cc_settings` (
  `set_id` varchar(16) NOT NULL,
  `set_value` text NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cc_settings`
--

INSERT INTO `cc_settings` (`set_id`, `set_value`) VALUES
('acp_key', '672bb0974b26e93ff88cad4f3484eab0'),
('admin_css', '2'),
('admin_lang', '0'),
('ajax_delay', '10'),
('bar_chatreqt', '<div style="background-color:#00A69C;color:#fff;padding:5px">Chat Cier</div>\r\n<div style="padding:5px">{WELCOME} {USER}Â Â \r\n\r\n{CHATS_LINK}<input style="color:#000;background-color:#00A69C;padding:3px;" type="button" value="{CHATS_LANG}: {CHATS_NUM}" />{CLOSE_LINK}</div>'),
('bar_elements', '<div style="background-color:#00A69C;color:#fff;padding:5px">Chat Cier</div>\r\n<div style="padding:5px">{WELCOME} {USER}Â Â \r\n\r\n{ONLINE_LINK}<input style="color:#000;background-color:#C9C9C9;padding:3px;" type="button" value="{ONLINE_LANG}: {ONLINE_NUM}" />{CLOSE_LINK}'),
('bar_style', ' font-family:Tahoma, Geneva, sans-serif; \r\n font-size:9px; \r\n color:#000; \r\n background-color:#EFEFEF;\r\n border: solid #00A69C 1px;  \r\n margin:0px; \r\n padding:0px; \r\n width:auto; \r\n height:auto; \r\n position:fixed; \r\n left:auto;\r\n top:10px;\r\n right:20px;   \r\n z-index:1;\r\n-webkit-border-radius: 5px;\r\n-moz-border-radius: 5px;\r\nborder-radius: 5px;'),
('change_role_key', '2fd9b4356f3b2ffeee005262099bb318'),
('chat_refresh', '5'),
('default_language', '5'),
('default_sound1', '3'),
('default_sound2', '2'),
('default_timeform', '0'),
('default_timezone', '3'),
('default_veffect', '1'),
('del_gbuddies', '0'),
('header_rdr', '1'),
('html_title', ':::CIER - Chat::'),
('latest_mssg', '20'),
('main_ofactor', '3'),
('main_refresh', '10'),
('mssg_history', '24'),
('m_interval', '600'),
('notebook', 'notes...'),
('no_session_err', '1'),
('optimize_tbl', '1'),
('popup_ucp', '0'),
('post_length', '129'),
('stat_entries', '50'),
('ucp_effect', '1'),
('ucp_height', '360'),
('ucp_width', '550'),
('user_history', '336'),
('wrong_acp', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
