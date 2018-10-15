-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 05 oct. 2018 à 16:56
-- Version du serveur :  5.7.21
-- Version de PHP :  7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `create_at`, `category_id`) VALUES
(15, 'Velit et eius enim recusandae quaerat temporibus.', '<p>Et perspiciatis excepturi adipisci ut. Vel doloribus quae rerum deleniti voluptas. Ut minima natus deleniti soluta. Cupiditate vitae reiciendis unde sed quaerat saepe molestiae.</p><p>Et mollitia aspernatur ipsum qui est consequatur. Veritatis aperiam consectetur molestias natus ipsa aspernatur. Ut molestiae dolorem ex esse quia aut.</p><p>Autem sit eligendi cupiditate nam. Sit qui facilis nihil accusamus. Temporibus hic rerum quia non minima ullam soluta.</p><p>Et voluptas occaecati in amet sit et. Non non cum libero esse odit numquam fugit. Nisi fuga eos eos unde soluta est. Quisquam odit doloribus amet natus a labore blanditiis.</p><p>Voluptas dolore quis voluptatum asperiores dolores excepturi. Explicabo voluptas dolores reiciendis est nulla quod vitae.</p>', 'https://lorempixel.com/640/480/?42480', '2018-04-19 18:27:09', 2),
(16, 'Tempore ab id voluptates nesciunt.', '<p>Ab quia ipsam ut qui iste. Deleniti tenetur culpa adipisci nisi enim ipsum magni. Quo optio saepe et hic tempore odit. Fuga autem magni incidunt.</p><p>Nulla asperiores vel ut est similique maxime alias beatae. Iusto nobis aspernatur et ducimus magni. Est culpa ut dolor voluptate.</p><p>Eius iste libero aperiam nulla iure. Laudantium voluptas perspiciatis ut deserunt nihil fuga ratione. Magnam ut quae dolor et repellendus provident sit. Sapiente omnis debitis rerum iusto facilis.</p><p>Id perferendis fuga magni aut et vero nostrum. Iste hic et voluptatum maiores maiores aut. Incidunt provident rerum et et pariatur.</p><p>Sunt beatae quis quibusdam sint accusantium. Et praesentium nulla qui qui cum quam maiores aperiam.</p>', 'https://lorempixel.com/640/480/?81832', '2018-09-08 23:14:49', 1),
(17, 'Eos neque aut a exercitationem quod qui.', '<p>Blanditiis quia aliquam ad sed. Rerum id corrupti voluptatem veniam nulla. Quia dolor sunt id corrupti vitae doloribus. Ut voluptatem laborum omnis non cupiditate sunt atque.</p><p>Officia quia est pariatur quidem doloribus quibusdam quasi. Deserunt rerum voluptas itaque perspiciatis quia pariatur perferendis. Neque et deserunt quia harum rem eum. Accusamus velit et aperiam doloribus.</p><p>Tempore dolorem ut ab nam dolorem minima recusandae repudiandae. Ut voluptas exercitationem iste error quod nihil.</p><p>Vero nam et doloremque illo. Doloremque esse nulla deleniti. Ducimus expedita aperiam minus voluptate. Enim qui ut provident est debitis eum omnis.</p><p>Adipisci consequuntur occaecati eveniet expedita repellendus minus. Voluptatem sequi consectetur aspernatur corrupti. Et amet nisi eaque qui.</p>', 'https://lorempixel.com/640/480/?77934', '2018-06-10 09:04:49', 1),
(18, 'Et minus qui sint.', '<p>Ut eos officiis similique aspernatur est. Et vel doloribus ut culpa consequatur enim. Quasi voluptatem veniam autem distinctio. Quis ut et pariatur et dolores nisi necessitatibus delectus. Rem dignissimos est harum ab.</p><p>Dolor omnis eos dignissimos perspiciatis. Laboriosam error sit deleniti maiores. Architecto aut qui rerum exercitationem. Omnis sint velit saepe consequuntur soluta eos molestiae.</p><p>Explicabo officiis eos inventore fuga unde. Aliquid non enim magni dolore. Autem ipsam accusamus molestiae voluptas et eos.</p><p>Dolores ut nobis delectus. Dolorem quia aut sint. Sit quisquam et quam sit voluptas eius sapiente. Ea deleniti qui veritatis nemo commodi libero.</p><p>Aut voluptate omnis facere est dolor modi similique. Quisquam ut repudiandae ullam veniam nemo dolorum velit rerum. Cum itaque aut nihil consequatur officiis dignissimos. Facilis quo perspiciatis possimus porro.</p>', 'https://lorempixel.com/640/480/?33967', '2018-08-05 19:30:12', 1),
(19, 'Vero odit deleniti hic laudantium et exercitationem voluptas.', '<p>Quibusdam sed expedita ad neque alias. Sunt et enim sed doloremque. Consequatur beatae laboriosam placeat alias modi autem architecto.</p><p>Earum repudiandae corrupti voluptates fugiat fuga expedita quia. Quia voluptatum similique natus accusantium. Consequatur quisquam non velit error et et voluptatem. Est odio non quidem sequi aspernatur eum dolores.</p><p>Incidunt expedita consequuntur est voluptas inventore voluptas in. In enim maiores facilis nisi. Quidem est aliquam laboriosam minima sequi doloremque. Aliquid distinctio ea occaecati reiciendis.</p><p>Tempore occaecati quia aliquid sint earum. Et omnis porro quidem aliquam cum cumque quidem. Suscipit est suscipit itaque aperiam quae.</p><p>Beatae qui porro ut ut. Minus numquam expedita et quae voluptatem exercitationem. Exercitationem libero voluptatibus aut vero. Eveniet natus quae adipisci earum ratione ipsum provident.</p>', 'https://lorempixel.com/640/480/?47586', '2018-08-05 13:39:36', 2),
(20, 'Qui saepe cupiditate ab impedit modi.', '<p>Deleniti aperiam ipsa nobis praesentium. Eaque consequatur impedit atque temporibus facere fugiat repudiandae. Ut similique enim distinctio quaerat voluptatem quia quae cumque.</p><p>Ipsum molestias ut rerum nam vero. Atque enim voluptas sit qui aliquam sit quis. Enim atque vero est vitae. Molestiae officiis quas sunt ut ut.</p><p>Quo qui libero harum autem delectus. Possimus inventore aut debitis rerum consequatur officiis. Perspiciatis earum nihil sunt aut ipsa. Quae saepe iste quaerat harum quia deleniti architecto et.</p><p>Tenetur eos sunt hic vel. Magnam sunt et enim et maiores quidem non tempora. Consectetur et inventore veniam quo nulla.</p><p>Corrupti quia ducimus voluptatum consequatur delectus. Ipsam non ut aspernatur rerum. Id vel rerum rem rerum.</p>', 'https://lorempixel.com/640/480/?34993', '2018-09-05 15:05:12', 2),
(21, 'Autem voluptas perferendis debitis consequatur modi itaque nemo sit.', '<p>Commodi est ullam quos. Natus voluptas ex minus dolores non amet. Quisquam voluptas et et et dolores.</p><p>Molestiae et minus eos et iure fugiat placeat ab. Ipsum facere aut accusamus aspernatur doloribus eum. Laborum aliquid quia quis in.</p><p>Quidem culpa similique provident corrupti ratione. Dolore eaque eum in et tempore vel quas. Sed aut illum sit velit.</p><p>Accusantium eum voluptates voluptates. Debitis error facilis nam consequatur iure et. Nesciunt cum molestias reprehenderit. Id similique placeat voluptatum et nobis culpa veritatis necessitatibus. Et natus autem aut vitae perferendis.</p><p>Deleniti reprehenderit natus id dolorem ut. Exercitationem doloremque totam quidem architecto laborum sunt. Omnis corrupti tempora quaerat aut earum. Neque delectus nostrum fugit autem dolor doloremque. Nulla dolorem qui recusandae voluptatibus et fugiat.</p>', 'https://lorempixel.com/640/480/?41190', '2018-06-12 00:29:36', 2),
(22, 'Quis perspiciatis laborum libero ratione voluptatem minus modi.', '<p>Ullam esse molestias ipsam quasi eveniet nulla similique. Tempora voluptas saepe assumenda recusandae autem autem labore impedit. Adipisci laboriosam eligendi error non ex. Maiores delectus magnam est ullam. Porro libero rerum sapiente et.</p><p>Ducimus voluptatum dicta saepe molestias. Rerum nulla omnis doloribus non. Quibusdam repudiandae quia exercitationem vitae.</p><p>Est facilis maxime dignissimos aut laudantium. Laudantium placeat ea maiores laboriosam. Vel repellat explicabo nostrum eum. Voluptatem vel rem est et similique earum est.</p><p>Error veniam qui fuga ea commodi quas in. Sapiente atque expedita officiis doloribus aspernatur pariatur autem. Est non modi ut molestiae eum non eum. Quisquam qui saepe non autem est cum temporibus.</p><p>Laborum veritatis voluptate pariatur a quas. Velit ipsa vel rem modi. Incidunt laborum eveniet voluptates blanditiis laboriosam. Eum consequatur rerum eum sed est culpa quos sapiente.</p>', 'https://lorempixel.com/640/480/?48983', '2018-06-14 04:31:05', 2),
(23, 'Magni beatae porro vel ut commodi iure alias.', '<p>Sunt est ut voluptatem sapiente aut. Consequatur quos alias omnis quisquam accusamus dolorem voluptatem. Ut assumenda itaque iste quas.</p><p>Et reiciendis omnis ut ut velit ratione. Deserunt qui veniam officia ut qui nulla. Consequatur et molestiae eligendi rerum adipisci. Magni blanditiis sunt nesciunt et eius officia.</p><p>Et corrupti veritatis et rerum. Qui fugiat dolores aperiam alias atque eum iusto quas. Explicabo distinctio voluptatem et accusamus magnam animi laudantium quo.</p><p>Ullam repudiandae voluptas sunt eum ducimus in veritatis. Recusandae non voluptatem dicta ipsa harum sunt. Quibusdam iure est qui unde nihil est dolorem.</p><p>Repellendus sint error quis aut qui voluptatem autem. Ea vel sit placeat aliquam sed doloremque. Libero facere odit quia.</p>', 'https://lorempixel.com/640/480/?13103', '2018-05-03 20:52:57', 3),
(24, 'Et rem molestiae quae sunt reprehenderit vel.', '<p>Libero alias doloribus accusamus provident aliquam non vitae. Qui mollitia ipsam iusto voluptas non aut. Et vel quis id consequatur inventore magnam. Sequi voluptas qui aliquam maxime voluptas vitae.</p><p>Cupiditate autem blanditiis rerum corrupti ipsum ut voluptatum. Voluptates veniam pariatur et. Quidem exercitationem dolores nihil magni.</p><p>Ratione aspernatur totam nemo. Incidunt esse nihil ut rem repudiandae quam placeat molestiae. Placeat et hic beatae a corrupti delectus.</p><p>Aut dolor et impedit natus qui quaerat aliquam. Veritatis saepe dolore vero nostrum et est. Odio modi atque est aut.</p><p>Omnis sit quis labore explicabo eligendi eaque. Quos qui voluptatem provident ea. Aspernatur ut quos minus quae. Dolores ea et enim quidem voluptatem molestiae. Debitis autem at non totam error.</p>', 'https://lorempixel.com/640/480/?57093', '2018-05-06 04:21:28', 3),
(25, 'Ipsa accusantium facere harum.', '<p>Aut deleniti ratione autem. Et enim ipsam nostrum doloribus et beatae illum. Excepturi et quia expedita facere dolores. Quia voluptatem in sed eveniet laboriosam asperiores ut.</p><p>Alias accusamus et sit et molestiae consequatur est. Non hic et sint eius reiciendis ut velit nihil. Quidem aliquid rerum officiis.</p><p>Iusto ut ad sunt maxime. Laudantium aut minus ut qui est quidem. Ut numquam sit eaque et voluptatem. Possimus consequatur consequuntur est eum error.</p><p>Atque incidunt quis eum laboriosam beatae reprehenderit omnis. Eum blanditiis non exercitationem quia. Officia sint eveniet dolorem dolore.</p><p>Illo iure vero laborum adipisci iste dolore. Voluptas sint sint doloremque aut nam et perspiciatis. Sed veritatis iusto perferendis debitis. Nisi non quidem nihil laborum similique quas nesciunt laboriosam.</p>', 'https://lorempixel.com/640/480/?55676', '2018-07-17 00:34:01', 3),
(26, 'Nemo aut laboriosam ea explicabo sed ut.', '<p>Consequatur nobis non et dolores. Sapiente excepturi porro vel qui earum.</p><p>Illo ipsum fuga ullam et iste rerum. Ut architecto ad harum doloribus. Amet quia consequatur aliquid quas. Quos provident dignissimos ut temporibus eius facilis unde.</p><p>Quos tempora magnam tempore minima reprehenderit adipisci. Ratione quidem non quo beatae. Qui praesentium omnis nostrum atque veritatis. Ea quia molestiae aut non cumque nemo. Culpa quibusdam minima sunt mollitia ut.</p><p>Nihil velit eveniet voluptatem iure eveniet. Veritatis dolorum qui vel et mollitia enim et consequatur. Cum non possimus et dolorem velit asperiores. Ullam deleniti consectetur ipsum cumque.</p><p>Aut cupiditate sit harum nulla. Praesentium placeat maxime praesentium et eos. Eligendi ut accusantium sunt nulla aperiam aut porro.</p>', 'https://lorempixel.com/640/480/?87100', '2018-05-19 04:06:17', 3),
(27, 'Test création d\'article', 'Texte a la con', 'http://placehold.it/400x200', '2018-10-03 19:00:47', 2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(1, 'Rem voluptatem unde commodi rerum iste quo dolorem.', 'Sunt excepturi laborum veritatis perspiciatis. Sed assumenda quibusdam nisi ea. Perspiciatis quidem placeat reiciendis aut dolor sit ullam.'),
(2, 'Quidem voluptates dicta in.', 'Ipsam quibusdam et earum velit et. Quo dolore consequuntur qui officiis reprehenderit quia autem. Esse rerum ipsa laboriosam ipsa. Quisquam rem est rerum earum est.'),
(3, 'Sed quo non illo et quis totam.', 'Repudiandae ratione quo id quisquam. Rem aperiam iure voluptatum. Itaque doloribus magnam nostrum dolorem earum voluptatem doloremque.');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(1, 15, 'Capucine Roy', '<p>Dolor sunt rerum est nam. Dolor omnis aperiam hic.</p><p>Deleniti incidunt tempora autem quod ex tempora aut. Ut voluptatibus in vitae sed iusto sed sed maxime. Voluptate soluta commodi aut illum perspiciatis voluptatem.</p>', '2018-04-25 19:06:40'),
(2, 15, 'Gabrielle Legrand', '<p>Odio itaque odit aliquam quidem veniam. Repellendus soluta iste nisi alias. Nisi magnam ipsum error non eius sunt sunt. Omnis modi praesentium ad.</p><p>Quia beatae similique qui tempora molestiae. Voluptatem temporibus non et labore ipsum exercitationem voluptatem. Id nam reprehenderit porro. Dignissimos ut ab dolorem libero. Natus aut omnis incidunt praesentium et temporibus id.</p>', '2018-09-11 07:24:07'),
(3, 15, 'Nathalie Guichard', '<p>Voluptatem qui ut excepturi perferendis eum illo nihil. Eaque placeat rerum non voluptas.</p><p>Qui consequatur ut totam maxime laboriosam modi alias vero. Quae voluptatem et labore. Labore officia magnam sunt velit tenetur. Itaque quod aliquid provident.</p>', '2018-05-24 09:47:27'),
(4, 15, 'Alfred Marie', '<p>Nulla autem neque ut iure temporibus earum. Occaecati commodi tenetur eligendi unde labore ut.</p><p>Aut non pariatur culpa iste numquam provident dolorum. Non temporibus modi modi omnis dolor. Error et et vel consequatur quia provident quis.</p>', '2018-06-22 23:50:59'),
(5, 15, 'Alix Blin', '<p>Ea quia autem eaque vero qui ea porro. Ducimus officiis beatae aut debitis harum deserunt voluptas. Est sit ab explicabo voluptas placeat.</p><p>Expedita et voluptate corrupti in placeat possimus asperiores. Molestiae exercitationem est quos ad quod dicta. Eius at officiis at voluptate est sed enim.</p>', '2018-05-14 02:17:44'),
(6, 15, 'Audrey Voisin', '<p>Molestias laboriosam illo cupiditate dolores. Modi ea harum provident. Assumenda officia culpa quo assumenda.</p><p>Atque officia eveniet provident id repellendus. Id ut quos excepturi velit nam corrupti quia. Sunt et vel quidem in quod libero quisquam. Culpa aut odit enim aut aut.</p>', '2018-08-04 00:31:31'),
(7, 15, 'Marianne Le Collin', '<p>Explicabo et totam inventore incidunt reiciendis tempore. Est sed error est ullam culpa nulla.</p><p>Error dicta voluptatibus saepe hic quae. Odit neque vero id. Sed et nostrum fugiat repellat illum.</p>', '2018-05-17 21:45:29'),
(8, 15, 'Claudine-Christelle Bouvier', '<p>Enim aut iste doloribus sed. Omnis unde quod recusandae sed porro expedita fugit. Nisi porro eos cum illo blanditiis distinctio provident.</p><p>Est non sunt repellendus sint iste qui. Laudantium debitis optio ipsum pariatur.</p>', '2018-06-11 18:12:17'),
(9, 15, 'Grégoire Payet', '<p>Molestias dolores quaerat quis asperiores. Perspiciatis temporibus ut ullam illum aut dolorem. Nemo molestias aliquid minus. Est sed aperiam iusto sequi.</p><p>Dicta quo perspiciatis consequatur sint. Qui illo incidunt saepe earum nemo sunt. Accusamus voluptatem provident laboriosam excepturi autem delectus.</p>', '2018-05-18 10:01:39'),
(10, 16, 'Claude du Seguin', '<p>Id labore expedita sunt accusantium. Ut non illum est doloremque nam et sint. Voluptate animi velit eos magnam sunt. At autem exercitationem cumque quo voluptatem.</p><p>Aperiam commodi ipsa nobis voluptatem. Adipisci illo animi totam minima consectetur quo vel. Est a perspiciatis odit libero facilis. Maxime est unde veniam.</p>', '2018-09-10 01:18:17'),
(11, 16, 'Céline Le Carlier', '<p>Eaque est deserunt sit est perspiciatis sunt. Accusamus corrupti adipisci ea cumque commodi quo quibusdam. Eum minima quia totam placeat dolor ducimus nihil. Officiis qui perferendis nihil esse ut tempore sequi.</p><p>Facilis aut dolorem enim mollitia repudiandae eum. Enim sunt et aliquam a ut inventore autem dolorem. Vel odit quod sint et. Molestiae autem porro molestias officia cum.</p>', '2018-09-20 20:41:28'),
(12, 16, 'Richard Gonzalez', '<p>Rerum ut placeat beatae enim. Deserunt aperiam occaecati rem eius. In rerum commodi quibusdam amet enim enim repellat.</p><p>Qui ratione molestiae consequuntur doloribus voluptas nemo dolores optio. Quisquam omnis voluptatem odit voluptate culpa eum earum. Voluptatem sed esse autem voluptatem.</p>', '2018-09-24 10:02:31'),
(13, 16, 'Alain-Alphonse Bonnin', '<p>Error sit id doloribus provident animi. Qui aut eaque in esse. Molestiae quis corporis exercitationem mollitia cumque eum. Dolorem ipsum tenetur modi laborum ut et.</p><p>Velit voluptatem dolor rerum exercitationem nam ut. Error expedita occaecati suscipit. Minima illo fuga non cupiditate qui. Est rerum quia repudiandae voluptate impedit.</p>', '2018-09-24 14:16:47'),
(14, 16, 'Pénélope Lefort-Teixeira', '<p>Ipsum debitis officiis eos consectetur in doloribus nobis. Excepturi animi est eveniet ducimus voluptates deleniti sapiente aut. Minus at voluptas ab nesciunt ut. Perferendis est non inventore quibusdam.</p><p>Eaque et ad accusamus laudantium in. Et vero officiis maiores. Officia itaque quasi recusandae ipsum. Tenetur laborum dolor pariatur quod non nihil consectetur.</p>', '2018-09-18 01:08:12'),
(15, 17, 'Guillaume du Fontaine', '<p>Delectus sunt aut unde eius odio fuga necessitatibus. Commodi et et voluptas. Natus at omnis voluptas ab et. Cupiditate cumque excepturi earum excepturi aliquid magni.</p><p>Dicta sint consequuntur adipisci rerum voluptates et quae. Ea non similique iure et. Animi atque voluptatem unde aut non.</p>', '2018-06-27 10:56:26'),
(16, 17, 'Augustin Dupont', '<p>Quis voluptate aliquam praesentium ut ut omnis enim. Perferendis illum est ut aut. Atque quia consequuntur perferendis et asperiores quo.</p><p>Qui consequatur nemo sit quos magnam reprehenderit. Quis similique est sunt. Magnam ipsa illo aut tempore rerum consequatur iusto. Non earum magnam voluptates voluptas fugit.</p>', '2018-10-02 19:05:13'),
(17, 17, 'Michelle Laine', '<p>Quidem eaque ut quam ipsa vero ut qui. Inventore saepe sit hic et vero atque.</p><p>Est eligendi et reprehenderit expedita consequatur. Dolore illo saepe nam aut iure natus. Consequatur dolores sit autem odit delectus. Animi quis beatae corporis.</p>', '2018-06-11 10:33:07'),
(18, 17, 'Étienne Gros', '<p>Nulla autem id qui voluptas iure laboriosam non. Tempore nemo sunt qui natus. Blanditiis et et delectus ipsa aut. Est aut mollitia aut ut veritatis aliquam cum dolor.</p><p>Consequatur delectus alias soluta aut sapiente. Sit soluta deserunt quo velit ea nemo nulla. Voluptatem aperiam quis alias quo voluptatem rerum id ullam.</p>', '2018-08-27 00:39:26'),
(19, 17, 'Alfred Vidal', '<p>Sit eligendi nihil veniam consequatur. Voluptatem adipisci distinctio velit. Nesciunt voluptatem aut dolore voluptas molestiae odio. Deserunt tempora nobis qui qui.</p><p>Consequatur commodi consequatur est qui. Quia et nam quae inventore. In vitae quas quos praesentium.</p>', '2018-07-31 18:47:58'),
(20, 17, 'Marguerite Remy-Le Goff', '<p>Aperiam voluptas voluptas sed quos eveniet unde. Quo esse excepturi cupiditate illo ex et inventore. Quae dolorum quaerat quia voluptatem ipsam aut. Vel inventore quia excepturi error explicabo nisi.</p><p>Sit qui in illo vitae cumque. Aut in dignissimos vel dolor nihil iure qui quia. Delectus repudiandae totam tempore odit aut. Exercitationem repudiandae sequi accusamus voluptatum maxime.</p>', '2018-06-11 23:20:50'),
(21, 18, 'Célina Lacombe', '<p>Beatae maiores sequi et cumque sint explicabo ut. Enim asperiores perferendis et libero doloribus ad. Sit dolores exercitationem unde magnam.</p><p>Totam suscipit est quaerat aut magnam ipsam omnis. Illum ullam ea impedit earum architecto eum. Unde commodi ad minima. Magni qui tenetur error nam occaecati et amet consequatur.</p>', '2018-08-22 05:27:32'),
(22, 18, 'Thibault de Riou', '<p>Non necessitatibus aut sint aperiam molestias. Accusamus ullam porro modi rem consequatur ad excepturi. Amet mollitia error autem doloremque. Nulla earum ratione assumenda aut eum nesciunt ea.</p><p>A blanditiis saepe consequatur explicabo qui. Cum dolore voluptatem sed aut amet expedita sint. Pariatur nesciunt omnis quisquam quia aut minus nemo.</p>', '2018-09-25 02:37:44'),
(23, 18, 'Simone de Techer', '<p>Ipsa sint deleniti cumque repellendus laudantium. Quaerat earum illum vero omnis beatae. Voluptas aut non est minus.</p><p>Necessitatibus et voluptatem consequatur velit omnis. Eum et eos perferendis hic. Illo quaerat eligendi officia nisi nisi ipsum. Eveniet saepe voluptatem aut quia enim molestiae. Maxime recusandae quasi et ducimus cumque est alias.</p>', '2018-08-08 09:15:00'),
(24, 18, 'Thomas Gay', '<p>Sint voluptatem at rerum aut aliquam facilis. Inventore beatae accusamus eligendi cumque mollitia. Optio id tenetur non non dolore velit.</p><p>Sequi quae itaque eum accusantium rem quidem. Mollitia voluptatem saepe et non fugit perspiciatis. Quos quasi quas tempore fuga omnis.</p>', '2018-10-01 13:51:19'),
(25, 18, 'Célina Bouchet', '<p>Animi deserunt fugiat voluptatem modi dicta illum et. Eaque reiciendis numquam possimus voluptatem eum delectus eum. Eaque et ea aut ducimus dolor voluptate. Aut tenetur aut ipsa totam aperiam voluptatem cupiditate.</p><p>Perferendis ut dolores est illo dolorem. Perferendis reprehenderit consequatur minima eveniet. Vel odio suscipit quidem voluptatem iure ut. Quos cupiditate commodi earum ipsa omnis libero qui.</p>', '2018-08-11 06:05:16'),
(26, 18, 'Nathalie Le Bailly', '<p>Dolor occaecati distinctio expedita libero aliquid provident dolores. Voluptatum voluptas soluta nostrum dolores dolor tempore.</p><p>Harum et dolores repellendus aut. Ut soluta aut sint dolore dolor eum. Sapiente nulla iure aliquam voluptatum aspernatur.</p>', '2018-09-19 17:02:58'),
(27, 18, 'Vincent Faivre', '<p>Amet mollitia commodi sit nisi. Quaerat omnis consectetur recusandae voluptatem. Maxime quo minus sequi sint sed.</p><p>Sit omnis vel id soluta quibusdam. Similique libero reprehenderit quo sit dolore ipsam beatae. Consequatur quia iure rerum soluta dolorum vero accusantium. Occaecati quos voluptates ipsam quis expedita.</p>', '2018-08-25 19:03:51'),
(28, 18, 'Martine-Lorraine Renault', '<p>Veritatis ratione architecto perferendis eum ipsum accusantium est debitis. Atque omnis et libero a. Itaque nobis omnis alias quod natus ab officiis. Labore aliquid iste aliquid omnis nihil.</p><p>Fuga autem nesciunt non fugit repellat eveniet excepturi non. Eaque autem dolor ut incidunt rerum eius. Libero rem voluptate vel repellat.</p>', '2018-10-01 10:44:28'),
(29, 19, 'Susan Ollivier', '<p>Enim dolor fuga omnis voluptas reprehenderit. Ad placeat illo nostrum ut ullam. Minima optio sit voluptate consequuntur. Quod omnis sint consectetur quia repellat voluptatem.</p><p>Possimus nulla dolorem perspiciatis praesentium nostrum. Laudantium et consequatur praesentium est ut. Dicta dolorem mollitia ad.</p>', '2018-09-20 14:48:46'),
(30, 19, 'Alexandre Legros', '<p>Ipsum occaecati quas labore. Nam id eum cumque et dolorem rerum voluptatem. Veniam sit sunt inventore distinctio. Et tempora laudantium incidunt odio quia.</p><p>Est quis rerum minus. Optio autem illo aliquid porro quae accusamus.</p>', '2018-08-16 08:52:06'),
(31, 19, 'Hortense Daniel-Hardy', '<p>Qui et laudantium aliquid rerum sit consectetur et. Iusto facere deserunt eius aut modi. Veritatis corrupti voluptatem suscipit. Aut possimus quis maiores eveniet ipsa quia officia voluptas.</p><p>Recusandae quam qui aspernatur expedita. Ex ut optio accusantium aut distinctio cupiditate vitae. Nostrum necessitatibus eum laboriosam. Quia sint quae nam occaecati omnis repellendus.</p>', '2018-09-04 22:47:27'),
(32, 19, 'Paulette Sanchez', '<p>Vitae sed odio culpa blanditiis. Amet minus laudantium qui. Adipisci voluptatum excepturi consequatur non aut omnis molestiae.</p><p>Quo consectetur et et quas. Porro tenetur fugiat minima sed velit.</p>', '2018-10-01 03:49:50'),
(33, 20, 'Clémence Lambert', '<p>Debitis est laudantium reprehenderit sint voluptatem. Qui alias sequi velit voluptas alias. Dolore laudantium atque harum error magni nihil id.</p><p>Autem quia ut placeat quo et. Facilis vel molestiae accusantium cum odio sit. Minima ea error nobis ea quos quis aut.</p>', '2018-09-15 09:02:22'),
(34, 20, 'Louis Fabre', '<p>Nesciunt quod est accusantium et rerum qui maiores. Sed dolores dolores fugiat voluptatem omnis amet aut. Exercitationem nihil expedita est veniam doloremque perferendis consequuntur.</p><p>Explicabo incidunt dolorem voluptas. Rem impedit qui sed et repudiandae necessitatibus. Beatae molestiae et blanditiis cupiditate fuga repellat autem harum.</p>', '2018-09-16 17:19:15'),
(35, 20, 'Emmanuelle-Christine Lebrun', '<p>Et aut fugit sit inventore laborum molestiae. Delectus voluptates culpa autem esse. Ipsam dolorem itaque hic non omnis eveniet provident.</p><p>Ab eum sequi dignissimos architecto harum. Suscipit aut dolorem qui sint. Eligendi nam qui iure voluptatem excepturi sunt aut.</p>', '2018-09-14 09:51:24'),
(36, 20, 'Geneviève-Capucine Masse', '<p>Eligendi et ut ducimus est hic expedita voluptas. Iste delectus aspernatur necessitatibus praesentium. Consectetur autem earum optio quia accusamus a sint doloribus. Tempore ducimus accusamus qui ea.</p><p>Voluptate quia est quaerat neque et cumque molestiae. Nobis quos maxime illo veritatis. Asperiores in exercitationem doloremque et vel.</p>', '2018-10-02 14:05:43'),
(37, 20, 'Pierre Lefort', '<p>Quam tempora culpa voluptas earum. Veritatis nihil eius ex architecto ut dolorum odit. Et et quisquam laudantium.</p><p>Suscipit nihil sed aliquam quasi adipisci fugiat. Dolores ipsum corrupti consequatur nostrum neque voluptates illum. Earum laborum vel quia eos.</p>', '2018-09-16 16:31:43'),
(38, 20, 'Michèle Noel', '<p>Animi qui doloribus ipsam sit. Tenetur eos accusamus et sint soluta qui nisi. Modi voluptate omnis enim maxime qui sapiente sed.</p><p>Id praesentium saepe laudantium doloremque atque provident. Ad voluptatem dolore veritatis aspernatur natus beatae. Culpa impedit corrupti ratione. Est natus modi occaecati ut.</p>', '2018-09-08 13:35:53'),
(39, 21, 'Luc Besson', '<p>Laborum fuga dolor recusandae eos. Quasi ipsa vel et illum veritatis ut mollitia. Beatae sed quam voluptatem dicta excepturi et. Modi nam itaque facere maiores qui dolor.</p><p>Est ipsam optio est amet nobis ad eaque voluptatem. Eligendi aliquid excepturi maxime quod non. Esse nesciunt pariatur aut.</p>', '2018-07-24 20:32:10'),
(40, 21, 'Zoé Ruiz', '<p>Reiciendis molestiae consequatur est est sequi reiciendis nisi. Id quia ipsum perferendis excepturi accusantium mollitia minus ea. Voluptatum sed expedita aut iusto id esse eius. Est amet repudiandae perferendis vel.</p><p>Sunt aperiam suscipit adipisci veniam. Quia officia voluptas a praesentium et et. Dolorem in repellendus officia ex aut architecto.</p>', '2018-07-05 01:29:24'),
(41, 21, 'Antoinette-Dominique Moulin', '<p>Nihil delectus reiciendis sequi laboriosam autem necessitatibus. Excepturi nesciunt eos incidunt quos cupiditate eos placeat neque. Eos quidem iusto repudiandae vitae in porro. Iure omnis aut dolor sapiente.</p><p>Sit nihil error vel est expedita et. Ut harum exercitationem id placeat similique cum vero.</p>', '2018-07-07 07:51:11'),
(42, 21, 'Marie-Élisabeth Le Goff', '<p>Quis ab enim odit ut. Sed perferendis adipisci ex quaerat officia. Molestias ullam esse enim sit.</p><p>Deleniti iste numquam neque unde. Praesentium reiciendis iure vel. Non libero est sit dolorem.</p>', '2018-08-27 17:29:02'),
(43, 21, 'Charles Morin', '<p>Sunt tempora eum vel voluptas. Molestias nostrum harum illo vitae nam. Aut sint rerum eum voluptatum culpa quaerat ducimus. Consequatur commodi voluptatem optio atque dolor quis.</p><p>Non vero qui quaerat laboriosam rerum reiciendis. Vero repellendus debitis omnis voluptatem at sit laborum. Sed fugit mollitia velit deserunt. Praesentium repellendus qui et aut consequatur. Pariatur facere assumenda sunt inventore ut in omnis.</p>', '2018-09-14 02:59:12'),
(44, 21, 'Marcel Martineau', '<p>Dolore fuga debitis voluptatem laborum aspernatur. Sunt commodi mollitia libero. Voluptas tenetur accusantium quo suscipit magni earum.</p><p>Ratione magni quo officia eligendi. Nisi non enim voluptate est ut quia. Rerum excepturi quis perspiciatis.</p>', '2018-08-17 18:21:35'),
(45, 21, 'Olivier de Guillou', '<p>Saepe consequatur esse perferendis delectus. Doloribus ab accusantium aspernatur non et debitis nobis. Est officiis quis temporibus aliquid magnam quo perferendis totam. Sit esse autem voluptatibus sit placeat.</p><p>Non incidunt eos qui perspiciatis. Eos eaque fuga ipsum. Ducimus officiis iusto totam deleniti ad ut distinctio.</p>', '2018-09-26 10:30:22'),
(46, 21, 'Matthieu Rodriguez-Marques', '<p>Numquam reiciendis molestiae vel maiores voluptatibus voluptatibus. Est blanditiis mollitia eum et nulla dolores eius nesciunt. Voluptatem qui et qui est voluptates et. Magnam ut reiciendis ullam voluptate unde eligendi autem. Iste libero quo soluta dolores error quibusdam repellendus.</p><p>Error dolor ullam voluptatem odio incidunt eum. Sed illo quas nihil facere iste sunt. Qui porro tempora eveniet sapiente velit aperiam esse. Laudantium neque unde qui voluptatem.</p>', '2018-09-07 12:53:45'),
(47, 21, 'Brigitte Riviere', '<p>Distinctio aperiam non dolor ex accusantium velit et sit. Accusamus dolores molestias distinctio ullam enim fugit rem.</p><p>Quas quo velit labore dolorem. Ab aut iste cumque sunt quasi. Aut odio dolores cupiditate at occaecati.</p>', '2018-07-04 09:13:19'),
(48, 22, 'Alexandrie du Baron', '<p>Atque modi ducimus qui qui quia est. Et neque eaque earum porro. Voluptas architecto dolorem consequatur est tempora praesentium. Dolores est debitis laboriosam.</p><p>Aut ullam est necessitatibus vel quisquam fuga et. Aperiam odio rerum illum aliquid libero. Molestias in eos deleniti ad aut. Tempore et culpa et aut non. Soluta qui accusantium placeat dolores.</p>', '2018-07-29 05:13:51'),
(49, 22, 'Guy Simon-Joubert', '<p>Dolorem neque deserunt laboriosam fugiat non accusamus qui. Qui porro illum repellat quasi. Tenetur distinctio inventore qui ut. Nobis ipsam nulla ea aut est voluptates nisi error.</p><p>Vero repudiandae iusto illum sit labore blanditiis. Qui et voluptates et aut vitae laborum. Alias quia fuga enim omnis reiciendis exercitationem enim.</p>', '2018-07-10 20:33:32'),
(50, 22, 'Célina Lambert', '<p>Expedita molestiae tempore adipisci quis delectus. Ex velit laborum omnis quis explicabo autem. Laboriosam a dolorem culpa earum voluptates.</p><p>Consequuntur voluptate aut quibusdam qui vero laborum quae. Hic sequi similique sequi. Corporis consequatur deleniti soluta ad assumenda soluta.</p>', '2018-08-14 13:35:11'),
(51, 22, 'Gilles Ollivier', '<p>Pariatur iste molestias labore ut atque excepturi dolorum sit. Non sapiente dolor deserunt eos non esse tempore.</p><p>Et rem saepe totam ut eos fuga aliquid. Saepe illo a consequatur deleniti qui reiciendis velit. Et quia cupiditate odio velit iure. Sit vel et qui deserunt eaque dolore et.</p>', '2018-07-12 23:57:11'),
(52, 22, 'Matthieu Schmitt', '<p>Porro ea odio voluptas possimus iusto quasi blanditiis fuga. Non dolor in unde alias. Inventore corporis vitae quia rerum perspiciatis nulla quas. Qui sunt ullam earum officia ab excepturi quos. Aut omnis aut sit fugit voluptas quas.</p><p>Itaque suscipit cumque et velit dolore est rem. Temporibus et ipsa laborum quisquam eos. Maiores beatae perferendis qui suscipit non.</p>', '2018-07-02 20:52:31'),
(53, 22, 'Michel Couturier', '<p>Asperiores aut temporibus exercitationem ipsa est voluptatem qui. Dolorum omnis eveniet veritatis perferendis est voluptas iure.</p><p>Hic et cupiditate odio nesciunt ducimus suscipit totam. Sed commodi ut repellat voluptatem voluptas. Itaque maiores consequuntur rerum et voluptatem.</p>', '2018-06-24 20:40:08'),
(54, 23, 'Antoine-Marc Wagner', '<p>Voluptatem corrupti est veniam quam recusandae. Voluptatem deserunt voluptatem et aut velit sunt sit est. Et cumque sunt expedita omnis.</p><p>Aliquam tempore doloremque perspiciatis voluptates quae. Minima ipsam est ab occaecati. Asperiores est accusantium saepe. Est aperiam impedit doloribus repellat et beatae.</p>', '2018-08-18 09:25:29'),
(55, 23, 'Valentine Schmitt', '<p>Doloribus vitae possimus quos enim aut voluptatem dolore. Odit ab harum omnis architecto quos. Et quos sit ullam optio dolorem.</p><p>Quo sunt aliquid eaque praesentium voluptatem suscipit aperiam eaque. Est labore dolores numquam. Modi illum et voluptatem impedit pariatur harum.</p>', '2018-06-01 11:20:09'),
(56, 23, 'Émile Thomas', '<p>Eos repudiandae et iste fugit debitis. Quod sit fuga et assumenda. Iure tempore temporibus quisquam quaerat.</p><p>Atque quis in non quibusdam earum quidem pariatur. Voluptatum alias natus omnis illo dolor. Eaque laudantium illo velit voluptas. Facilis voluptatem porro est est et.</p>', '2018-09-24 04:11:01'),
(57, 23, 'Guillaume Langlois', '<p>Excepturi eaque quis alias cupiditate accusamus. Vel enim quisquam vero voluptas modi quo blanditiis. Non ex laboriosam culpa reiciendis et excepturi sed aperiam. Et est in neque assumenda modi adipisci. Illum quasi possimus dolorem voluptas sapiente aliquam sunt omnis.</p><p>Explicabo ut aut et ut. Et totam quis repudiandae modi autem. Aut officia nisi iusto ut dolores repellat temporibus voluptatem.</p>', '2018-05-11 22:34:58'),
(58, 23, 'Nicole Maillet', '<p>Animi dolor eveniet veritatis neque aut. Porro qui iusto sed recusandae sed quis distinctio. Nulla totam sequi sequi natus laudantium.</p><p>Quae fuga delectus et incidunt molestias nobis quo. Officia rem harum eos ut quo. Cumque minus et voluptatem sed accusamus et omnis. Et et quo officia eius.</p>', '2018-06-17 14:40:42'),
(59, 23, 'André Le Raymond', '<p>Nihil itaque vero ratione et. Pariatur totam dicta incidunt ad ut nulla. Voluptatem molestiae est ut et eum est. Sed eaque ex incidunt ex sapiente totam labore.</p><p>Ducimus odit voluptatem inventore error inventore facilis eligendi. Magni minus quia vel sunt at ut. Natus nostrum nulla eos et ea possimus nihil dolorem. Dolores dolorum nisi iusto voluptas fugit praesentium fugiat.</p>', '2018-07-11 10:15:20'),
(60, 23, 'Adélaïde Bernier', '<p>Qui recusandae esse voluptatem voluptatibus. Nihil provident sit magnam occaecati quasi soluta. Enim sit et placeat eius expedita sed.</p><p>Cupiditate odit officiis non minima est. Voluptas non quidem ab reiciendis voluptatibus ut. Voluptatem modi ullam sit dolore labore ut eum est.</p>', '2018-08-23 09:12:10'),
(61, 24, 'Lucas Perrier', '<p>Quas nulla qui vero ex et. Nesciunt iusto dolor est odio aliquam.</p><p>Placeat qui tempore rerum praesentium. Quis velit a voluptatem. Vero veniam quia voluptatum.</p>', '2018-08-27 06:39:19'),
(62, 24, 'Matthieu Pages-Leger', '<p>Nihil soluta molestias est optio ipsum nam. Accusantium aliquam quidem nemo laborum repellendus dolores et. Ullam quia culpa autem voluptas voluptas ut asperiores. Fuga sunt ut ipsa consequatur tempora.</p><p>Consequuntur molestias tempore eum quidem. Reiciendis sed et minus aut hic repellendus labore. Molestiae enim id eos dolorem dolore vel quis.</p>', '2018-08-21 21:35:50'),
(63, 24, 'Charlotte Dupre', '<p>Et assumenda explicabo dolorem expedita ullam occaecati. Sed fugiat saepe dolore tenetur dolor qui provident. At tenetur omnis exercitationem deserunt saepe numquam. Ea ea quidem sequi voluptas est.</p><p>Quis nam sint impedit quia sunt labore. Laudantium consequatur cum est suscipit. Totam corporis iure eligendi voluptas harum.</p>', '2018-08-10 05:05:01'),
(64, 24, 'Bernard Guibert', '<p>Omnis ut impedit totam. In molestiae debitis aut delectus autem possimus odio est. Accusamus ex tempora omnis nesciunt. Autem illum ut sint est.</p><p>Voluptatum omnis aut ratione sed. Consequuntur harum minima iure est. Sed inventore ipsa veniam et velit blanditiis voluptas consequuntur. Enim enim perferendis ipsam distinctio. Alias tempora voluptatem in consequatur reiciendis quia iure debitis.</p>', '2018-07-20 22:56:01'),
(65, 24, 'Océane Gaillard', '<p>Et voluptatem sunt autem nam esse vel aut suscipit. Expedita quasi iusto non cupiditate aut voluptatibus sit. Voluptatibus quo et eos quia eos. Officia et optio aut omnis a quas.</p><p>Non ratione deleniti nesciunt facere explicabo ipsam ut. Possimus consequatur repellat inventore ut eum. Tenetur qui ipsam ut optio cupiditate neque. Quia quia omnis ut voluptas odio distinctio nostrum quia.</p>', '2018-07-16 06:09:27'),
(66, 25, 'Jeanne Duval', '<p>In earum placeat at sunt perspiciatis voluptatibus. Ipsam dolorem neque ut veritatis sit sit. Sit dolorum voluptatem dolores quas porro aut voluptas dolores.</p><p>Et optio eum iste laudantium dolorem. Omnis fugit rem non adipisci consequatur officia. Et eius optio corporis. Nobis necessitatibus et et quia sunt quo.</p>', '2018-08-14 19:44:25'),
(67, 25, 'Tristan Pinto', '<p>Assumenda quis quas ut et illum esse. Quisquam quidem minus enim. Esse dicta sequi occaecati alias et quasi. Velit ipsum omnis velit sequi suscipit.</p><p>Accusantium enim reiciendis ullam voluptates. Libero quia voluptatem iste vel. Qui eos fugit est repellendus. Est provident sed et.</p>', '2018-09-01 02:57:30'),
(68, 25, 'Matthieu Jacquot', '<p>Sequi sit veritatis ex iure sapiente eaque sequi ipsam. Ea eos ipsum molestias ad ad. Sit ut qui et. Voluptates aperiam vel explicabo omnis odio voluptatem.</p><p>Quas nostrum odit et et neque repudiandae ad. Sequi autem accusamus saepe est. Minus quas temporibus eos totam aut est.</p>', '2018-07-31 10:42:05'),
(69, 25, 'Henriette Remy', '<p>Ut accusamus fugit voluptates error. Ducimus consectetur suscipit omnis asperiores qui. Cumque minima numquam voluptate dolorum odit labore.</p><p>Voluptate repellat quidem voluptatem laborum provident corrupti. Minima ipsam molestias aut unde nihil libero ullam laudantium. Consequatur est dolore et voluptate est voluptas. Et et ut vitae nobis quia neque.</p>', '2018-09-03 02:01:46'),
(70, 25, 'Rémy Hamon', '<p>Eaque aut dolores unde eaque dolores minus rerum. Ut sed aut neque rerum placeat nesciunt. Deleniti voluptatem harum quia maiores. Rerum voluptatum non ea molestiae.</p><p>Consequatur quidem consequatur similique molestiae. Facilis a et qui dolores alias in. Fuga unde nesciunt quas.</p>', '2018-10-01 07:53:35'),
(71, 25, 'Roger Menard', '<p>Voluptatem minus quis vel omnis temporibus sunt est. Saepe rerum aut aut sunt et aut. Sint molestias quas eum eos quia. Aut sunt sunt molestias quasi nostrum aut.</p><p>Rem ut nulla fugit in enim voluptatem debitis quidem. Mollitia voluptatem nisi dicta fugit. Ipsam perferendis et ratione et excepturi rerum architecto.</p>', '2018-08-03 22:18:54'),
(72, 25, 'Victoire Salmon', '<p>Modi veniam tempora voluptatibus voluptatem rerum impedit minus. Quaerat odit alias repudiandae quia expedita. Rerum a ea quasi magnam aut.</p><p>Molestias quos quae velit consectetur perspiciatis quis. Cum reprehenderit autem nulla doloribus. Cupiditate atque eum molestiae nobis. Perferendis aspernatur ut alias labore.</p>', '2018-08-03 21:58:49'),
(73, 26, 'Victoire Bernier', '<p>Voluptatem in rem ratione aut est illum. Modi impedit in voluptatum quibusdam omnis in neque vitae. Ducimus vel ea earum sed quo.</p><p>Quia dicta minima libero iusto commodi quae nihil. Quasi et sit cupiditate voluptas. Autem officia sit officiis fugit aut nisi earum blanditiis.</p>', '2018-09-04 13:12:58'),
(74, 26, 'Susan Gosselin', '<p>Perspiciatis qui eveniet quia beatae. Ad praesentium in recusandae dolorum. Maiores est eos odio fuga aut velit libero. Non et et voluptate consequatur.</p><p>Consequatur debitis impedit et ut. Nostrum qui nemo sed sunt dolorem impedit. Distinctio et nesciunt neque et dolores ex. Vel in enim tenetur saepe qui. Iste sequi cupiditate nemo.</p>', '2018-06-13 10:31:42'),
(75, 26, 'Aurélie Langlois', '<p>Laboriosam et eum perspiciatis libero sapiente voluptatem ut illo. Aut minus optio voluptatem deserunt. Nihil aliquam dolores dolor est porro illum non. Sed dicta quisquam quasi praesentium.</p><p>Sit facere quae et autem ut facere. Odit maiores unde officiis recusandae incidunt dignissimos. Culpa inventore quisquam quo amet recusandae sint inventore deserunt. Mollitia nihil suscipit velit itaque vel ipsa adipisci.</p>', '2018-09-09 22:40:05'),
(76, 26, 'Tristan de Duhamel', '<p>Delectus adipisci soluta quia officia iure mollitia. Quas omnis vel accusamus. Repellendus ut perspiciatis et est.</p><p>Quia expedita debitis non voluptas soluta et omnis assumenda. Eum dolorum aliquid quo dolorem sit magni consequatur enim. Modi autem occaecati quisquam quaerat.</p>', '2018-07-04 22:25:58'),
(77, 26, 'Sabine-Colette Normand', '<p>Aut voluptas accusamus quod maxime odio delectus quis. Perspiciatis blanditiis voluptatum vero exercitationem est ratione dolore. Debitis at quae molestiae accusantium magnam laborum necessitatibus.</p><p>Magnam ducimus quis commodi aut veniam. Sit voluptatum harum rerum temporibus maiores nobis.</p>', '2018-07-18 19:28:07'),
(78, 26, 'Roger Huet', '<p>Quidem architecto corporis impedit et nam veritatis. Laboriosam ut et dolor facere expedita. Eos ad ea repellendus ipsum.</p><p>Cum est quas ea sint. Sit nam in beatae. Tempore iusto quo suscipit qui eveniet sed quia.</p>', '2018-07-11 20:48:03'),
(79, 15, 'Rafa', 'Cette article est nul !!!!', '2018-10-05 16:42:42');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180924183222'),
('20181003174847'),
('20181003175744'),
('20181005145205');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`) VALUES
(4, 'rafa@symfo.com', 'rafa', '$2y$13$S20/fSp5lcNUC2C8S0845emdnWXSywdgs.QiRhNTyI1m5JUFlPNam'),
(5, 'toto@symfo.com', 'rafinha', '$2y$13$7v94petAgOWgTh/gdGikbOWBDHYoEb3lnWt9drufUhXXl9chs74u.'),
(6, 'tata@gmail.com', 'tata', '$2y$13$kosSuOduplCQqGVu7w0IUOtCAeB3jTJbAx3hY8FbO7WAH2ONg5V8u');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
