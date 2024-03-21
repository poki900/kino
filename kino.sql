-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lis 2020, 07:06
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kino`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `data` date NOT NULL,
  `godzina` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `nazwa`, `data`, `godzina`) VALUES
(1, 'Spiderman', '2020-11-26', '19:00:00'),
(2, 'Hobbit', '2020-11-30', '10:00:00'),
(3, 'Opowieści z Narnii', '2020-11-24', '11:00:00'),
(4, 'Pan Tadeusz', '2020-11-26', '19:00:00'),
(7, 'Harry Potter', '2020-12-06', '10:30:00'),
(8, 'Jutro', '2020-12-06', '09:40:00'),
(9, 'Jutro 2', '2020-12-05', '10:40:00'),
(10, 'Harry Potter 2', '2020-12-02', '08:42:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `miejsce` int(11) NOT NULL,
  `id_filmu` int(11) NOT NULL,
  `imie_i_nazwisko` text NOT NULL,
  `telefon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`miejsce`, `id_filmu`, `imie_i_nazwisko`, `telefon`) VALUES
(64, 7, 'Działalność Szumny', '123456789'),
(70, 7, 'Działalność Szumny', '123456789'),
(67, 7, 'Działalność Szumny', '123456789'),
(88, 7, 'Igor Szumny', '987654321'),
(109, 7, 'Igor Szumny', '987654321'),
(132, 7, 'Igor Szumny', '987654321'),
(1, 10, 'Igor Szumny', '123456789');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
