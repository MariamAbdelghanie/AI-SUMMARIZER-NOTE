-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2025 at 10:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freesum`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(10) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `summary` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `user_id`, `file_name`, `file_type`, `uploaded_at`, `summary`, `created_at`) VALUES
(1, 3, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-27 20:20:36', NULL, '2025-05-28 13:57:39'),
(2, 3, 'Hafta11 (1).docx', 'docx', '2025-05-27 20:49:49', NULL, '2025-05-28 13:57:39'),
(3, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 08:48:13', 'python: can\'t open file \'C:\\\\xampp\\\\htdocs\\\\summarizer\\\\php/summarize_file.py\': [Errno 2] No such file or directory\n', '2025-05-28 13:57:39'),
(4, 1, 'summ3.pdf', 'pdf', '2025-05-28 08:48:35', 'python: can\'t open file \'C:\\\\xampp\\\\htdocs\\\\summarizer\\\\php/summarize_file.py\': [Errno 2] No such file or directory\n', '2025-05-28 13:57:39'),
(5, 1, 'hafta5.docx', 'docx', '2025-05-28 08:50:09', 'python: can\'t open file \'C:\\\\xampp\\\\htdocs\\\\summarizer\\\\php/summarize_file.py\': [Errno 2] No such file or directory\n', '2025-05-28 13:57:39'),
(6, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 09:06:38', 'python: can\'t open file \'C:\\\\xampp\\\\htdocs\\\\summarizer\\\\php/summarize_file.py\': [Errno 2] No such file or directory\n', '2025-05-28 13:57:39'),
(7, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 09:19:03', 'Python was not found; run without arguments to install from the Microsoft Store, or disable this shortcut from Settings > Apps > Advanced app settings > App execution aliases.\n', '2025-05-28 13:57:39'),
(8, 1, 'Hafta11 (1).docx', 'docx', '2025-05-28 09:19:59', 'Python was not found; run without arguments to install from the Microsoft Store, or disable this shortcut from Settings > Apps > Advanced app settings > App execution aliases.\n', '2025-05-28 13:57:39'),
(9, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:05:45', 'Python was not found; run without arguments to install from the Microsoft Store, or disable this shortcut from Settings > Apps > Advanced app settings > App execution aliases.\n', '2025-05-28 13:57:39'),
(10, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:23:03', '[nltk_data] Downloading package punkt to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package punkt is already up-to-date!\n[nltk_data] Downloading package stopwords to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package stopwords is already up-to-date!\nError summarizing text: \n**********************************************************************\n  Resource [93mpunkt_tab[0m not found.\n  Please use the NLTK Downloader to obtain the resource:\n\n  [31m>>> import nltk\n  >>> nltk.download(\'punkt_tab\')\n  [0m\n  For more information see: https://www.nltk.org/data.html\n\n  Attempted to load [93mtokenizers/punkt_tab/english/[0m\n\n  Searched in:\n    - \'C:\\\\Users\\\\hp/nltk_data\'\n    - \'C:\\\\Users\\\\hp\\\\AppData\\\\Local\\\\Programs\\\\Python\\\\Python312\\\\nltk_data\'\n    - \'C:\\\\Users\\\\hp\\\\AppData\\\\Local\\\\Programs\\\\Python\\\\Python312\\\\share\\\\nltk_data\'\n    - \'C:\\\\Users\\\\hp\\\\AppData\\\\Local\\\\Programs\\\\Python\\\\Python312\\\\lib\\\\nltk_data\'\n    - \'C:\\\\Users\\\\hp\\\\AppData\\\\Roaming\\\\nltk_data\'\n    - \'C:\\\\nltk_data\'\n    - \'D:\\\\nltk_data\'\n    - \'E:\\\\nltk_data\'\n**********************************************************************\n\n', '2025-05-28 13:57:39'),
(11, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:27:35', '[nltk_data] Downloading package punkt to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package punkt is already up-to-date!\n[nltk_data] Downloading package stopwords to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package stopwords is already up-to-date!\nTraceback (most recent call last):\n  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 90, in <module>\n    main()\n  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 87, in main\n    print(summary)\n  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode\n    return codecs.charmap_encode(input,self.errors,encoding_table)[0]\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\nUnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 57: character maps to <undefined>\n', '2025-05-28 13:57:39'),
(12, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:28:10', '[nltk_data] Downloading package punkt to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package punkt is already up-to-date!\n[nltk_data] Downloading package stopwords to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package stopwords is already up-to-date!\nTraceback (most recent call last):\n  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 90, in <module>\n    main()\n  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 87, in main\n    print(summary)\n  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode\n    return codecs.charmap_encode(input,self.errors,encoding_table)[0]\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\nUnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 57: character maps to <undefined>\n', '2025-05-28 13:57:39'),
(13, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:33:41', '[nltk_data] Downloading package punkt to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package punkt is already up-to-date!\n[nltk_data] Downloading package punkt_tab to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package punkt_tab is already up-to-date!\n[nltk_data] Downloading package stopwords to\n[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...\n[nltk_data]   Package stopwords is already up-to-date!\nTraceback (most recent call last):\n  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 86, in <module>\n    print(summary)\n  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode\n    return codecs.charmap_encode(input,self.errors,encoding_table)[0]\n           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\nUnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>\n', '2025-05-28 13:57:39'),
(14, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 10:38:37', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>', '2025-05-28 13:57:39'),
(15, 1, '10_Diğer Flip-flop Türleri ve Saat Girişli Ardışıl Devrelerin Analizi.pdf', 'pdf', '2025-05-28 10:46:23', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\uf097\' in position 0: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 0: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 0: character maps to <undefined>', '2025-05-28 13:57:39'),
(16, 1, '07_BCD Toplayıcı_Büyüklük Karşılaştırıcısı_Kod Çözücüler.pdf', 'pdf', '2025-05-28 11:01:36', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>', '2025-05-28 14:01:36'),
(17, 1, 'hafta5 (7).docx', 'docx', '2025-05-28 11:12:04', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\u0131\' in position 26: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\u0131\' in position 26: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\u0131\' in position 26: character maps to <undefined>', '2025-05-28 14:12:04'),
(18, 1, '06_Kombinezonal Lojik, Toplama ve Çıkarma Devreleri.pdf', 'pdf', '2025-05-28 11:24:24', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>', '2025-05-28 14:24:24'),
(19, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 11:25:39', '[nltk_data] Downloading package punkt to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt is already up-to-date![nltk_data] Downloading package punkt_tab to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package punkt_tab is already up-to-date![nltk_data] Downloading package stopwords to[nltk_data]     C:\\Users\\hp\\AppData\\Roaming\\nltk_data...[nltk_data]   Package stopwords is already up-to-date!Encoding error: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>. Using fallback encoding.Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 88, in main    print(summary.encode(\'utf-8\').decode(\'utf-8\', errors=\'replace\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>During handling of the above exception, another exception occurred:Traceback (most recent call last):  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 94, in <module>    main()  File \"C:\\xampp\\htdocs\\summarizer/summarize_file.py\", line 91, in main    print(summary.encode(\'utf-8\', errors=\'replace\').decode(\'utf-8\'))  File \"C:\\Users\\hp\\AppData\\Local\\Programs\\Python\\Python312\\Lib\\encodings\\cp1252.py\", line 19, in encode    return codecs.charmap_encode(input,self.errors,encoding_table)[0]           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^UnicodeEncodeError: \'charmap\' codec can\'t encode character \'\\uf097\' in position 59: character maps to <undefined>', '2025-05-28 14:25:39'),
(20, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 11:37:45', '\'PYTHONIOENCODING\' is not recognized as an internal or external command,\noperable program or batch file.\n', '2025-05-28 14:37:45'),
(21, 1, '10_Diğer Flip-flop Türleri ve Saat Girişli Ardışıl Devrelerin Analizi.pdf', 'pdf', '2025-05-28 11:42:48', 'The system cannot find the path specified.\n', '2025-05-28 14:42:48'),
(22, 1, 'summ3.pdf', 'pdf', '2025-05-28 11:56:56', 'No sentences found in the text.\n', '2025-05-28 14:56:56'),
(23, 1, '08_Kodlayıcılar Demultiplexer ve Multiplexer.pdf', 'pdf', '2025-05-28 11:57:18', 'Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması -Örnek\nAşağıda verilen Boole fonksiyonunu uygun birMultiplexer ile\ngerçekleyin . Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması –Örnek (Devam)\nBusoruda Multiplexer’in çalışmasını birörnekle açıklayacak\nolursak ;ABC =110iken 6’ıncı verigirişi seçilmiş olurve6’ıncı\nveri girişi çıkışa aktarılır .Yani, Fçıkışı, D’nin değerinden\nbağımsız olarak 1’eeşitolur. Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması –Örnek (Devam)\nBusoruda Multiplexer’in çalışmasını birörnekle açıklayacak\nolursak ;xy=00iken 0’ıncı verigirişi seçilmiş olurve0’ıncı\nverigirişi çıkışa aktarılır .Yani, Fçıkışı z’ye eşitolur.z=0\niseçıkış 0,z=1iseçıkış 1olur.\n', '2025-05-28 14:57:18'),
(24, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-28 12:00:55', 'Üyesi Onur ÇAKIRGÖZ\nonurcakirgoz@bartin.edu.tr\n\nANAHAT\nGiriş\nRasgele Erişim Belleği (RAM –Random Access Memory)\nİkili Depolama Hücresi\nRAM\'in Mantıksal Yapısı\nKesişen Kod Çözme (Coincident Decoding)\nSRAM –DRAM Karşılaştırması\nAdres Çoklama (Address Multiplexing)\nGiriş\nBirbellek birimi, büyük miktarda ikilibilgi depolayabilen bir\nhücre topluluğudur . 6 Transistörlü SRAM Hücresi \n\nDRAM Hücresi \n\nAdres Çoklama (Address Multiplexing)\nBüyük kapasiteleri nedeniyle, DRAM\'lerin adres kod\nçözme işlemleri ikiboyutlu birdizide düzenlenir vedaha\nbüyük bellekler genellikle birden çokdiziye sahiptir . İkili Depolama Hücresi\nmkelime vekelime başına nbitlik birRAM\'in dahili\nyapısı, m*nikilidepolama hücresinden vetektek\nkelimeleri seçmek içinilgili kod çözme devrelerinden\noluşur .\n', '2025-05-28 15:00:55'),
(25, 1, '02_FonksiyonİfadeŞekilleriveDiğerLojikİşlemler (2).pdf', 'pdf', '2025-05-28 12:10:26', 'Örneğin, aşağıdaki tabloda f1fonksiyonunun 1olduğu\nsatırlar bulunur .001,100 ve111 kombinasyonlarına\nkarşılık düşen minterimler sırasıyla x’y’z, xy’z’ vexyz\nşeklindedir .Dolayısıyla,\nf1boole fonksiyonu :\n\nKanonik ve Standart Biçimler\nBoole cebrinin 1.önemli özelliği :Herboole fonksiyonu\nminterimlerin toplamı olarak ifade edilebilir . Şimdi birboole fonksiyonunun tümleyenini göz önüne\nalalım .Buamaçla, doğruluk tablosunda fonksiyonunun 0\nolduğu her bir kombinasyona ilişkin minterimler\nVEYA’lanır :\nf1’fonksiyonunun tümleyeni alınırsa\nf1fonksiyonu elde edilir :\n\nKanonik ve Standart Biçimler\nBoole cebrinin 2.önemli özelliği :Herboole fonksiyonu\nmaksterimlerin çarpımı olarak ifade edilebilir . Üyesi Onur ÇAKIRGÖZ\nonurcakirgoz@bartin.edu.tr\n\nANAHAT\nKanonik ve Standart Biçimler\nKanonik Biçimde Gösterim\nMinterimlerin Toplamı \nMaksterimlerin Çarpımı\nKanonik Yapılar Arasında Dönüşüm\nStandart Biçimde Gösterim\nÇarpımların Toplamı\nToplamların Çarpımı\nStandart Olmayan Biçim\nDiğer Lojik İşlemler\nKanonik ve Standart Biçimler\nİkilideğişkenler, örneğin x,normal (x)veya tümleyen\nformunda (x’)bulunurlar .\n', '2025-05-28 15:10:26'),
(26, 1, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-29 13:32:58', 'Üyesi Onur ÇAKIRGÖZ\nonurcakirgoz@bartin.edu.tr\n\nANAHAT\nGiriş\nRasgele Erişim Belleği (RAM –Random Access Memory)\nİkili Depolama Hücresi\nRAM\'in Mantıksal Yapısı\nKesişen Kod Çözme (Coincident Decoding)\nSRAM –DRAM Karşılaştırması\nAdres Çoklama (Address Multiplexing)\nGiriş\nBirbellek birimi, büyük miktarda ikilibilgi depolayabilen bir\nhücre topluluğudur . 6 Transistörlü SRAM Hücresi \n\nDRAM Hücresi \n\nAdres Çoklama (Address Multiplexing)\nBüyük kapasiteleri nedeniyle, DRAM\'lerin adres kod\nçözme işlemleri ikiboyutlu birdizide düzenlenir vedaha\nbüyük bellekler genellikle birden çokdiziye sahiptir . İkili Depolama Hücresi\nmkelime vekelime başına nbitlik birRAM\'in dahili\nyapısı, m*nikilidepolama hücresinden vetektek\nkelimeleri seçmek içinilgili kod çözme devrelerinden\noluşur .\n', '2025-05-29 16:32:58'),
(27, 4, 'diferansiyel_ders_notu.pdf', 'pdf', '2025-05-29 16:52:26', '67\n68\n69\n70\n71\n72\n73\n74\n75\n76\n77\n78\n79\n80\n81\n82\n83\n84\n85\n86\n87\n88\n89\n90\n91\n92\n93\n94\n95\n96\n97\n98\n99\n100\n101\n102\n', '2025-05-29 19:52:26'),
(28, 4, 'diferansiyel_ders_notu.pdf', 'pdf', '2025-05-29 16:52:29', '67\n68\n69\n70\n71\n72\n73\n74\n75\n76\n77\n78\n79\n80\n81\n82\n83\n84\n85\n86\n87\n88\n89\n90\n91\n92\n93\n94\n95\n96\n97\n98\n99\n100\n101\n102\n', '2025-05-29 19:52:29'),
(29, 5, 'diferansiyel_ders_notu.pdf', 'pdf', '2025-05-29 20:04:27', 'Failed to generate summary. The file may not contain readable text.', '2025-05-29 23:04:27'),
(30, 6, '09_Senkron Ardışıl Lojik, Mandallar ve Flip-floplar.pdf', 'pdf', '2025-05-29 20:12:54', 'Failed to generate summary. The file may not contain readable text.', '2025-05-29 23:12:54'),
(31, 6, '09_Senkron Ardışıl Lojik, Mandallar ve Flip-floplar.pdf', 'pdf', '2025-05-29 20:12:57', 'Failed to generate summary. The file may not contain readable text.', '2025-05-29 23:12:57'),
(32, 6, '12_Rasgele Erişim Belleği RAM.pdf', 'pdf', '2025-05-29 20:14:12', 'Failed to generate summary. The file may not contain readable text.', '2025-05-29 23:14:12'),
(33, 1, '10_Diğer Flip-flop Türleri ve Saat Girişli Ardışıl Devrelerin Analizi.pdf', 'pdf', '2025-05-29 20:15:39', 'Failed to generate summary. The file may not contain readable text.', '2025-05-29 23:15:39'),
(34, 1, '08_Kodlayıcılar Demultiplexer ve Multiplexer.pdf', 'pdf', '2025-05-29 20:16:23', 'Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması -Örnek\nAşağıda verilen Boole fonksiyonunu uygun birMultiplexer ile\ngerçekleyin . Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması –Örnek (Devam)\nBusoruda Multiplexer’in çalışmasını birörnekle açıklayacak\nolursak ;ABC =110iken 6’ıncı verigirişi seçilmiş olurve6’ıncı\nveri girişi çıkışa aktarılır .Yani, Fçıkışı, D’nin değerinden\nbağımsız olarak 1’eeşitolur. Multiplexer’ler ile Boole Fonksiyonlarının \nUygulanması –Örnek (Devam)\nBusoruda Multiplexer’in çalışmasını birörnekle açıklayacak\nolursak ;xy=00iken 0’ıncı verigirişi seçilmiş olurve0’ıncı\nverigirişi çıkışa aktarılır .Yani, Fçıkışı z’ye eşitolur.z=0\niseçıkış 0,z=1iseçıkış 1olur.\n', '2025-05-29 23:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Mariam', 'mariemyaseer534@gmail.com', '$2y$10$BCZ5Ndp/oQlRXh.7.rzR9us77lRndVSNSVyeO242uL5srZ/8c..V2', '2025-05-21 13:52:00'),
(2, 'Mohamed', 'mohamedbc02@gmail.com', '$2y$10$rDFkxdvLtrCu3zee7eVOs.0sunMllNemewMVrQSqEGdb2pTsHmlpS', '2025-05-26 11:20:47'),
(3, 'nour', 'nour22@gmail.com', '$2y$10$hD..MFGaNM8ZqszkbUpzIebpw3hrFmmjbyCEyPV6sH9fGb4ZsxBDm', '2025-05-27 20:19:00'),
(4, 'Ali', 'Ali2000@gmail.com', '$2y$10$CYo5DdRykLZHPNJM5Xrd.enL/xSESgpI6Ol/vSyyCXcdaSz/TPERa', '2025-05-29 16:51:16'),
(5, 'Squareroot', 'ganer4everxx@gmail.com', '$2y$10$iKU.xM5ddD9PVL/LtoDO/.dfaZbIg8cvKC8EgYegJ3njkRJwS5rI.', '2025-05-29 20:03:06'),
(6, 'Fatma', 'fatma20@gmail.com', '$2y$10$3n9fjsqwA4WC4K4Kz3StoeRQaLuMVJD5tTM/q8074kVyYgzjfhZHe', '2025-05-29 20:11:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
