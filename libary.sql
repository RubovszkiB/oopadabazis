-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Sze 12. 10:59
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `libary`
--
CREATE DATABASE IF NOT EXISTS `libary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `libary`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `author` varchar(500) NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `releaseDate`) VALUES
(1, 'Bab\'Aziz -The Prince Who Contemplated His Soul', 'Cori Foxten', '2024-09-16'),
(2, '14 Hours (Fourteen Hours)', 'Fianna Okenfold', '2025-08-20'),
(3, 'Cockfighter', 'Correy Fassmann', '2025-08-17'),
(4, 'Poor Boy\'s Game', 'Penny Oldcote', '2025-06-07'),
(5, '54', 'Jennie Gras', '2025-06-26'),
(6, 'Alice in Murderland', 'Riobard Volette', '2025-09-08'),
(7, 'My Name is Khan', 'Dolores Rosendale', '2024-10-31'),
(8, 'Broken City', 'Daphene Shurman', '2025-06-21'),
(9, 'Yards, The', 'Jacquelynn Bythell', '2025-08-18'),
(10, 'Men, The', 'Loraine Cowing', '2025-01-25'),
(11, 'Condemned, The', 'Leroi Shayler', '2025-03-31'),
(12, 'It\'s a Great Feeling', 'Lynda Yaknov', '2024-10-18'),
(13, 'Stations of the Cross', 'Catherina Tullett', '2025-05-27'),
(14, 'Carrie', 'Doris Meysham', '2025-06-11'),
(15, 'Posto, Il', 'Christal Gorce', '2024-12-15'),
(16, 'Terror on a Train (Time Bomb)', 'Bo Battram', '2025-03-14'),
(17, 'All Over Me', 'Amie Hufton', '2024-10-11'),
(18, 'Texas Carnival', 'Valentia McRinn', '2025-03-07'),
(19, 'Night, The (Notte, La)', 'Giacobo Cail', '2025-03-19'),
(20, 'Meu Passado Me Condena: O Filme', 'Cherri Kesey', '2024-09-27'),
(21, 'Strategic Air Command', 'Hanna Pettingill', '2024-10-16'),
(22, 'Material Girls', 'Brooks Brickstock', '2025-03-20'),
(23, 'Love on the Run (Amour en fuite, L\')', 'Dynah Borsay', '2025-02-09'),
(24, 'Peas at 5:30 (Erbsen auf halb 6)', 'Leland Hacker', '2024-10-19'),
(25, 'Lassie', 'Sharity Hawkslee', '2025-07-31'),
(26, 'The Wedding Ringer', 'Vladimir Hurkett', '2025-08-16'),
(27, 'Pink Saris', 'Penn Gregg', '2024-12-25'),
(28, 'Valley of Head Hunters', 'Wanda Grzelczyk', '2025-06-17'),
(29, 'One from the Heart', 'Ansell Lapthorne', '2025-01-11'),
(30, 'Mansion of Madness, The', 'Kathryn Barry', '2024-09-29'),
(31, 'Colin Quinn: Long Story Short', 'Adolphus Harwood', '2025-01-27'),
(32, 'Suicide Club', 'Fara MacTrustam', '2025-07-14'),
(33, 'Wild Child', 'Lanette Ranvoise', '2024-10-21'),
(34, 'When the Levees Broke: A Requiem in Four Acts', 'Marianne McNea', '2025-09-01'),
(35, 'Southern Comfort', 'Gian Keyho', '2025-01-12'),
(36, 'Courage Under Fire', 'Allys Jales', '2025-09-05'),
(37, 'This Boy\'s Life', 'Mab Grenville', '2025-02-22'),
(38, 'Mother of George', 'Silvanus Edmead', '2025-01-28'),
(39, 'Pretty Woman', 'Regine Charge', '2024-11-20'),
(40, 'Braveheart', 'Goober Mitton', '2025-03-26'),
(41, 'Celebrity', 'Marji Leitch', '2025-05-09'),
(42, 'The Secret of Dr. Kildare', 'Winni Chafney', '2025-04-21'),
(43, 'Some Mother\'s Son', 'Laurie Mullinger', '2025-03-11'),
(44, 'Bunny Lake Is Missing', 'Mickie Robroe', '2025-05-20'),
(45, 'Small Roads', 'Sarine Stainburn', '2025-04-20'),
(46, '120', 'Todd Bever', '2025-01-15'),
(47, 'Girl, Interrupted', 'Gar Yurlov', '2025-07-20'),
(48, 'Me Too (Yo, también)', 'Mic Lockart', '2025-01-30'),
(49, 'Ali: Fear Eats the Soul (Angst essen Seele auf)', 'Scarlet Curston', '2025-02-08'),
(50, 'World\'s Greatest Lover, The', 'Humfrid O\'Cahsedy', '2024-10-24'),
(51, 'Delgo', 'Locke Le Provost', '2024-10-22'),
(52, 'Intimate Relations', 'Teena Grise', '2025-08-14'),
(53, 'Nature of the Beast, The', 'Massimo Ruprecht', '2025-04-22'),
(54, 'Mistress', 'Emmalynne Heddan', '2025-01-16'),
(55, 'Burmese Harp, The (Biruma no tategoto)', 'Llywellyn Redmond', '2025-08-03'),
(56, 'Raja', 'Lucienne Ginnally', '2025-03-18'),
(57, 'Money (L\'argent)', 'Alexandr Jancy', '2025-02-02'),
(58, 'Tarnished Angels, The', 'Aryn Aymerich', '2025-06-05'),
(59, 'Luster', 'Gabbie Rigardeau', '2025-06-27'),
(60, 'Superman Returns', 'Mic Roony', '2025-05-30'),
(61, 'Operation Dumbo Drop', 'Andros Thumann', '2024-12-21'),
(62, 'Big Combo, The', 'Hesther Tull', '2024-11-02'),
(63, 'Bounty, The', 'Sayre Vanderplas', '2025-06-01'),
(64, 'Witches, The (aka Devil\'s Own, The)', 'Nike Tanswell', '2024-11-18'),
(65, 'Chaos Theory', 'Eva MacDonell', '2025-02-02'),
(66, 'Night Watch (Nochnoy dozor)', 'Todd Philipot', '2025-07-07'),
(67, 'Tyrannosaur', 'Abbie Rubenov', '2024-12-08'),
(68, 'Glory Daze', 'Justinn Chadburn', '2025-04-03'),
(69, 'Walker, The', 'Alisun Smeeton', '2025-06-17'),
(70, 'Love\'s Labour\'s Lost', 'Mendie Evason', '2024-09-23'),
(71, 'Hunger Games: Catching Fire, The', 'Fulvia Davidde', '2025-07-08'),
(72, 'Inherit the Wind', 'Vladamir Catling', '2025-02-08'),
(73, 'Match Point', 'Gery Luckin', '2025-01-09'),
(74, 'Blood Games ', 'Tanney Espine', '2025-04-05'),
(75, 'Act of Killing, The', 'Myra Truder', '2024-11-18'),
(76, 'Hugh Hefner: Playboy, Activist and Rebel', 'Mahalia Fredy', '2024-12-17'),
(77, 'Into the West', 'Juliane Filipic', '2024-10-11'),
(78, 'Gloria', 'Kellia Trangmar', '2025-08-05'),
(79, 'Piece of the Action, A', 'Dana Holdall', '2024-11-12'),
(80, 'Extreme Justice', 'Barb Hasser', '2024-10-05'),
(81, 'Kiler', 'Johnath Rawdall', '2024-09-13'),
(82, 'Conan the Barbarian', 'Cheston Heiss', '2024-12-22'),
(83, 'Double Dynamite', 'Dolores Havercroft', '2025-05-18'),
(84, '36 Quai des Orfèvres (Department 36)', 'Ambrose Arter', '2025-06-05'),
(85, 'These Final Hours', 'Kev D\'Ambrogi', '2025-01-20'),
(86, 'Atomic Twister', 'Mahala Fenge', '2024-09-18'),
(87, 'Telling You', 'Kitty Gold', '2025-03-27'),
(88, 'In Crowd, The', 'Padriac Swanborrow', '2025-03-24'),
(89, 'Dragonwyck', 'Franni Willder', '2025-06-01'),
(90, 'Hoodwinked!', 'Aretha Espinola', '2025-05-25'),
(91, 'This Is My Life', 'Colene Stannah', '2025-05-12'),
(92, 'Bay of Angels (La baie des anges)', 'Suzanne Philpots', '2025-07-28'),
(93, 'Life in Flight ', 'Shea Seid', '2025-05-30'),
(94, 'Shed No Tears (Känn ingen sorg)', 'Oralia Aggus', '2025-01-08'),
(95, 'Black & White & Sex', 'Seka Caughte', '2025-08-23'),
(96, 'Don', 'Yul Kinmond', '2025-01-08'),
(97, 'Vincent & Theo', 'Archibold Klima', '2025-03-20'),
(98, 'Paris Trout', 'Cosme Trayes', '2025-04-09'),
(99, 'Christmas Story, A', 'Ronalda Maudsley', '2025-08-26'),
(100, 'My Way', 'Yolanda Solland', '2025-01-05');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
