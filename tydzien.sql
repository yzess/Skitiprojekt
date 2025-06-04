-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 04, 2025 at 09:32 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tydzien`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadania`
--

CREATE TABLE `zadania` (
  `id` int(11) NOT NULL,
  `dzien` text NOT NULL,
  `czas` time NOT NULL,
  `temat` text NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_polish_ci;

--
-- Dumping data for table `zadania`
--

INSERT INTO `zadania` (`id`, `dzien`, `czas`, `temat`, `opis`) VALUES
(1, 'poniedzialek', '08:00:00', 'Siłownia', 'Trening siłowy na początek tygodnia.'),
(2, 'wtorek', '09:30:00', 'Angielski', 'Lekcja języka angielskiego.'),
(3, 'sroda', '14:00:00', 'Zakupy', 'Zakupy spożywcze w Lidlu.'),
(4, 'czwartek', '18:00:00', 'Film', 'Wieczór filmowy z dziewczyną.'),
(5, 'piatek', '11:00:00', 'Projekt SKITI', 'Praca nad projektem na uczelnię.'),
(6, 'sobota', '16:00:00', 'Sprzątanie', 'Generalne porządki w mieszkaniu.'),
(7, 'niedziela', '12:00:00', 'Spacer', 'Spacer po parku z rodziną.'),
(8, 'poniedzialek', '10:00:00', 'Zajęcia', 'Nauka obsługi excela.'),
(9, 'poniedzialek', '15:00:00', 'Nauka', 'Przegląd materiałów do sprawdzianu z matematyki.'),
(12, 'sroda', '09:00:00', 'Biblioteka', 'Oddanie książek.'),
(13, 'sroda', '18:00:00', 'Kolacja z dziewczyną', 'Kolacja w domu z dziewczyną.'),
(14, 'czwartek', '11:00:00', 'Zakupy online', 'Kupno prezentu urodzinowego przez internet.'),
(15, 'czwartek', '20:00:00', 'Siłownia', 'Ostatni trening siłowy w tygodniu.'),
(16, 'piatek', '08:30:00', 'Wyjście do lekarza', 'Wizyta kontrolna u dentysty.'),
(17, 'piatek', '15:00:00', 'Wyjazd', 'Wyjazd do domu rodzinnego.'),
(18, 'sobota', '10:00:00', 'Zakupy na targu', 'Zakup świeżych warzyw i owoców.'),
(19, 'sobota', '19:00:00', 'Grill', 'Wieczorne grillowanie w ogrodzie.'),
(20, 'niedziela', '09:30:00', 'Kościół', 'Uczestnictwo w mszy niedzielnej.'),
(21, 'niedziela', '16:00:00', 'Powrót', 'Powrót pociągiem do Gdańska.'),
(36, 'czwartek', '22:35:00', 'dasd', 'asd');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zadania`
--
ALTER TABLE `zadania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zadania`
--
ALTER TABLE `zadania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
