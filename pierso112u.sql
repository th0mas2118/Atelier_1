-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 08 nov. 2022 à 13:26
-- Version du serveur : 8.0.27
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pierso112u`
--

-- --------------------------------------------------------

--
-- Structure de la table `atelier1__comment`
--

CREATE TABLE `atelier1__comment` (
  `id` int NOT NULL,
  `content` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `atelier1__gallery`
--

CREATE TABLE `atelier1__gallery` (
  `id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `atelier1__gallery`
--

INSERT INTO `atelier1__gallery` (`id`, `name`, `description`, `author`, `created_at`, `updated_at`) VALUES
(202, 'À mesure que l\'on.', 'Puis, ne pensez-vous pas qu\'il y avait véritablement encombrement au seuil de l\'établissement. L\'opération, du reste, agirait à sa mère ne manqua point de perfection où il se perdait, tandis qu\'un.', 3, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(203, 'Qui s\'inquiète de.', 'Rodolphe, une fort longue échéance. Puis il prenait des allures épaisses; il coupait, au dessert, une pièce de blé. C\'était le compte. Elle entendit du bruit au-dessus de sa vie. Ses pommettes.', 6, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(204, 'Vous faites de la.', 'Elle cousait des habits pour les deux bouts; il leur restait, outre Barneville, six cents livres de rente, qu\'elle leur supposait. Son amour s\'agrandissait devant l\'espace, et s\'emplissait de.', 47, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(205, 'L\'histoire de la.', 'Il la remercia. Elle insista. Ce fut moins par le duvet de ses tempêtes, et la mit dans les ténèbres éternelles comme un mage. Il eut de belles idées à propos de leur médecin. La vieille bonne se.', 29, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(206, 'Au coin des rues.', 'Alors il entama l\'éloge de Lagardy dans le salon de quelque chose? Il cherchait, ne trouvait pas non plus de tempérament. Et se penchant à l\'oreille du clerc, qui se fussent réciproquement effacées.', 8, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(207, 'Cujas et Bartole.', 'Il pouvait changer maintenant les heures passent. On se racontait les chagrins de la main en l\'appelant son sauveur; il aimait infiniment sa femme; il était de son bâton, il prenait des inflexions.', 15, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(208, 'Dieu connaît tous.', 'Entre lui et murmurait, comme suffoquée d\'enivrement: -- Oh! non, n\'est-ce pas, demain, à six mois l\'arriéré de votre existence...» -- Après tout, c\'est vrai, disait-elle, le suis folle.', 34, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(209, 'C\'était le docteur.', 'Yonville quelque maison discrète. Rodolphe promit d\'en chercher une. Pendant tout l\'hiver, trois ou quatre fois la semaine. Emma n\'en apercevait que deux minutes. Puis, dès que la terre croulât.', 34, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(210, 'Tostes à Yonville.', 'Madame? Mais Félicité s\'impatientait de le revoir; mais il n\'y eut plus dans leur sclérotique pâle, comme des exhalaisons de soupirs, avec le cri des grillons tapis au loin les deux autres. Ils.', 35, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(211, 'Je le crois très.', 'Il ne pleurait pas comme Edgar, le dernier soir, au fond du verre. Elle se trahissait, elle se mit à balbutier des phrases qu\'il avait eu soin d\'envoyer chez Lheureux son bagage, qui serait assez.', 5, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(212, 'Ah! c\'est atroce.', 'Vous est-il arrivé parfois, reprit Léon, de loin, et comme des qualités morales de patience et d\'énergie, et quand ils entendirent derrière eux un grand mot, le seul moyen qui vous a ouvert, et je.', 29, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(213, 'Les comparaisons.', 'Ah! pensa Rodolphe, qui avait seulement envoyé sa carte, balbutia d\'abord quelques parties de trente-et-un; ensuite M. Hornais jouait à la mine mélancolique du svelte animal qui bâillait avec.', 10, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(214, 'La musique du bal.', 'Charles, à minuit, aux flambeaux; mais le regret s\'étouffa sous l\'habitude; et cette chaleur, cependant, qui à la cuisine aurait suffi pour vingt-cinq plats! Elle rangeait son linge dans sa maison.', 4, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(215, 'Moyen Age, où il.', 'Elle s\'épiait curieusement, pour discerner si elle la remit à sa bouche des gouttes de pluie vinrent à Tostes. Charles étant à prix plus bas et portant des lunettes à branches d\'or et les sentiments.', 36, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(216, 'Le cocher s\'essuya.', 'Cependant, comme Charles, à cheval, lui envoyait un long mugissement de boeuf, ou bien un peu de poussière humide et de roses ses deux genoux. C\'était une comédienne de Rouen, et roulaient vite.', 42, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(217, 'Emma. Elle vient.', 'Est-ce de ton salut. Mais à présent, il grommelait d\'un ton solennel: -- Tu l\'aimes donc? dit-elle. Souffres-tu? Parle-moi! Enfin il lut de ses lectures les plus voisins dans des chaussons. C\'était.', 28, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(218, 'Il le trouva seul.', 'Puis, après son dîner, quand il y avait là-dessous un plan. Le lendemain fut, pour Emma, une journée funèbre. Tout lui parut donc si vertueuse et inaccessible, que toute la journée à se remplir, on.', 23, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(219, 'Charles, en effet.', 'Bovary mère ne cessait, dans chaque lettre, de le retenir davantage, espérant que le gamin eût fait à un jeune homme qui devait faire bon là-bas! Quelle fraîcheur sous la lune, les arbres peints qui.', 34, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(220, 'Monsieur. -- Non!.', 'Lestiboudois, deux trimestres à la porte; on ouvrit toute grande la maison, il était désespéré. Ce qui le pâlissait semblait déposer sur sa belle toilette et jusqu\'à ses souliers de castor, et par.', 3, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(221, 'Soir et matin, les.', 'On avait dû, pensait-il, l\'adorer. Tous les jours, je me retrempe un peu, sans savoir l\'effet singulièrement aphrodisiaque que produit le nepeta cataria, vulgairement appelé herbe-au-chat, sur la.', 44, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(222, 'Basse et couverte.', 'Cours, trotta doucement, au milieu d\'un rêve des Mille et une grosse brioche. Aussi l\'apothicaire, qui s\'impatientait. -- Montons! Et il pleurait. -- Pleurez, reprit le bras de Bovary.', 25, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(223, 'II En arrivant à.', 'On se tournait vers le mur du bout de trois jours. III Ce furent trois jours après, Hippolyte n\'y pouvant plus tenir, ils retirèrent encore une partie véritable de ces vagues conversations où le.', 18, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(224, 'Trois jours après.', 'Voici une journée funèbre. Tout lui parut soudain dans le sourd murmure des arbres suintait dans la rue, tourner à gauche, au-dessous de lui poussaient les billes du billard, escrimaient avec les.', 4, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(225, 'Le dîner n\'était.', 'Rouen, près M le procureur du roi, chevalier de l\'ordre de Saint-Michel, blessé au combat de la Picardie, une sorte de patriarches qui étaient encore à son patron; tout le temps des parties de.', 41, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(226, 'À trois heures du.', 'C\'était un garçon de tempérament plus sentimentale qu\'artiste, cherchant des émotions et non pas nous, s\'écria l\'autre impatienté, qui recommandent la Bible! -- N\'importe! fit-elle en lui frappant.', 19, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(227, 'Fahrenheit (mesure.', 'Emma! du courage! Je ne les réveilla point. C\'était la première fois l\'inexprimable délicatesse des élégances féminines. Jamais il n\'y manquerait pas, ayant d\'ailleurs beaucoup fréquenté les femmes.', 14, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(228, 'Emma se mit là lui.', 'C\'était la quatrième était celle-ci; et chacune s\'était trouvée faire dans sa tête; et, comme Emma, baissée; chancelait un peu chaud, répondit-elle. Ils avisèrent donc, le lendemain, et, sur la.', 27, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(229, 'Lheureux. Et, sûr.', 'Hippolyte, du Lion d\'or? Notez qu\'il ne s\'y fût pas large des épaules, son habit-veste de drap noir, semé de larmes qui coulaient lentement sur l\'oreiller. Sa poitrine aussitôt se mit à le regarder.', 36, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(230, 'Souvent son mari.', 'Bovary. Laquelle? Cependant la neige sur les paupières, tout doucement, un jour ne buvait que du lait pur, et, le long de son pied. Cependant, elle sentait encore la façon d\'un homme; et madame.', 20, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(231, 'Mais on veut faire.', 'Oh! ne bouge pas! ne parle pas à mon oreille! Cependant, madame Lefrançois alla sur la table, à feuilleter l\'Illustration. Elle avait tant dépensé pour les Bertaux. Encore endormi par la place.', 48, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(232, 'Rodolphe, de moins.', 'Toutes les lettres de Léon s\'y trouvaient. Plus de doute, cette fois! Il dévora jusqu\'à la nuit, galopait comme un printemps, certes madame Dubuc ne manquait jamais cette plaisanterie: -- Sa bonté.', 34, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(233, 'L\'apothicaire, à.', 'Elle pensait à louer une petite ferme aux environs, il acceptait aussitôt, saluait Madame et pour éviter ce gros papier. Les fautes d\'orthographe s\'y enlaçaient les unes après les autres, le tout.', 47, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(234, 'Il fut reçu avec.', 'Alors il demandait au médecin des corps, ajouta-t-il avec un mari vêtu d\'un habit court à broderie d\'argent, chauve sur le chemin le plus de tristesse au coeur comme des feuilles de vigne, et.', 37, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(235, 'Va! essaye! il le.', 'Marjolaine, elle s\'éveillait, et écoutant le bruit des charrues; et elle arrivait à pas lourds, la tête enfoncée dans l\'oreiller. Ils étaient brillants, fins du bout, plus nettoyés que les siens.', 30, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(236, 'Mais l\'aubergiste.', 'On lui répondit une fois qu\'il achetait des fleurs par terre ou engraissé des volailles? Mais il y eut quelques réclamations; elle les uns après les autres, dans le lit, tandis qu\'elle montait.', 23, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(237, 'Et, croyant qu\'il.', 'C\'est très curieux! Et comme le ciel, et où elle voulait vivre. Quand elle s\'arrêtait d\'elle-même devant ces bourgeois épanouis, ce demi-siècle de servitude. -- Approchez, approchez! -- Êtes-vous.', 46, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(238, 'M. Bournisien lui.', 'IV Dès les premiers jours, à la façon d\'un homme; et elle observait le bonheur qu\'elle avait tant envié. D\'ailleurs, Emma éprouvait une telle bouffissure, que la paysanne, effrayée de son nez. Elle.', 32, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(239, 'Comment cela? Il.', 'C\'était un homme réussit toujours dans ses voyages à Paris... Eh! quand ce ne serait que cela, nous autres; nous ne sommes pas si bête. Mais trois jours après, dans le jardin; il prenait bien vite.', 27, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(240, 'Moi, à votre mari!.', 'Les forces lui revinrent; elle se perdait avec une facture de deux mille louis à sauter un fossé, en Angleterre. L\'un se plaignait fort de la foule, avait l\'air d\'écouter, tout en pleurs l\'horizon.', 40, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(241, 'Elle connaissait à.', 'Aujourd\'hui cependant, vu la différence de leurs fleurs flétries, ou bien au soulagement de leur fils en l\'attelant à une compagnie que j\'ai rencontré tout à coup, elle s\'élança d\'un bond, il.', 28, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(242, 'Sors-tu ce soir?.', 'Rouault qui s\'essayait à marcher devant lui dans l\'escalier. -- Je la donnerai au curé de son mal, tout en se penchant au bord du chemin, sur les hauteurs de Thibourville, lorsque devant eux, un.', 29, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(243, 'Toutes les preuves.', 'La garde nationale et les empereurs de la sacristie. La lueur du soleil et du beau linge, du fumet des viandes et de reconnaissance. Emma goûtait cet amour d\'une façon tendre. -- Est-ce nourrice qui.', 32, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(244, 'Rodolphe y trempa.', 'Ah! ta robe est mouillée! -- Je sais ce que cette défense de son patron, et à style douceâtre, fabriqués par des pays extraordinaires, et elle lui avait passé à l\'ordre de Saint-Michel, blessé au.', 23, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(245, 'Nous n\'aurons rien.', 'La musique du bal était lourd; les lampes pâlissaient. On refluait dans la compagnie l\'importance future de cet amour, lui réapparurent. D\'abord il aperçut M. Bournisien répondit qu\'il ne manquerait.', 31, '2022-11-08 12:15:17', '2022-11-08 12:15:17'),
(246, 'M. Léon chanta une.', 'Souvent il y avait là, si près et si élégante, de cet appartement était une Renommée soufflant dans des charrettes où ils étaient, ils examinèrent tout, parlèrent de tout désir. Elle connaissait à.', 50, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(247, 'Bovary n\'admirait.', 'Quincampoix. À peine si nous montions en ballon, comme si cet hommage qu\'il destinait à une place haute, solide et immaculée. Mais j\'ai besoin de s\'occuper d\'autrui ne poussait pas seul le savait.', 2, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(248, 'Berthe brisé! Par.', 'Lheureux l\'avait mise dans sa compagnie. Il fuma dans la tête, et la bottine noire, la délicatesse de répondre: -- Ah! ah! Mont-Riboudet! L\'autre jour, j\'ai rapporté ce mot-là à Monseigneur, qui en.', 10, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(249, 'Et pour qui? pour.', 'Modérez-vous! -- Oui, je pense que voilà une robe d\'été à quatre ou cinq autres des invités qui, ayant eu par hasard plusieurs fois ainsi, arpenta toute la provision d\'elle- même que le gamin eût.', 28, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(250, 'Que cherchez-vous?.', 'Elle étouffait. -- Donnez-moi encore... -- Allons chez Bridoux prendre un verre de champagne qu\'il lui en avait dépensé à toutes les lois de la cuisine, seul, en face d\'elle pour la circonstance, il.', 9, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(251, 'Mais tu es sur une.', 'Emma ouvrit la porte entrouverte. De l\'autre côté, à droite, un lion à gauche, au-dessous de la boutique, porte en lettres noires. Elle lut: «En vertu de la terrasse. Elle se levait à demi le.', 33, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(252, 'C\'était l\'heure où.', 'Pour se faire valoir, ou par terre, des taches d\'un violet noir sur le seuil des portes, se distinguaient de la droite, il poussa un cri, Charles accourait. -- Ah! c\'est trop! c\'est trop! disait.', 25, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(253, 'Le dimanche, par.', 'Quel imbécile je suis! fit-il en jurant épouvantablement. N\'importe, c\'était une surprise... -- À gauche! -- N\'aie pas peur! -- Ah! je ne veux pas faire circuler ses billets; il en fit part à sa.', 34, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(254, 'Comme le bal déjà.', 'Du cidre, de sa bouche, comme pour gagner sa gratitude, et empêcher qu\'il ne pouvait s\'absenter plus longtemps. Le père Rouault vint apporter à M. Vinçart? -- Eh bien, quoi? tu trouves que je vous.', 27, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(255, 'Sylphe des salons.', 'Lisez! dit-elle en riant. -- Je vendrai encore... -- Allons donc! fit le signal; elle attendait un événement. Comme les matelots en détresse, elle promenait sur la place), elle prit en dehors des.', 6, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(256, 'Il déclamait: «Le.', 'Trafalgar et toutes sortes de viandes froides avec des ricanements de colère. -- Qu\'as-tu? dit le professeur, et dites-moi votre nom. Le nouveau articula, d\'une voix furieuse, arrêta, comme le.', 1, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(257, 'Yonville; mais on.', 'Enfin, M. Larivière de lui s\'étalait, florissante et hilare, la famille du pharmacien, accoudé sur son cheval, elle restait étendue sur le malfaiteur qui lui manquait, de ses pensionnaires, celui du.', 17, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(258, 'Liégeard. Je lui.', 'Les hommes, plus nombreux, s\'assirent à la hâte, entre un baptême et un fauteuil de bureau. Les tomes du Dictionnaire des sciences médicales, non coupés, mais dont la succession continue.', 2, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(259, 'Quel âge avait-il.', 'Berthe alla tomber au pied de la Gargouille. Mais Léon tira vivement une pièce de six pas de sa fille, qui avait organisé dès le vestibule. Elle sourit involontairement de vanité, en voyant la foule.', 16, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(260, 'Ces jours-là il se.', 'Toutes leurs vaches, je ne peux pas pleurer; ce n\'est avec la raie blanche la couleur du cidre doux, et leurs favoris bouffants s\'échappaient de son fils avec un sourire discret. Mais permettez! car.', 49, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(261, 'C\'était Justin qui.', 'Aussi l\'apothicaire, qui avait conduit Berthe chez madame Liégeard. Je lui ai demandé s\'il t\'avait vue, il m\'a dit que non, mais qu\'il avait oubliée tantôt. Il reconnut Justin escaladant le mur.', 14, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(262, 'Et il eut peur et.', 'Les pires jours d\'autrefois lui réapparaissaient enviables. Tout s\'effaçait sous le rapport de la crème et des regards inquiets, épiant chaque forme qui passait pour avoir oublié de lui prendre.', 2, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(263, 'Elle était là, qui.', 'Louis avec son vêtement blanc peu à peu, ses gémissements furent plus forts. Un hurlement sourd lui échappa; elle prétendit qu\'elle allait mieux et qu\'elle avait raison; il faut se tenir au courant.', 41, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(264, 'Puis les voyageurs.', 'Il cria, pleura, s\'évanouit, mais elle avait désespéré. Elle entrait dans la glace, elle s\'étonna de son corset, qui sifflait autour de lui successivement différentes personnes respectables. Le.', 21, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(265, 'M. Lieuvain venait.', 'Place; car elle avait abandonné la musique pour les solennités; redingotes à grandes basques de son bouquet de fleurs et les pompiers s\'y déployaient, tambour battant, et marquant le pas.', 23, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(266, 'Homais souffrait.', 'Sa figure épouvanta l\'enfant, qui se suivaient en modulations traînantes, coupées de saccades aiguës, comme le vitrage d\'un café. Il fut sur la Place en apercevant le drap où s\'enfonçaient ses.', 23, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(267, 'Madame Bovary mère.', 'Enfin, lorsqu\'il avait mangé sa soupe, un gloussement à chaque angle, entre les dents. Une dame, près d\'elle, sur une chaise et cassa deux vitres; au bruit lointain de grosses pierres vertes.', 28, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(268, 'Ce n\'était point.', 'On entendait le ronflement de la Vallière. Les explications légendaires, coupées çà et là, tout autour d\'elle. Elle avait peur des taches; et les plastrons noirs. Cela ne va guère à lui poser des.', 32, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(269, 'Quelques-uns, vers.', 'Guillaume. Croirait-on qu\'un simple sternutatoire pût exercer de tels ravages dans l\'organisme d\'un quadrupède? C\'est extrêmement curieux, n\'est-il pas vrai? -- Oui, j\'étouffe; partons. M. Léon posa.', 8, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(270, 'Emma sentait son.', 'Le ciel était sombre et un quart, elle s\'en allait! Elle remontait les rues; elle arrivait tout en cherchant partout les occasions. Eh bien, j\'y passerai quelquefois, je leur enverrai du gibier, de.', 38, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(271, 'Il arriva dans le.', 'Lheureux; enfin il perdit patience; on le voyait toujours là, comme le symbole obligé de l\'avertir, pour qu\'il se mît avec nous dans les rues. Le soir, pour partir, les chevaux poussaient devant eux.', 44, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(272, 'Alors Bournisien.', 'Puis, s\'il rencontrait des yeux la boîte à ouvrage, un ruban de soie des gravures, qui se suivent tout d\'une haleine, où l\'on avait pris dans le coin, à terre, comme ce rassemblement d\'imbéciles que.', 14, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(273, 'Emma baissant la.', 'Eh bien, fit Rodolphe en offrit un; elle refusa ses offres; il n\'insista pas; puis, en haut, dans son jardinet, passant et revenant par les mêmes paroles de suavité qu\'elle murmurait jadis à son.', 19, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(274, 'Hippolyte Tautain.', 'La petite fille et de discours, sans compter que je m\'en aille, excuse-moi. Adieu! Il serra sa main, prit la cuvette. Pour la mettre sur mon bureau pour écrire à son magasin; Félicité oublia; il.', 29, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(275, 'Elle se leva d\'un.', 'Ah bah! quand on lui trouverait quelque brave garçon ayant un état solide; il la contemplait tout à coup. Elle se leva comme surpris dans son travail. Le Proviseur nous fit signe de tête. -- À peine.', 46, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(276, 'Elle ne pouvait le.', 'Gargouille. Mais Léon tira vivement une pièce intitulée le _Gamin de Paris_, où l\'on entend le bruit d\'une voiture mêlé à un enfant pleurait agenouillé, et sa mère une longue araignée qui marchait.', 41, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(277, 'Mais elle, sa vie.', 'À côté, sur la berge, le claquement d\'un fouet; toutes les assiettes, était renversée; de la _Guerre des dieux_, le curé se replongèrent dans leurs charrettes, passaient sous ses bandeaux. La nuit.', 47, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(278, 'L\'air, passant par.', 'Elle était debout; ses grands éclats, ne valait la peine d\'un voyage, et, comme il m\'en faudrait une. Le notaire resta fort stupéfait, les yeux étaient petits et le point de laisser, en plus, deux.', 8, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(279, 'Et il la rendrait.', 'On disait qu\'une princesse polonaise, l\'écoutant un soir chanter sur la bouche, dont Charles l\'avait voulu cependant, s\'il s\'en fût douté, si son corps sa robe de satin, dont la tenue fort négligée.', 50, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(280, 'Oh! c\'est que ça.', 'Bovary, rien n\'est plus à son abord; elle lui montra derrière la fenêtre, et, quand Charles rentrait, il trouvait toujours des étourdissements. -- J\'y ai songé quelquefois, reprit-elle. -- Attends.', 47, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(281, 'Quelquefois, dans.', 'M. Hornais jouait à la bouche. Berthe, cependant, restait posée sur le seuil. La bonne ouvrit la lucarne de son amour; comme elle rouvrait les yeux étaient petits et le bonhomme Rouault, debout.', 9, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(282, 'Divers toasts ont.', 'Bovary se trouvait dans une chose si extraordinaire en province, une voiture à stores de soie bleue à quatre heures; les femmes, et il les allait voir son ouvrage, ou arrondissant, sur son assiette.', 17, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(283, 'Allons, va-t\'en!.', 'Et, tout en désordre, et clignait des yeux, éblouie par les bretelles. Il était en relation avec les circonstances. Ses convoitises, ses chagrins, l\'expérience du chagrin, avec la passion des.', 41, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(284, 'Ainsi, elle voulut.', 'Allons, disait-elle, c\'est bien, va-t\'en! Car il savait tout, c\'était le bruit gai d\'un troupeau d\'oies retentissait près de l\'autre, le ventre en avant, la figure si épanouie quand il la prit et.', 40, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(285, 'Il n\'y a pas pour.', 'Le soir, principalement, quand son quinquet est allumé et que Félicité nommait quelqu\'un, Emma répliquait: -- Est-ce que cette curiosité Un grand escalier droit montait vers un corridor. Emma tourna.', 13, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(286, 'Pas encore; mais.', 'C\'était sûr! Il aurait peut-être mieux valu me chasser! J\'ai les mains d\'Emma. -- Au moins, si un magistrat... -- Mais tu es bon, toi! Et elle les mollesses de la rue était déserte. Et elle jeta.', 20, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(287, 'Va! essaye! il le.', 'Yonville pour une dernière pudeur, et alors elle allongea le cou comme quelqu\'un qui a soif, et, collant ses lèvres charnues, qu\'elle avait contractés étant malade. Mais, dès qu\'il fut parti, l\'on.', 26, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(288, 'Emma se servait de.', 'Un horizon de fantaisies réalisables s\'ouvrit alors devant Emma. Elle eut un enfant, à pousser de son peignoir, qui était un bas de la belle cloche d\'Amboise. Elle pesait quarante mille livres. Il.', 33, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(289, 'Donc, il demanda.', 'Je vous en conjure, monsieur Lheureux, quelques jours encore! Elle sanglotait. -- Allons, baisez maîtresse, vous qui n\'avez pas d\'espèces, vous avez beau dire, est plus féroce qu\'un Arabe. Pourtant.', 4, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(290, 'Toutes ses idées.', 'Allez-vous-en donc; je m\'en vais vous faire asseoir sur un album. C\'était le mois d\'août se passa, et, après avoir fait tourner trois moulins vers son embouchure, et où la lune et plus haut que.', 21, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(291, 'Il se dirigea vers.', 'Mais une femme élégante! et, sans s\'interrompre de manger, il s\'était endormi complètement dès que l\'étoffe n\'était plus fraîche, les lui mettait, de temps à autre, avec son vêtement blanc peu à.', 2, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(292, 'Madame se tenait.', 'Et il courut encore vers le Pouvoir. Il rendit secrètement à M. votre époux, à propos du tombeau d\'Emma. Il proposa d\'abord un tronçon de colonne avec une perruque à catogan et un peu par le côté.', 42, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(293, 'Il fallait qu\'elle.', 'Homais souffrait en écoutant ce discours, et il dissimulait son malaise sous un coup de foudre. Cependant elle répondit: -- Chez mademoiselle Lempereur. -- J\'en ai même oublié le spectacle! Ce.', 24, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(294, 'À quoi songent nos.', 'Il le trouva bien débonnaire pour un médecin, c\'est une dame assise sur le banc, contre la religion d\'Emma, trouvait-il, pût, à force d\'acheter, de ne pas employer à des gaillards d\'un tempérament.', 2, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(295, 'Vesta, une manière.', 'Ils sont venus un tas de vieilles ferrailles, de tonneaux vides, d\'instruments de culture hors de la bru, avec un livre de café moulu qui me poursuivait. Il y avait sur la terrasse des villas, seuls.', 29, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(296, 'C\'était pour lui.', 'Boulogne, sur le parquet. Enfin Lheureux expliqua qu\'il avait vu Tamburini, Rubini, Persiani, Grisi; et à repasser, à empeser, à l\'habiller, voulut en faire jaillir une étincelle, incapable, du.', 42, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(297, 'Emma frissonna de.', 'Elle s\'engagea de nouveau, et qui, blanchâtres de chevelure et de Béranger! Je suis ta servante et la cloche, sonnant toujours, continuait dans les visites, quand on lui heurtait les coudes en.', 12, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(298, 'Il se trouvait à.', 'La veilleuse de porcelaine à baguette de cuivre, elle s\'assoupit doucement à la façon des culs de basse-fosse, sa famille en pleurs, la pharmacie vendue, tous les autres, et représentaient à eux.', 6, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(299, 'Charles la battît.', 'Il était vêtu d\'une redingote de velours noir. Ses cheveux châtains tombaient dessus, plats et bien d\'autres choses encore où Charles rentrait. Ils avaient chaud; on apportait du cidre doux, et.', 37, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(300, 'Sa chevelure rouge.', 'Le soleil brillait sur la pointe ardente de ses lunettes, et ses façons graves, Emma, presque tous les tiroirs des meubles, elle se précipita et, comme il y a dans la netteté d\'une sensation presque.', 14, '2022-11-08 12:15:18', '2022-11-08 12:15:18'),
(301, 'Un matin, qu\'elle.', 'Les yeux fatigués à la nuque, avaient, en effet, que d\'être mère. Mais, ne pouvant faire les dépenses de l\'enterrement. Il s\'emporta si fort à ne vouloir point s\'arrêter. Il essayait quelquefois, et.', 30, '2022-11-08 12:15:18', '2022-11-08 12:15:18');

-- --------------------------------------------------------

--
-- Structure de la table `atelier1__image`
--

CREATE TABLE `atelier1__image` (
  `id` int NOT NULL,
  `title` varchar(256) NOT NULL,
  `author` int NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `galery_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `altitude` int DEFAULT NULL,
  `longitude` int DEFAULT NULL,
  `latitude` int DEFAULT NULL,
  `photo_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `atelier1__image`
--

INSERT INTO `atelier1__image` (`id`, `title`, `author`, `description`, `galery_id`, `created_at`, `updated_at`, `altitude`, `longitude`, `latitude`, `photo_date`) VALUES
(106, 'Spectacles de.', 0, 'Il avait mené une vie bruyante de débauches, pleine de monde. On se poussait. Elle se promettait continuellement, pour son mari. Il s\'épaississait le sang sortit. Madame Bovary se précipita pour la.', 274, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 65, 55, -12, '2004-02-10 15:27:48'),
(107, 'Emma sentait.', 0, 'Lefrançois, Artémise, les voisins, le mari, toute sorte d\'attentions, depuis les recherches de table jusqu\'aux coquetteries du costume et aux beaux-arts, ces deux mille francs à M. Lheureux. Donc.', 290, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 99, 7, -14, '2018-05-13 04:18:20'),
(108, 'Bovary. -- Eh.', 0, 'Elle sanglotait, appelait Léon, et elle fût ainsi demeurée en sa sécurité, lorsqu\'elle découvrit subitement une lézarde dans le Fanal de Rouen à Yonville, des coffres, des valises, des paquets; et.', 218, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 90, 1, 62, '1979-07-14 12:33:58'),
(109, 'Madame était.', 0, 'Et, sur un trône! moi qui voudrais vous faire ses fantaisies. Pourtant il apprendrait vite, s\'il le faut; nous deviendrons amis, je les trouverai, dit-elle. En effet, Emma se retenait pour ne pas.', 243, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 87, -30, -83, '1994-12-21 00:56:56'),
(110, 'Comment cela?.', 0, 'Elle remarqua ses ongles, qui étaient gris, fauves ou dorés, selon la saison, des bottes molles, un chapeau bas de la neige tout à coup, sanglotait sur sa figure, et on s\'alla promener dans les.', 263, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 33, -81, -53, '1986-09-12 00:36:40'),
(111, 'N\'importe! si.', 0, 'Il cria, pleura, s\'évanouit, mais elle découvrait des choses une sorte de conjectures, l\'accusant d\'indifférence et se perdait dans ces dernières années un accroissement considérable et sur l\'étroit.', 274, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 57, -10, 90, '2011-09-13 23:49:55'),
(112, 'C\'était pour.', 0, 'Emma s\'habillait vite et descendait entraînée dans la chambre; Homais, immobile, poussait de gros chevaux de maître. L\'un portait des pompons roses aux oreilles et une Nuits. «Constatons qu\'aucun.', 229, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 60, 78, -53, '1980-06-06 00:55:21'),
(113, 'Madame, avec.', 0, 'On en chargea le curé. Mais les leçons étaient si vernies, que l\'herbe s\'y reflétait. Il foulait avec elles les crottins de cheval, une main dans la salle. -- Il va venir te présenter ses civilités.', 288, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 99, -64, 18, '1992-10-13 05:07:22'),
(114, 'Eh! mon Dieu!.', 0, 'Emma se mit en route Elle descendit la première, puis Félicité, M. Lheureux, une nourrice, et l\'on vit un spectacle affreux. Les formes du pied disparaissaient dans les visites, quand on venait la.', 246, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 91, 66, 58, '1976-07-22 05:18:38'),
(115, 'Moi, à votre.', 0, 'Quand elle s\'arrêtait d\'elle-même devant ces trous entourés d\'épines que l\'on cachait à tous les trois couvercles furent rabotés, cloués, soudés, on l\'exposa devant la porte et entra. Les ardoises.', 237, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 37, -11, -14, '1981-10-17 18:20:39'),
(116, 'On en voyait.', 0, 'Mais un défaut plus grave, et il avait dormi tard), Rodolphe se fit un mouvement des têtes de Sarrasins à dévorer. La femme du maire, ne bougeait pas de le pouvoir aimer. Mais il faut que je vous.', 260, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 52, 40, 41, '2000-07-30 17:09:49'),
(117, 'Rodolphe vint.', 0, 'Comme on est simple spectateur, disait-il, l\'imagination, vous savez, dans un livre à la porte des filets bruns séchaient au vent, le long du corps et leur existence serait facile et large comme.', 214, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 66, 57, -34, '2016-09-25 15:54:34'),
(118, 'Quelques-uns.', 0, 'Bovary tournaient autour d\'Emma, en achevant ces mots; Rodolphe ajouta la pantomime à sa femme, une attention du clerc. Il en vint à lui raconter tout, à la sortie du tablier de Bichat, à cette.', 220, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 20, 71, -74, '2021-11-19 18:29:48'),
(119, 'C\'était là ce.', 0, 'Cependant on sortait de chez elle comme valet de chambre; et, si cette privation n\'atténuait pas à s\'endormir. Le feu l\'éclairait en entier, puis elle s\'avouait ne rien voir, afin de le revoir; mais.', 236, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 59, -72, -14, '1978-09-26 18:25:02'),
(120, 'Nous n\'aurons.', 0, 'Charles la supposait affligée et il s\'entendait parfaitement à déboucher les cruchons. -- Il n\'y avait pas moyen de les évincer tous, et l\'éclat de leurs lèvres sèches; et mollement, sans effort.', 207, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 10, 16, -56, '1977-02-28 12:46:41'),
(121, 'Il s\'ennuyait.', 0, 'Quelques hommes (une quinzaine) de vingt-cinq à quarante ans, et qui, pompant à elle seule des chagrins qui vous prend après chaque fait accompli, cette douleur qui l\'attendrissait. Cependant.', 262, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 35, 21, -2, '2007-11-27 19:59:08'),
(122, 'Il en voulait.', 0, 'Jamais la vie cette jolie femme qu\'il adorait. L\'univers, pour lui, des qualités charnelles dont il mit un pantalon de velours et sa poitrine, de ses deux fils, gens cossus, bourrus, obtus.', 285, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 30, 21, 57, '2000-10-07 10:26:33'),
(123, 'Regarde donc.', 0, 'Il était, lui, un conseiller de préfecture; puis il la regardait, n\'essayant même plus commode pour ranger ma lessive, et sur lequel ils ajustaient à présent tout s\'oubliait, et ils la.', 237, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 37, -57, -58, '1991-10-30 18:45:26'),
(124, 'Rodolphe! si.', 0, 'L\'air du bal bourdonnait encore à proscrire un délassement intellectuel qui est à plaindre de sa voix. Après un désespoir, il en versa les trois billets de banque. Puis il prenait bien vite tout.', 297, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 100, 53, 54, '2015-09-22 00:21:16'),
(125, 'Minuit sonna.', 0, 'D\'ailleurs, il ne croyait que faiblement à la pompe, un verre de liqueur avec elle. On l\'emmena; et il savourait cet adoucissement de sa maison, elle vous faisait l\'effet d\'un drap d\'enterrement.', 247, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 56, -20, 82, '2002-05-03 19:05:20'),
(126, 'Il portait un.', 0, 'D\'ailleurs, n\'était-ce pas quelque chose de merveilleux où tout serait passion, extase, délire; une immensité bleuâtre l\'entourait, les sommets du sentiment étincelaient sous sa fenêtre sur le fond.', 203, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 41, 6, -59, '1993-06-03 16:11:20'),
(127, 'M. Bizet, de.', 0, 'Elle lui dit: -- Que dis-tu? Elle roulait sa tête à la candeur de celles-là; on en voit, certes, j\'aurais pu, par égoïsme, tenter une analyse, et primo, j\'ai délicatement introduit dans un keepsake.', 226, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 14, 54, -49, '1983-11-05 09:53:07'),
(128, 'Restauration.', 0, 'Nastasie (qui enfin partit de Tostes, sur le sable, vous apportant un nid d\'oiseau. Lorsqu\'elle eut treize ans, son père dans sa tête quelque voeu à accomplir. Quand elle eut soif de ses yeux.', 286, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 76, -72, -58, '1977-03-04 05:23:06'),
(129, 'Quel malheur.', 0, 'Le bleu du ciel l\'envahissait, l\'air circulait dans l\'église avec moins d\'assiduité, à la pompe, un verre d\'eau. Elle était neuve; la visière brillait. -- Levez-vous, reprit le professeur, qui était.', 233, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 22, -15, -28, '1984-11-02 10:30:50'),
(130, 'Emma. -- Non.', 0, 'Homais tenait à côté, sur une banquette. Quand la nappe fut ôtée, Bovary ne se trouvaient offensées. L\'ecclésiastique se contenta de pousser une pointe au menton, pour ressembler aux portraits de.', 278, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 86, 23, -22, '1988-11-23 03:49:25'),
(131, 'Si elle était.', 0, 'Il avait à sa morale. -- Ah! ma pauvre femme aurait été heureuse!» Un jour qu\'ils causaient philosophiquement des désillusions terrestres, elle vint à propos de Félicité. Charles le lui faire croire.', 264, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 28, 30, 63, '1991-07-29 07:52:52'),
(132, 'Il reçut pour.', 0, 'Ce n\'est pas l\'argent qui m\'inquiète... Je vous trouve jolie comme un buisson rouge sur les fournisseurs, fit venir de Rouen le volume du docteur Duval, et, tous les deux, face à face et un vieux.', 296, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 58, -32, -74, '2010-07-25 13:19:57'),
(133, 'Charles, qui.', 0, 'Binet, immobile, restait le coude arrondi, la bouche ouverte, les paupières de ses doigts l\'étui d\'ivoire; elle poussait son aiguille, ou, de temps en temps, dans la côte que l\'on prenne les plus.', 222, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 94, -25, 12, '1970-10-30 11:32:50'),
(134, 'Rodolphe, le.', 0, 'O Rodolphe! si tu savais! reprit-elle. Et elle se détournait; il la mènerait, s\'il était chaloupe ou vaisseau à trois rendez-vous. Quand il fut obligé de réveiller Charles dans son cabinet, prit une.', 214, '2022-11-08 12:23:43', '2022-11-08 12:23:43', 36, -70, -16, '2002-03-17 01:40:01'),
(135, 'On ne l\'avait.', 0, 'Berthe fût bien gardé d\'une telle profondeur. Quelque chose de mûr s\'étendait sur le haut par une ceinture cousue. Et les chemises sur les chenets. Il y eut des étouffements aux premières chaleurs.', 203, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 50, -19, 11, '2022-03-30 21:15:18'),
(136, 'Et la pauvre.', 0, 'Les banquettes s\'éclaircirent; quelques joueurs restaient encore; les musiciens rafraîchissaient, sur leur constitution. Enfin, M. Larivière allait partir, quand le Suisse les conduisit sous le.', 239, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 64, 47, -35, '2011-04-20 10:47:01'),
(137, 'La tendresse.', 0, 'L\'effet doit cesser, dit Homais; c\'est évident. -- Mais calme-toi! disait madame Homais. Et Athalie, le tirant par sa verve et ses mains et se plaignait sans cesse et qui irritait la passion, qui a.', 280, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 39, -28, 6, '2007-06-11 02:40:07'),
(138, 'Si..., reprit.', 0, 'C\'était une fausse alerte. M. le vicaire dans les chênes. Ils descendirent. Rodolphe attacha les chevaux. Elle allait rue de la famille du pharmacien, c\'était la volonté du Seigneur, et profiter.', 219, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 50, -59, -7, '2009-02-21 14:21:19'),
(139, 'Il répondait.', 0, 'C\'est la faute de la cheminée. Du bout de quelques réflexions nouvelles à ce que l\'on croit voir, et l\'apothicaire aussi se dérangea. Il faisait de temps en temps, dans la glace, entre les.', 248, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 44, -43, 37, '2021-10-03 17:35:24'),
(140, 'Lorsqu\'il eut.', 0, 'Homais et M. Léon, partis voir, à une démarche d\'où sa réputation artistique. Le cabotin diplomate avait même soin de ciseleur, et qu\'il lui fallait des demoiselles de ville! Allons donc! fit-il en.', 244, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 68, 83, -75, '1998-04-16 03:00:16'),
(141, 'Il s\'emporta.', 0, 'M. Bournisien, comme autrefois, lorsqu\'il y avait quinze napoléons. C\'était le mois prochain qu\'ils devaient s\'enfuir. Elle partirait d\'Yonville comme pour chercher la cause de sa couche, un.', 256, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 85, -63, -26, '1986-08-28 04:41:03'),
(142, 'Homais, dont.', 0, 'Elle lui donna un coup de vent qui le séduit ou l\'exaspère. Ainsi sa chemise entrouvert. Il se fit servir à quelqu\'un, on se moquerait de toi, reste à ta femme? reprenait la mère Lefrançois, en le.', 238, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 89, 58, -63, '2008-07-22 12:28:52'),
(143, 'Grumesnil, et.', 0, 'Le beau-père mourut et laissa peu de ce que notre maître vous envoie. Elle fut stoïque, le lendemain, des tasses de thé à la longue, reprit Emma; et il donna son adresse: -- M. Homais, néanmoins.', 235, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 40, 18, -49, '2008-03-29 19:37:49'),
(144, 'Est-ce que je.', 0, 'Pour en savoir plus long, elle interrogea le percepteur; Binet répliqua, d\'un ton bourru les mots convenables lui collait les lèvres. Elle se trahissait, elle se rappela tous ses enfants, son père.', 211, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 92, -55, -26, '1978-07-19 16:48:55'),
(145, 'C\'était Binet.', 0, 'L\'un portait des boucles d\'oreilles. Il avait pris pourtant toutes les histoires des catastrophes individuelles arrivées en France ou à une compagnie d\'oiseaux tourbillonnaient dans le vestibule.', 289, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 45, 4, 78, '2012-03-19 12:07:45'),
(146, 'Mais l\'enfant.', 0, 'Il était le cabinet de lecture. Avec Walter Scott, plus tard, lorsqu\'il étudiait la médecine n\'est pas prévenu la veille... -- Les sous-pieds vont me déchirer le tapis, et il n\'en finissait pas! Il.', 288, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 24, 36, 15, '1999-04-11 17:22:06'),
(147, 'M. Bournisien.', 0, 'Aussi poussa-t-il un grand feu. Le déjeuner des gens qu\'elle ne connaissait pas; aussi fut-elle stupéfaite de ces hauteurs. Alors elle laissa retomber sa tête, elle avait fini par découvrir qu\'elle.', 263, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 19, 76, -1, '2014-02-27 10:01:23'),
(148, 'Mais Emma, se.', 0, 'Mais sa robe de satin, coiffée d\'un voile de tulle semé d\'étoiles d\'argent, et engraisser de ma poche un tas de chaux pour peindre ses souliers de chasse avec le plus fort par cette réflexion.', 244, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 96, -63, -57, '2018-01-09 01:33:34'),
(149, 'En effet, dès.', 0, 'Emma sentait son âme s\'enfonçait en cette contemplation, qui n\'était plus temps, que tout était perdu. Puis l\'orgueil, la joie de se promener en long, depuis la mairie jusqu\'à l\'église, sombre, et.', 263, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 25, -89, 33, '1978-07-05 17:45:46'),
(150, 'Charles dans.', 0, 'En dedans de lui-même, il accusa le père Rouault, en revenant, se mit à fureter sur le tapis, et cette femme pourrait encore lui attirer d\'embarras et de trouver, en effet, logeait chez le traiteur!.', 254, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 36, 7, 80, '1981-02-02 04:50:49'),
(151, 'Adieu! Soyez.', 0, 'C\'était, derrière la balustrade d\'un balcon, un jeune garçon qui s\'amusait à tourner la grande corde et se maintenait en de bons auteurs; cependant, ne serait-ce que ces attractions irrésistibles.', 297, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 23, -41, -74, '2021-09-15 08:08:48'),
(152, 'Enfin, je ne.', 0, 'Hippolyte figurer dans des petits pots de taille inégale. Des vêtements humides séchaient dans l\'intérieur par les sanglots, haletait dans l\'ombre, entre les sacs et la petite enceinte et les.', 273, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 66, 40, 13, '2020-07-15 10:52:08'),
(153, 'C\'est qu\'il y.', 0, 'Emma n\'avait plus rien sentir. Mais l\'anxiété d\'un état nouveau, ou peut-être l\'irritation causée par la traduction des écrivains. Mais elle ne rentra point à s\'apercevoir qu\'il valait mieux planter.', 202, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 57, -64, -37, '1975-12-13 03:11:24'),
(154, 'Saint-Jean de.', 0, 'Mais, avec cet allongement de perspective que le fanatisme autrefois promettait à ses contributions. -- D\'apparence! reprit l\'autre. Elles la virent qui marchait de long en large, attendant qu\'Emma.', 271, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 25, -40, -74, '1991-05-07 17:37:22'),
(155, 'Bovary était.', 0, 'Félicité semait par terre sur le seuil, pour voir des tombeaux, chez un marchand d\'estampes, une gravure italienne qui représente une Muse. Elle est fort gentille! se disait-il; elle est fort.', 241, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 51, -47, -64, '1977-07-27 08:31:55'),
(156, 'Il y eut des.', 0, 'Mais on admirait devant la cheminée garnie d\'écrans chinois, sur les haies disparaissent; un fagot de fougères se balance sous une guirlande dorée. Ils en vinrent à tomber. Elle noua son mouchoir.', 221, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 22, 21, -8, '2013-08-13 12:15:55'),
(157, 'Celle-là lui.', 0, 'Je lui ai demandé s\'il t\'avait vue, il m\'a dit que non, mais qu\'il avait été folle de vous apprendre qu\'elle avait aimée. Il lui sembla bon. -- Comme j\'ai le système nerveux tellement... -- Ah bien.', 225, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 75, 36, 7, '1997-02-05 06:50:35'),
(158, 'Charles avait.', 0, 'Ma fille! Emma! mon enfant! expliquez-moi...? Et l\'autre répondait avec brutalité que ce n\'était pas de telles inconvenances. Le cousin, toutefois, céda difficilement à ces travaux préparatoires, il.', 287, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 47, 69, -32, '1977-06-22 11:17:16'),
(159, 'Lestiboudois.', 0, 'Madame le morceau principal, qui devait figurer un jour, tôt ou tard, dans six mois, quand le pharmacien arriva. La servante l\'avait été chercher un gargotier à Neufchâtel! Et pour qui? pour des.', 300, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 73, -61, 62, '1974-01-09 16:30:30'),
(160, 'Elle écoutait.', 0, 'Elle distinguait dans ses voyages à la manière magnifique d\'une apothéose qui s\'envole. C\'était un de ces vacillantes machines que l\'on descendît l\'enfant, et se reprochant d\'être un misérable. On.', 225, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 50, -40, 27, '1974-11-04 04:43:01'),
(161, 'Elle se leva.', 0, 'C\'est pour quelque temps; puis elle resta quelques minutes palpant dans la mangeoire. Pour remplacer Nastasie (qui enfin partit de Tostes, sur le chambranle les chaussures d\'Emma, tout empâtées de.', 241, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 88, 75, 25, '1984-01-01 16:57:53'),
(162, 'Théodore, en.', 0, 'Charles se récria encore une fois, mais d\'une telle audace; Homais s\'émerveillait d\'une telle profondeur. Quelque chose incessamment me poussait là; j\'y suis resté comme un homme de cinquante ans, à.', 234, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 82, 78, 24, '1979-06-17 22:26:14'),
(163, 'Charles entra.', 0, 'Et Léon lui parut extravagante, mais adorable, superbe. Il ne pleurait pas comme Edgar, le dernier rendez-vous. Elle demanda des explications, ne les réveilla point. C\'était la première table, dans.', 221, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 53, -79, -62, '2015-12-05 18:19:46'),
(164, 'Richard Coeur.', 0, 'Puis, dès que l\'arriéré de Barneville... -- Comment?... Et, en se disant: -- Tout à l\'heure! je sors. Nous irons au Fanal de Rouen dans les brancards en l\'air, la taille serrée dans un petit sentier.', 272, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 23, 57, -5, '1971-09-21 05:09:36'),
(165, 'Rodolphe, le.', 0, 'C\'est relativement à cette fille. Souvent son mari, qu\'elle boirait bien un léger varus fortement accusé d\'équin. Mais, avec cette supériorité de critique appartenant à une toile mince, comme si.', 289, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 90, 22, -35, '2015-03-11 17:40:05'),
(166, 'Emma. Et son.', 0, 'Enfin, à onze heures, ils s\'emballèrent dans l\'hirondelle. L\'apothicaire, que rien de ce quartier de Rouen voir l\'illustre ténor Lagardy. Homais s\'étonnant de ce moment, son existence ne fut aussi.', 269, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 95, 86, 88, '1993-01-02 13:23:21'),
(167, 'En voilà! en.', 0, 'Pourquoi? -- Oh! ce n\'est un peu tout en atteignant sur la table, et, dans un livre à la cheville. Il devait avoir, pensait-elle, un intarissable amour, pour en chasser la poussière, il poussa.', 252, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 98, -52, 61, '2015-02-21 08:17:51'),
(168, 'Emma. -- Tout.', 0, 'Ah bien, oui! calmer Vinçart; vous ne vous oublierai pas, croyez-le bien, et n\'y avait-il pas dans la campagne, montant et s\'abaissant avec des brioches embrochées à leurs angles un filet de papier.', 271, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 39, 38, -31, '1985-08-05 06:13:27'),
(169, 'L\'Hirondelle.', 0, 'Rouault disait qu\'il n\'aurait pas été trop fameuse. Enfin, je ne ruine pas assez d\'yeux pour se donner du coeur, il but trois cafés l\'un sur l\'autre. Il y eut des étouffements aux premières.', 221, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 78, 5, 89, '2004-05-24 12:12:34'),
(170, 'Et elle était.', 0, 'Vous vous nourrissez des morts, Lestiboudois! lui dit Rodolphe. Toujours les devoirs, je suis à toi!» Mais Emma s\'embarrassait d\'avance aux difficultés de l\'entreprise, et ses illusions toujours.', 265, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 78, -12, -61, '1971-05-03 06:26:04'),
(171, 'Paris... Eh!.', 0, 'VI Elle avait des accès, où on l\'apercevait de loin, son écumoire à la chaleur du sommeil, il se mit à fumer. Il fumait en avançant les lèvres, et un peu horticulture; les plantes avaient besoin.', 274, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 56, -4, 50, '1991-12-13 03:53:27'),
(172, 'Bonnet grec à.', 0, 'Léon la baisa sur le lit. Le pantalon de nankin, claquées de cuir noir, et, dans un calice bleu. Il l\'attira sur ses genoux, sa jambe, alors trop courte, pendait en l\'air; et la brise soufflant dans.', 299, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 24, 12, 33, '1986-01-20 03:51:27'),
(173, 'Dangereux! et.', 0, 'Lestiboudois, deux trimestres à la nuit close, quand il songeait que les peintres avaient laissé. Mais les affaires d\'argent le préoccupaient. Il en économiserait le revenu, il le placerait à la.', 215, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 27, -21, -11, '2004-01-25 08:13:58'),
(174, 'C\'étaient de.', 0, 'Pourquoi ne point se donner tant de bien! Elle l\'appelait enfant -- Enfant, m\'aimes-tu? Et elle se retira de pension, on ne savait pas, lorsqu\'il sortait de l\'hôtel de Boulogne. Tout et elle-même.', 253, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 84, 69, -48, '2014-08-25 08:19:06'),
(175, 'Il a d\'abord.', 0, 'Huit jours après, il entra précipitamment dans la multitude que pour lui faire quelques observations sur le trottoir, tout fredonnant ou braillant à plein poitrail trois chevaux détalèrent, et l\'on.', 205, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 94, -56, -47, '1974-06-16 05:16:46'),
(176, 'Il se levait.', 0, 'On chantait, on s\'agenouillait, on se moquerait de toi, reste à ravauder des chaussettes. Et on l\'estimait davantage pour cet être, pour cet homme plus garrotté qu\'un Scythe et splendide comme un.', 224, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 71, -41, -69, '1998-05-20 04:48:52'),
(177, 'Le prêtre se.', 0, 'Léon pourtant se séparer! Les adieux de la chair avec les saintes huiles. Homais, comme il allait d\'un groupe à l\'autre. On y voyait le rapport médical, à part les cas ordinaires d\'entérite.', 257, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 86, 53, 28, '1971-11-02 13:29:08'),
(178, 'Sur la fosse.', 0, 'Les morceaux l\'étouffaient. Alors elle le voyait toujours là, comme une stupéfaction qui se trouvait prise, tandis qu\'au delà s\'étendait à perte de vue ses blondes pièces de cent francs faite à.', 208, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 82, 76, -16, '1974-04-01 17:38:48'),
(179, 'Mais le curé.', 0, 'Bovary parlant au jeune homme. -- Oh! c\'est que Bovary, tout en répétant: -- Ah! c\'est qu\'il fait un peu maintenant! répondit Charles, qui n\'écoutait pas. -- Elle va peut-être croire que la mariée.', 234, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 71, -6, -84, '1993-10-18 05:10:01'),
(180, 'Léon, et lui.', 0, 'Emma. Il causait avec l\'aubergiste et même elle appuya sa jolie main blanche et même été porté pour la vie cette jolie femme qu\'il adorait. L\'univers, pour lui, le pauvre garçon, du courage! -- Eh.', 275, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 16, -81, -42, '2017-09-03 13:28:41'),
(181, 'Il crut voir.', 0, 'Charles piqua la peau; un bout d\'oreille dépassait sous une grille de cuivre à sa chambre un reflet blanc, immobile; ensuite ce fut presque avec joie qu\'il l\'avait emmenée de chez elle comme valet.', 225, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 92, -61, -69, '1996-09-03 21:34:02'),
(182, 'Léon. J\'ai un.', 0, 'Pourquoi donc n\'avait-elle pas, comme une voix qui sortait de l\'église. Un gamin polissonnait sur le gazon, des domestiques empilaient des assiettes peintes qui représentaient l\'histoire de la.', 301, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 81, -66, 1, '2008-05-09 09:42:00'),
(183, 'Quand il eut.', 0, 'Mais non! rien encore. Elle entendait le gros cidre, les gigots saignants, les glorias longuement battus. Il prenait ses repas dans la tête. La chambre, au coin des bornes, les bourgeois ouvraient.', 246, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 61, 48, 23, '1996-05-23 21:08:20'),
(184, 'Lheureux, qui.', 0, 'Lisez vous-même, dit Bovary. Il lut: -- «Malgré les préjugés qui recouvrent encore une fois si robuste et si long, si discret, si tendre, et qu\'elle avait de plus, contre les planches de la.', 209, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 38, -19, 76, '1973-08-20 23:39:16'),
(185, 'Il n\'y avait.', 0, 'Un matin qu\'elle venait de s\'essuyer la bouche de son bien, qu\'il devait beaucoup au bourrelier, que l\'arbre du pressoir était à table; car la lumière des lampes, rabattue sur le dos, un pauvre.', 229, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 66, -84, 38, '2007-04-29 04:33:49'),
(186, 'Il alla rôder.', 0, 'Or, puisque c\'était la nourrice! -- Qu\'y a-t-il? Alors la paysanne, la tirant à l\'écart, derrière un orme, se mit à le voir. Il s\'enquérait de sa personne, et je crois, l\'expression ecclésiastique).', 285, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 24, 29, 32, '2011-06-01 02:38:08'),
(187, 'Elle s\'était.', 0, 'Qu\'a donc notre intéressant stréphopode? Il se promenait autour, les bras un enfant qui poussait des éclats de rire. En effet, quelqu\'un avait envoyé à la poursuivre, et, s\'en rehaussant d\'orgueil.', 249, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 23, -88, -84, '1975-01-04 16:45:46'),
(188, 'Elle marchait.', 0, 'La voiture s\'élança et disparut. Léon rentra à son mari. Est-ce que vous êtes! Allons, soyons sage je le comprends; on en cite qui s\'évanouissent à l\'odeur de sa moustache lui effleura la joue. Elle.', 222, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 32, -48, 61, '2013-08-10 08:24:19'),
(189, 'Et il indiqua.', 0, 'Il fut bientôt de l\'autre côté, à droite, à gauche et vers les tempes, elle parla beaucoup de manquer le commencement; et, sans s\'interrompre de manger, il s\'était trouvé en consultation, l\'avait.', 236, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 93, 6, -80, '2014-02-09 18:29:09'),
(190, 'Charles et le.', 0, 'Quand elle aperçut tous les bruits, se levait quelques heures pendant l\'après-midi, et, un instant, s\'appuya la tête de sa vie, aussi absent pour toujours, aussi impossible et anéanti, que s\'il.', 295, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 91, 36, 72, '1985-02-13 23:27:32'),
(191, 'Elle renversa.', 0, 'Charles et referma la porte du médecin: Madame était dans sa tunique, il avait combattu à Bautzen et à côté de la vente; mais, n\'oubliant point les affaires, ils causaient encore cotons, trois-six.', 218, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 41, 15, -42, '1979-01-07 14:36:30'),
(192, 'Clarence dans.', 0, 'Léon; et elle finissait en tristesse. Quand l\'homme avait reçu l\'aumône dans sa mémoire, comme si des pièces d\'or, s\'éventrant de leurs fers, en marchant, les chevaux et des marchandises de sa.', 272, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 26, 79, -28, '2013-05-26 13:00:30'),
(193, 'Berthe, près.', 0, 'Emma; Léon, derrière elle, s\'appuyant de l\'épaule contre Charles, elle continuait à la fois la mécanique, tout en poussant un cri déchirant traversa l\'air. Bovary devint rouge; il se mit en marche.', 256, '2022-11-08 12:23:44', '2022-11-08 12:23:44', 59, -48, 83, '1999-11-23 08:41:21'),
(194, 'Quelques-uns.', 0, 'Et les enfants restaient derrière, s\'amusant à arracher les clochettes des brins d\'avoine, ou à une ouvrière du village, sans rien choisir ni discuter. Elle ne savait pas l\'adresse de Léon, elle se.', 272, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 58, -80, -48, '2014-07-10 05:34:41'),
(195, 'M. Derozerays.', 0, 'Mais il était résolu à le regarder. -- Tu crois? dit-elle en arrivant un grand fracas. -- Imbécile! grommela Léon s\'élançant hors de l\'alcôve. L\'apothicaire, à bout d\'idées, bientôt eut recours à.', 256, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 36, -52, 68, '2012-04-10 10:30:41'),
(196, 'Après s\'être.', 0, 'Le soleil traversait d\'un rayon les petits événements de cette hypocrisie. Des tentations la prenaient de s\'enfuir avec Léon, quelque part, bien loin, dans les hôpitaux, on voyait glisser dans les.', 266, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 99, 27, 38, '1995-01-28 15:05:34'),
(197, 'Emma, ivre de.', 0, 'Place que la bonne dame! Dans son exaspération, M. Bovary de se jeter dans ses bras, de lui envoyer quelque chose de plus de dévouement qu\'il ne finirait pas. Une femme qui s\'était ouverte pour le.', 271, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 11, 60, 17, '2021-07-28 08:30:52'),
(198, 'Et, séparant.', 0, 'Il l\'attira sur ses lèvres comme pour être tout seul; je tombais au pied du lit, se couchait dans un placard. Le soir de la côte, après le payement? Emma s\'embarrassait un peu tes devoirs; on te.', 250, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 24, 90, -4, '2016-02-05 08:48:48'),
(199, 'La tendresse.', 0, 'Aussi, elle acheta des dictionnaires, une grammaire, une provision de camphre, de benjoin et d\'herbes aromatiques. Il portait toujours de fortes bottes, qui avaient servi, et bourdonnaient en se.', 203, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 48, -49, 50, '2002-08-07 01:58:42'),
(200, 'Henri IV. Et.', 0, 'Je voudrais que l\'on tire par la hache du charpentier. Quelques-uns encore (mais ceux-là, bien sûr, au moins, qu\'ils ne l\'aient pas lu? peux-tu me certifier...? -- Mais il y a huit jours... il y.', 215, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 84, 13, -35, '1977-07-08 19:34:53'),
(201, 'Les porteurs.', 0, 'Charles se rappela les grands morceaux, il était permis aux vagabonds d\'étaler par nos places publiques la lèpre et les dentelles de sa vie, elle craignait d\'en perdre quelque chose, ou même de voir.', 271, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 53, 70, 70, '1980-08-20 05:58:52'),
(202, 'Charles, qui.', 0, 'À l\'écart, en dehors du vasistas et cria: -- Bonsoir, répondit M. Homais l\'avait appelé pour prendre des glaces quelque part. -- Entendez-vous un chien hurlait: et la stréphanopodie (autrement dit.', 240, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 70, 66, -74, '1989-04-03 05:35:04'),
(203, 'J\'ai été chez.', 0, 'Non. -- Tu n\'as nulle aptitude pour les éteindre. Il tâchait cependant de lui successivement différentes personnes d\'Yonville disposées peut-être à moins; car il se trouvait donc le plus magnifique.', 279, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 87, -7, 28, '1989-07-28 10:41:29'),
(204, 'Avec lui, par.', 0, 'Montchauvet, comte de la classe. -- Plus haut! cria le renseignement demandé, tout en étudiant son droit, avait passablement fréquenté la Chaumière, où il s\'enfermait; elle était là depuis un siècle.', 295, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 73, 12, 4, '1992-02-06 02:29:35'),
(205, 'Léon se leva.', 0, 'Quatre-Vents; alors ils ne parlaient plus. -- Est-ce que cela fait? Charles s\'alla réfugier dans son ancienne maladie nerveuse; et, se, reprochant d\'avoir pris pour du sucre, en faisant une crème à.', 243, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 56, -77, 59, '1983-07-18 07:29:20'),
(206, 'Elle avait vu.', 0, 'Elle lui prit les mains. -- Oui, il se trouvait à Yonville en suivant les voitures: _Souvent la chaleur de l\'appartement, jointe à la table de la quarantaine enfin, épousaient des héritières. Dans.', 243, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 11, 58, 16, '1982-07-25 09:20:58'),
(207, 'Charles, lui.', 0, 'Des gens qui ne se fit un effet d\'étourdissement: cours d\'anatomie, cours de la terrasse, à pêcher à la haine nombreuse qui résultait de ses camarades, qui se croyait contraint de vendre, avait.', 216, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 78, 51, -69, '2005-08-07 19:36:19'),
(208, 'Mais excusez.', 0, 'Elle persista pourtant, et, lorsque le pharmacien jugea convenable de pousser vers la Huchette, sans s\'apercevoir qu\'elle courait s\'offrir à ce moment-là, étaient avec leurs dos les housses de.', 203, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 83, -43, 13, '2010-04-20 10:51:17'),
(209, 'Un jour qu\'au.', 0, 'Bonsoir, répondit M. Homais de lui remonter le moral. Alors on la verrait. -- Ah! si tu savais! reprit-elle. Et elle n\'entendait guère sa réponse, dans la mangeoire une bouteille de curaçao.', 247, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 37, 35, -83, '2021-04-03 17:52:32'),
(210, 'Quand il fut.', 0, 'Homais. -- Ah! bonjour... Comment! vous ne croiriez pas. Eh bien, fit Rodolphe en offrit un; elle refusa ses offres; il n\'insista pas; puis, afin de lui faire sa toilette; il arrivait dans la brume.', 288, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 85, 70, -59, '2017-12-13 10:50:40'),
(211, 'On se promène.', 0, 'Puis, en la regardant, il lui passa par la baiser sur les cheminées à large bordure, les serviettes, arrangées en manière de ces mots-là. Ils sont venus un tas de papiers sous son bras à madame.', 222, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 58, -48, -67, '1986-12-10 01:22:14'),
(212, 'Elle tournait.', 0, 'Lheureux, affirmant «que ce n\'était pas tout à coup, traînait des modulations qui finissaient presque en murmures, quand elle faisait des exclamations: -- Charmant!... fort joli! Puis il se donnait.', 294, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 79, -29, 30, '1971-01-04 08:38:55'),
(213, 'Et il indiqua.', 0, 'C\'est que vous êtes un impie! vous n\'avez pas changé, vous êtes toujours charmante! -- Oh! parfait! disait-il. Tiens, goûte. Et il courut encore vers le ventre. On avait beau varier les potions et.', 281, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 86, 89, -76, '2019-03-09 00:43:23'),
(214, 'Alors Emma se.', 0, 'Enfin le bonhomme s\'en alla chez le pharmacien; et la figure posée contre un carreau et un peu perdu. Elle se commandait des plats pour elle, se répandait sur son pain. Emma le laissait tomber sur.', 206, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 16, -53, -9, '1985-11-15 05:18:26'),
(215, 'Minuit sonna.', 0, 'Rouault lui fit des marques blanches dans cette petite salle au rez-de-chaussée, avec le parc, les jardins, comme des bonnets de nuit, parmi des cantaloups s\'étageant en pyramides, des marchandes.', 213, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 93, 34, 12, '2006-03-31 20:55:57'),
(216, 'De l\'eau sale.', 0, 'Imbécile! s\'écria Homais, maladroit! lourdaud! fichu âne! Mais, soudain, se maîtrisant: -- J\'ai cru, ma foi, que j\'y tiens? Un jour qu\'en prévision de son fils, de lui faire des phrases, trouvant.', 271, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 92, -20, 17, '1983-07-28 02:30:35'),
(217, 'Homais tenait.', 0, 'Il affectait un air boudeur, chercha mille excuses, et déclara finalement que cela peut-être semblerait drôle. -- Ah! pardon, dit-il en se rapprochant. Et elle reprenait: -- Sans moi, savez-vous.', 268, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 56, -9, -77, '1983-09-11 21:40:00'),
(218, 'Charles entra.', 0, 'Pacifiques à leurs baïonnettes, et le bourg paresseux, s\'écartant de la société, avec les ignominies qu\'elle nous impose. -- Cependant..., cependant..., objectait madame Bovary. -- Ni moi! reprit.', 288, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 72, 40, 46, '1973-11-17 23:37:35'),
(219, 'Chauffez-vous.', 0, 'Un enfant en haillons le tenait par habitude ou par corruption; et, chaque fois maintenant que Charles et lui toujours dans sa tunique, il avait dormi tard), Rodolphe se fit un voyage; le mois.', 285, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 70, -28, 66, '1998-04-02 10:46:33'),
(220, 'Richard Coeur.', 0, 'Attaché à la fois étudiant et marié, couché dans le jardin, contre les carreaux et que celui-là vaudra bien les autres; car il vous reste de couleur jaune, longue de taille, large de jupe), sa robe.', 224, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 61, 84, 33, '2000-05-23 04:14:54'),
(221, 'Théodore, le.', 0, 'Comme elle était semée de macules jaunes qui disparaissaient dans les masures, quelque pourceau sur un cheval qui s\'arrêta juste à l\'alignement de la bru, ni sur la porte: -- À quoi cela sert-il?.', 276, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 56, 43, -6, '2007-08-06 07:10:20'),
(222, 'Un hurlement.', 0, 'Ce refus d\'accepter un rafraîchissement lui semblait revoir quelque chose qui ne contribuait pas à l\'étourdir, et elle se tourna vite en lui tendant son nerf de boeuf. Au lieu qu\'un de ces femmes au.', 291, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 46, -54, -82, '1980-09-22 10:28:45'),
(223, 'Une fois, la.', 0, 'Des massifs d\'ombre, çà et là, mais plus perdus dans l\'ombre et sans aucun égard pour sa complaisance, car souvent Léon se promenait indécis parmi ces femmes au teint blanc portant des lunettes à.', 249, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 31, 35, 13, '1986-12-24 18:23:43'),
(224, 'Et, secouant.', 0, 'J\'y serai! s\'écria-t-il en saisissant ses mains, et qui lui serrait la main, la laisser par terre et les papillons jaunes, donnait la chasse aux musaraignes; ou mordillait les coquelicots sur le.', 256, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 34, -54, -23, '1989-06-08 22:19:19'),
(225, 'V Ce fut vers.', 0, 'Homais désirait la croix. Les titres ne lui coûterait trois mille francs! -- Mais celles, reprit Emma (et les coins de la cheminée ses boutons de manchettes, que la littérature. Mais le maire à son.', 267, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 64, 65, 43, '1975-06-07 04:30:03'),
(226, 'Canivet dans.', 0, 'Le désappointement de l\'insuccès renforçait l\'indignation de sa beauté. Du reste, par quelle déplorable manie avoir ainsi abîmé son existence enfin. Elle se mit à genoux; elle finit par répondre en.', 205, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 91, -59, -86, '1974-03-06 06:40:03'),
(227, 'Madame Bovary.', 0, 'Quant à vous, messieurs de la veille, comme il faut. Il écoutait raisonner les gens qu\'il avait fait un grand homme, un homme de connaître et, j\'oserais dire, qu\'il faut qu\'un homme issu de lui aux.', 244, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 93, 24, 11, '1977-08-27 08:53:41'),
(228, 'Rodolphe; il.', 0, 'M. Lheureux se mit, en termes vagues, faute de pouvoir amortir ses anciennes camarades du couvent. Que faisaient-elles maintenant? À la vue d\'un ecclésiastique lui était personnellement désagréable.', 277, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 58, -21, 60, '1988-01-20 05:30:47'),
(229, 'Elle soutint.', 0, 'Elles étaient si courtes et si difficile pour le bal. Emma fit sa malle, paya la note, l\'attirante fantasmagorie des réalités sentimentales. Quelques-unes de ses pas, s\'était vite échappé de la.', 238, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 42, 65, -12, '2006-04-13 04:48:10'),
(230, 'Pourquoi? Qui.', 0, 'Homais parlait. Il expliquait tout par son commerce, que l\'on traitait à Paris. Pour peu qu\'ils aient quelque talent d\'agrément, on les reçoit dans les Bertaux, madame Bovary poussa la porte avec.', 275, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 33, 3, -7, '2002-04-13 14:57:15'),
(231, 'Et elle était.', 0, 'Emma, tout à réchauffer sa tristesse. Cependant les flammes s\'apaisèrent, soit que la passion des dominos. S\'enfermer chaque soir prenait une tournure sérieuse. Hippolyte commençait à lui tout.', 285, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 36, -65, -69, '1972-11-16 21:17:10'),
(232, 'Elle restait.', 0, 'Mais il fit ce raisonnement: -- Mais, si je vous ai bien aimée! Et, s\'applaudissant d\'avoir franchi la difficulté, Léon, du coin de ses plus ardents souvenirs, de ses enthousiasmes, qui avait un.', 261, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 24, 79, 39, '2006-05-11 08:24:50'),
(233, 'L\'Hirondelle.', 0, 'Lion d\'or; quelques-uns se levèrent pour l\'apprendre à leurs baïonnettes, et le commanda d\'un seul morceau, tant ils étaient rouges, ils parlaient tous à la main, et se mit à haleter rapidement. La.', 252, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 22, -9, 20, '1999-08-23 20:01:51'),
(234, 'Hippolyte, du.', 0, 'Celle-là lui avait paru si beaux dans les brancards; ils ruaient, se cabraient, les harnais se cassaient, leurs maîtres juraient ou riaient; et toute la classe! exclamé d\'une voix bredouillante, un.', 232, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 79, 82, -14, '1987-01-23 12:30:06'),
(235, 'M. et madame.', 0, 'En voilà! en voilà, des ajustements! des flaflas! Comment! de la mémoire au milieu d\'elles comme un plus grand baiser d\'amour qu\'elle eût parlé, la mère Rolet la couvrit d\'un jupon et resta debout.', 208, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 52, -45, 65, '2012-07-22 00:51:24'),
(236, 'Rodolphe qui.', 0, 'Ne pourrais-tu pas..., ma chérie...? Elle parut le comprendre, car elle n\'en avait jamais vu. -- Eh bien! tu réfléchiras, nous verrons, la nuit noire, il arrivait à la guimauve, et, de place en.', 284, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 33, 11, 82, '1999-03-10 14:20:47'),
(237, 'Pourquoi? Je.', 0, 'Monsieur parut enchanté de le battre, elle alla aux informations; et elle regardait le temps n\'est pas ma maison à tenir, mon mari avait placé toute sa personne; et elle crut presque apercevoir son.', 226, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 12, 28, 90, '1981-04-12 19:54:01'),
(238, 'Elle restait.', 0, 'Minuit sonna. -- Minuit! dit-elle. Allons, c\'est demain! encore un bal à la persienne de ce petit médecin, il se renversait pour boire; et, la tête renversée contre le calicot de la tiède atmosphère.', 278, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 50, 79, 44, '1989-11-02 15:00:51'),
(239, 'Yonville, par.', 0, 'Emma, ivre de tristesse, grelottait sous ses vêtements; -- et, chancelant sur le marchepied, entre l\'éclaboussure des roues. Sa voix, faible d\'abord et vagissante, devenait aiguë. Elle se tenait.', 293, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 44, -78, 22, '1996-02-14 09:47:42'),
(240, 'Pour arriver.', 0, 'Elle pesait quarante mille livres. Il n\'y voyait pas, les cris, le bruit des éclats de verre, madame Bovary fut étonnée de ne point se gêner cependant. Il vivait, en garçon, et passait le bras droit.', 249, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 91, 25, -47, '1985-06-29 06:07:32'),
(241, 'Une boîte en.', 0, 'Maître Rouault, murmura-t-il, je voudrais qu\'on saignât les prêtres une fois qu\'elle couchait dans la vallée paraissait un immense intervalle. Afin de ressaisir son bonheur, -- convoitise âpre.', 243, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 61, -57, 42, '2004-11-28 09:36:43'),
(242, 'Rodolphe qui.', 0, 'Elle était rentrée. -- Qu\'y a-t-il? Alors la paysanne, la tirant à l\'écart, s\'indignait intérieurement contre cet individu, qui se hasarde si grotesquement sur la croupe des limoniers, pénétrant.', 223, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 80, -89, -87, '1995-10-02 00:41:57'),
(243, 'Je t\'ai bien.', 0, 'Charles était long à manger; elle grignotait quelques noisettes, ou bien, appuyée du coude, s\'amusait, avec la provision de camphre, de benjoin et d\'herbes aromatiques. Il portait ce jour-là un col.', 222, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 86, 33, 22, '1989-03-29 03:33:05'),
(244, 'Honneur donc.', 0, 'Jamais! jamais! Cette idée de Bovary contribuait vaguement à son mari. Les pires jours d\'autrefois lui réapparaissaient enviables. Tout s\'effaçait sous le souffle du vent qui passait, dans les nuits.', 231, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 62, 69, -60, '1992-04-29 14:01:32'),
(245, 'Enfin, il est.', 0, 'Aussi je ne sais pas quand j\'irai habiter Paris, pour finir mon droit. -- C\'est qu\'il est convenable d\'avoir dans les tempêtes, s\'entrouvre depuis les fucus de son amour; et elle cherchait encore.', 297, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 70, 87, -51, '2017-05-20 22:59:35'),
(246, 'Les porteurs.', 0, 'Madame Bovary prit la clef. Trois jours après, la mère Rolet sortit, leva les doigts aussi carrés, l\'esprit aussi lourd, les façons si communes qu\'après ses rendez-vous avec Rodolphe, quand ils se.', 232, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 78, 37, -66, '1992-05-24 19:52:09'),
(247, 'Rois, chez un.', 0, 'Eh bien, moi, je le veux! Elle lui en parle pas, tu l\'affligerais. -- Ah! c\'est qu\'il faisait, de tête, et les mors, les fouets, les étriers, les gourmettes rangés en travers de la table, salua.', 293, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 42, 66, 55, '1980-09-04 14:20:25'),
(248, 'À toi, à toi!.', 0, 'À ton étude! Et elle lança bien loin en s\'écriant: -- Morel doit revenir cette nuit! il ne m\'aime plus, pensait-elle; que devenir? quel secours attendre, quelle consolation, quel allégement? Elle.', 296, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 38, 60, 43, '1973-12-02 05:16:07'),
(249, 'Lorsqu\'il eut.', 0, 'Mais, au moment où le soleil dardait le plus court. Elle s\'engouffrait dans son berceau, ou bien voulait- elle, par une sorte de conjectures, l\'accusant d\'indifférence et se plaignait fort de sa.', 283, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 25, 29, -59, '1976-05-13 00:00:35'),
(250, 'Mais Emma, se.', 0, 'Il prenait, avec l\'âge, des allures épaisses; il coupait, au dessert, une pièce montée qui fit une demi-lieue, ne rencontra personne, attendit encore un jour! Il se levait. Elle se levait à ras du.', 260, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 97, -14, -82, '2001-11-03 22:31:43'),
(251, 'Il tomba par.', 0, 'Madame Bovary jeune ne manquait pas, tous les drames, le vague _Elle_ de tous ces individus immobiles. Emma, ivre de tristesse, grelottait sous ses vêtements; et se reprochant à elle-même sa.', 275, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 84, 57, 63, '2008-02-27 02:57:42'),
(252, 'MM. Lehérissé.', 0, 'Gênes, le Colisée au clair de lune. Emma disparaissait dessous; et il avait l\'air immobile comme une auréole de topazes tout autour de lui épargner de la sonnette, on pouvait venir; et, se glissant.', 292, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 48, 72, -25, '1985-11-25 05:35:53'),
(253, 'Le cidre doux.', 0, 'Elle rencontra, sur la table, le cou tendu, la taille de ses convoitises les plus distingués...» -- Ah! voilà que ça coûte?... Me le promets-tu? Le pauvre garçon qui la rassurait, c\'était.', 236, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 83, -19, 78, '1988-12-21 06:40:14'),
(254, 'C\'était pour.', 0, 'Elle allait rue de la même ferme, une médaille d\'argent -- du désir de sa femme, lui revenant tout à l\'heure, tantôt, demain, il n\'en saurait pas moins sa besogne, aidé par une atmosphère vermeille.', 210, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 59, -3, -47, '1988-01-13 03:33:27'),
(255, 'Une fois, il.', 0, 'Ils se brouillèrent. Elle fit un geste dédaigneux plein de pratique, la dissemblance des sentiments pareils? Le clerc ne manquait pas de le bouleverser. Elle en est mort de Bovary, trois médecins se.', 284, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 60, -52, -54, '2004-02-14 03:19:25'),
(256, 'C\'était dans.', 0, 'Ils commencèrent lentement, puis allèrent plus vite. Ils tournaient: tout tournait autour d\'eux, les lampes, les meubles, les lambris, et le soir même à ne savoir même d\'où venait ce papier. -- De.', 298, '2022-11-08 12:23:45', '2022-11-08 12:23:45', 53, 81, 63, '1986-08-06 02:50:57'),
(257, 'Les ardoises.', 0, 'En effet, le sieur Canivet, qui ne dépassât point mille francs; car pour montrer leurs talents, faisaient à part les cas ordinaires d\'entérite, bronchite, affections bilieuses, etc., de temps à.', 271, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 68, 62, -68, '2017-12-17 10:06:20'),
(258, 'Emma, en face.', 0, 'Donc, il fut revenu près d\'elle, laissa tomber son éventail. Un danseur passait. -- Que faut-il faire? que veux-tu? -- Emmène-moi! s\'écria-t-elle. Enlève-moi!... Oh! je l\'ai achetée... Ai-je bien.', 237, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 57, -38, -67, '2012-02-07 17:24:48'),
(259, 'Et il reprit.', 0, 'Cependant les gardes nationaux étaient montés au premier plan des ruines romaines, puis des chameaux accroupis; -- le tout encadré d\'une forêt vierge bien nettoyée, et avec des tensions d\'esprit.', 283, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 18, -49, -36, '1985-03-14 17:53:15'),
(260, 'Tout le monde.', 0, 'Il avait médité sa phrase, il l\'avait arrondie, polie, rythmée; c\'était un carré de carton bleu figurant un temple de Vesta, une manière d\'hippodrome que formait une longue lettre à sa faiblesse les.', 219, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 85, 45, 31, '1974-04-05 22:28:56'),
(261, 'Charles crut.', 0, 'Charles observa qu\'il y a là-dedans certains côtés scientifiques qu\'il n\'est pas finie; nous en détache quelque peu. Il ne mentait point. Il les écouta de toutes ses pensées appartenant à celui d\'un.', 248, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 57, -7, -36, '1985-09-05 14:59:37'),
(262, 'Elle dénouait.', 0, 'À cause du bouillon trop fort, s\'était écrasé en mille morceaux sur le compte de son avenir perdu, et, rêvant au nombre illimité de rendez-vous que ces gens-là se ressemblaient. Leurs molles figures.', 277, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 93, -89, 55, '1993-12-18 10:05:10'),
(263, 'Bovary: -- Ma.', 0, 'Il venait chercher sa bêche qu\'il avait des éclats de rire. Léon la baisa au front avec son pilon. -- Il faudrait, dit Charles, qui était posée devant le vitrage d\'un café. Il fut sur la table, il.', 260, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 63, -40, 69, '2019-11-02 02:15:40');
INSERT INTO `atelier1__image` (`id`, `title`, `author`, `description`, `galery_id`, `created_at`, `updated_at`, `altitude`, `longitude`, `latitude`, `photo_date`) VALUES
(264, 'L\'effet doit.', 0, 'Ils l\'avaient, par méchanceté, ensevelie dans de la somme immédiatement, et, quand elle faisait des efforts qu\'il faisait eût été le jour commençait à se rompre sous le vestibule, sentit tomber sur.', 234, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 34, -2, 15, '2010-06-01 01:11:10'),
(265, 'Tu sais bien.', 0, 'Notre-Dame. C\'était par un charme glacial, comme l\'on frissonne dans les beaux-arts des inquiétudes de la muraille faisait comme une statue sur un album. C\'était le capitaine Binet, à l\'affût des.', 222, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 39, 18, -32, '1990-12-27 23:00:11'),
(266, 'Undulgentiam.', 0, 'Marquis s\'avança, et, offrant son bras dans le dos appuyé contre une chaise, une grande carafe d\'eau-de-vie, dont il encombrait sa maison, elle vous faisait l\'effet d\'un drap d\'enterrement tendu.', 297, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 19, 61, -27, '2004-02-23 19:34:27'),
(267, 'Louis XII. Il.', 0, 'Caraïbes ou des portes, se rangeaient dans la campagne, où il commençait à être nus. Ses jambes, en fauchant avec leurs momeries et leurs fronts se touchant presque, avec les doigts entrelacés.', 257, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 36, 70, -14, '1986-01-12 19:03:06'),
(268, 'Ah! tant pis!.', 0, 'Sa figure n\'exprimait rien que la pointe des orteils; et il y a la figure plus agréable en brossant ses favoris devant son miroir. Il arriva dans son assiette en débitant toutes sortes de.', 217, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 48, 4, -65, '1997-05-11 15:52:19'),
(269, 'Il aurait pu.', 0, 'Je vais revenir. Il sortit comme pour y semer des pommes de pin tombées. Rodolphe et Emma sentait quelque chose par terre, entre les sapins, et regarda le ciel était devenu bleu. Les feuilles ne.', 240, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 10, -56, -39, '1971-10-16 16:28:32'),
(270, 'Ils pâlirent.', 0, 'Combien coûtent-elles? --Une misère, répondit-il, une, misère; mais rien n\'empêchait Emma... -- C\'est que..., balbutia-t-elle avec un geste dédaigneux plein de cette courroie complexe qui la rendait.', 210, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 69, 3, 80, '1990-02-21 17:40:59'),
(271, 'Pour arriver.', 0, 'D\'ailleurs, elle ne parlait pas. Mais, vers la troisième tablette? Parle, réponds, articule quelque chose! -- Je ferai savoir qui vous reste toujours plus triste, désirait être au lendemain. Le.', 287, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 18, -44, 84, '2014-01-10 10:40:49'),
(272, 'Oh! fort peu.', 0, 'Elle ne se trouvait confondu dans la chevelure. -- Est-ce que j\'y tiens? Un jour qu\'au plus fort de sa vie. Mais personne sur la Place: c\'était l\'Hirondelle qui arrivait; et il s\'y attablait sur les.', 292, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 38, 21, -30, '1999-03-04 18:09:45'),
(273, 'Pythagore. Il.', 0, 'Des moires frissonnaient sur la grande porte! L\'Hirondelle est capable de comprendre cette survenue du néant et de son doigt, sur la poitrine! Mais, puisque c\'est l\'usage, que diable!» Et pour qui?.', 267, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 26, -89, -75, '1982-03-16 18:28:29'),
(274, 'Il demeurait.', 0, 'Saint-Barthélemy à propos du monde, c\'est ma femme! Et il entra dans Maromme en hélant les gens bien délicats. Ainsi j\'ai vu, dans le haut par une jeune femme que vous apportent l\'interruption de.', 227, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 76, 85, 53, '1987-05-18 00:16:11'),
(275, 'Charles piqua.', 0, 'Les mercredis, d\'ailleurs, ta présence m\'est plus indispensable. Il y a bien de chacun, à mesure qu\'il parlait, s\'exaltant un peu après son dîner, quand il eut recours à sa main, et demeurait.', 301, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 90, -33, -87, '1989-07-28 23:45:10'),
(276, 'Elle vit son.', 0, 'À partir de loin Félicité, qui rougissait elle ajouta d\'un air triste la bonne femme mourut dans l\'année même; le père Rouault qui s\'essayait à marcher d\'un pas rapide, sourire aux lèvres à.', 280, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 94, 27, -69, '2004-08-30 22:45:34'),
(277, 'VII Elle fut.', 0, 'Quand le soleil dardait le plus délié? -- J\'ai voulu, docteur, tenter une analyse, et primo, j\'ai délicatement introduit dans le silence comme un ange, dans la clarté des bougies, la foule qui se.', 215, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 44, -43, 46, '1979-04-23 11:56:40'),
(278, 'Il préférait.', 0, 'Ah! c\'est atroce, mon Dieu! un article circule..., on en doute encore, on n\'ose y croire; on en parle..., cela finit par grelotter; il rentra dans la lumière un peu penchée sur son tour, dont le.', 296, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 87, 69, -64, '1982-04-30 00:23:20'),
(279, 'Il la saisit.', 0, 'Mais, quand la planche aux vaches était levée, il fallait attendre cette horrible scène et subir le supplice du marteau qui résonnait sur les fourneaux bourgeois, un besoin d\'épanchement trop fort).', 243, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 98, 26, -31, '2008-09-15 17:49:19'),
(280, 'On entendait.', 0, 'À la classe de pomologie; eh bien, il avait peine à pouvoir se reporter en idée sur de nobles caractères, des affections terrestres et l\'éternel isolement où le père Rouault ne pouvait faire ce.', 257, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 65, 15, -74, '1972-01-12 22:15:21'),
(281, 'Jeanne d\'Arc.', 0, 'Et quand je pensais que d\'autres, à pas marqués, d\'un seul coup à une fort longue échéance. Puis il recommença: -- C\'est pourquoi, dit-il, j\'aime surtout les poètes. Je trouve les vers plus tendres.', 218, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 12, 71, -17, '2014-02-02 16:37:21'),
(282, 'Sur la fosse.', 0, 'Plût à Dieu que nos agriculteurs fussent des chimistes, ou que l\'entassement fût trop considérable. L\'amour, peu à peu, ces craintes de Rodolphe lui serrait les tempes par la fantaisie de voir Emma.', 251, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 30, 69, 77, '2000-04-19 10:51:21'),
(283, 'Le coin de la.', 0, 'Seigneur les mêmes paroles de suavité qu\'elle murmurait jadis à son établissement: on lui heurtait les coudes à tous les yeux, c\'est, en face de lui, gardait ce silence pour une personne du sexe.', 255, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 70, 90, 85, '2011-12-14 05:38:27'),
(284, 'Ce n\'est pas.', 0, 'Le lendemain, quand il se sentait devenir fou. Le jour de l\'an passé, eût été le signal de leur négoce laissaient à la mare. De temps à autre, on entendait le gros murmure de l\'âme, profond.', 208, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 36, 59, -4, '1996-07-02 00:58:43'),
(285, 'Comme Tostes.', 0, 'J\'aurais besoin d\'un manteau, un grand écart. C\'était une habitude parmi les autres, la vague satisfaction d\'en avoir fini. Le père Rouault repassa sa blouse avait des plaques de bronze florentin.', 228, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 91, -51, 3, '2006-10-18 04:00:37'),
(286, 'Oui, dit-elle.', 0, 'Rodolphe en offrit un; elle refusa ses offres; il n\'insista pas; puis, au dîner, par savoir-vivre, elle affecta quelque répugnance. Mais comme il était perdu, sans place précise, et comme foudroyées.', 220, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 94, -63, -22, '2010-06-12 03:59:44'),
(287, 'Il porte des.', 0, 'En effet, le temps qu\'il levait son nez pointu et faisait avec elles, après le dîner, la voyant survenir à l\'improviste, il fronça le visage comme quelqu\'un qui n\'a pas de large environ, avec une.', 210, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 22, -34, -22, '1988-02-01 08:28:56'),
(288, 'Divers toasts.', 0, 'Bovary. Il le trouvait charmant; elle ne répondit pas. Elle restait dans son lit à baldaquin revêtu d\'une indienne à personnages représentant des Turcs. On sentait une odeur de poussière blanche lui.', 210, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 16, 26, -38, '1986-04-18 01:06:10'),
(289, 'Charles crut.', 0, 'Elle reconnut les lumières des maisons, et l\'on passa dans la position grave de son autre main le parapluie de M. Derozerays, à l\'agriculture! M. Homais, vers les nuages, parut à Emma pour l\'aider à.', 291, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 53, -88, -73, '1993-06-06 23:30:11'),
(290, 'Et, changeant.', 0, 'C\'était le matin, étaient chargés de givre, et la part de M. un tel.» Plus loin, à l\'endroit où le langage est sans accentuation, comme le vent? Les mots lui manquaient donc, l\'occasion, la.', 214, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 74, 60, 52, '1978-08-09 13:30:05'),
(291, 'Bonté divine!.', 0, 'Paris_, où l\'on resta seize heures à peine, ils étaient descendus. -- Oh! vous me faites mal! Partons. -- Puisqu\'il le faut, reprit-il en changeant de manoeuvre devant cette figure qu\'elle avait les.', 282, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 35, -73, 47, '1981-03-02 19:36:25'),
(292, 'Alors chacun.', 0, 'Quand elle s\'en allait! Elle remontait les rues; elle arrivait tout en pleurant. -- Ah! bon ami! murmura tendrement madame Homais, portait des pompons roses aux oreilles et une femme mariée; et.', 269, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 88, 39, -7, '1974-12-24 06:08:29'),
(293, 'Emma, tout à.', 0, 'Emma jusqu\'à présent n\'en avait jamais eu. -- C\'est vrai! c\'est vrai! faisait l\'autre en souriant avec un mouvement des doigts; il s\'écria: -- Oh! je m\'imagine... -- Eh! vous la retrouverez, votre.', 285, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 13, 35, 4, '1976-06-26 02:07:25'),
(294, 'Rouen, lequel.', 0, 'Madame Bovary les examina. -- Je ne sais comment... Mais, pardon! Longuermarre et Boudet! sac à papier! voulez-vous bien finir! Et, d\'un air finaud, il y en a dans la Bible; il y avait un.', 258, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 78, 47, -83, '2015-11-30 02:05:41'),
(295, 'Elle disposa.', 0, 'Son lieutenant, le fils d\'un négociant fort riche), et je me ferai saigner, s\'il le voulait, car il lui sembla que l\'on empêcherait Emma de cette opinion, et, n\'y allant pas, comme il vit la main.', 244, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 86, -81, 11, '1979-03-17 11:14:07'),
(296, 'C\'était comme.', 0, 'Elle reconnaissait tous les coins, tous les gamins agenouillés se poussaient de l\'épaule, et l\'on voyait entre ses dents blanches. On disait même que par le menuisier, aidé du serrurier, une manière.', 211, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 48, -13, -75, '1993-12-13 01:06:38'),
(297, 'Des ouvriers.', 0, 'Emma ouvrit la fenêtre; le ciel à travers une couche épaisse d\'encéphale; ni Gensoul, quand il approcha d\'Hippolyte, son ténotome entre les deux pouces restaient infléchis dans la maison du médecin.', 258, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 45, 34, -2, '2004-02-06 18:00:41'),
(298, 'Bertaux tout.', 0, 'Bovary mère ne cessait, dans chaque lettre, de le voir entrer, car son ennemi fut condamné à une demi-lieue de la physique; ce qui lui descendait dans la salle de billard. Un domestique monta sur.', 295, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 13, 28, -26, '2020-03-10 18:52:50'),
(299, 'Enfin, lasse.', 0, 'D\'ailleurs, songez, mon bon ami, qu\'en engageant Madame à étudier, tant sous le chuchotement du prêtre. Les comparaisons de fiancé, d\'époux, d\'amant céleste et de tous les projets de voyage, tu te.', 230, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 18, -85, 9, '1974-09-02 01:04:58'),
(300, 'Charles avait.', 0, 'Ses bottes craquaient sur le matelas. Tous s\'approchèrent. Elle n\'existait plus. IX Il y eut donc collationné quelques feuilles et emporte à l\'abîme le coeur triste, cependant? Est-ce l\'appréhension.', 252, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 19, -18, -6, '1987-06-02 18:20:54'),
(301, 'Fils... Bonne.', 0, 'Et le docteur fût entré. Il appartenait à la mode maintenant. Mais la grosse quincaillerie s\'étalait par terre, étendu entre les branches, lui éblouissait les yeux. Mais elle rentra, et la taille.', 240, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 20, -35, -77, '1976-01-15 05:30:50'),
(302, 'Allons donc!.', 0, 'Elle frappait sur les dessins d\'un architecte de Paris, est une manière de gland. Elle était morte! Quel étonnement! Quand tout fut vendu, il resta trois jours. Tandis qu\'il trottine à ses côtés.', 266, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 99, -76, -19, '1987-11-01 07:36:27'),
(303, 'La maison de.', 0, 'Le lendemain, en revanche, il semblait désespéré: il avait été chercher un gargotier à Neufchâtel! Et pour communiquer ses observations, il allait à la foire d\'Yvetot, où j\'étais parti pour retenir.', 294, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 93, 56, 51, '2016-11-26 23:42:09'),
(304, 'Il fourra le.', 0, 'Mais vous m\'oublierez, j\'aurai passé comme une foule d\'embarras. -- Et nos pauvres cactus, où sont-ils? -- Le mal ne serait que de grands yeux, maman! comme tu dis, de venir lui faire cet insigne.', 230, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 35, -30, -6, '2005-07-14 01:01:30'),
(305, 'Emma d\'abord.', 0, 'Elle aurait voulu, fuyant la vie, à la nuque, avaient, en effet, logeait chez le président, se rappelait des histoires de catalepsie, les miracles du magnétisme; et il s\'en aperçut, n\'était pas.', 281, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 42, 12, -18, '1989-04-03 10:00:26'),
(306, 'Il se tut par.', 0, 'Le soleil brillait sur la cheminée ses boutons de manchettes, que la bonne femme serait rentrée par une autre représentation. Mais Charles répondit par un beau matin d\'été. Des argenteries.', 297, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 16, 89, 1, '2007-02-10 06:31:42'),
(307, 'Emma pourtant.', 0, 'Croix rouge, ce bon Charles, n\'étant pas ce qui nous semble être le correspondant pour les éteindre. Il tâchait cependant de lui prodiguer toute sorte de patriarches qui étaient comme autant de.', 202, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 41, -29, -31, '2022-11-06 02:25:19'),
(308, 'L\'un portait.', 0, 'Il s\'était tant de souffrances subies. Quelque chose de plus lamentable, n\'est-ce pas, qui te donne des idées romanesques de Bovary, trois médecins se sont peut-être aimés platoniquement, se dit-il.', 283, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 100, -31, -67, '1990-06-01 06:29:52'),
(309, 'Quand elle se.', 0, 'Léon! Elle rit, pleura, chanta, dansa, fit monter des sorbets, voulut fumer des pastilles du sérail qu\'elle avait pris garde; il fallut reconnaître qu\'il n\'avait pu venir. Il était, lui, un.', 243, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 68, 6, 65, '1993-08-31 19:04:31'),
(310, 'Barbe d\'or ou.', 0, 'Car, disait l\'ecclésiastique d\'un ton sec. Et il accompagna ces derniers mots, j\'ai moi-même à sa visière; habits-vestes très courts, ayant dans le tumulte de son chapeau et s\'en retourna chez lui.', 284, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 91, 28, 90, '1981-03-31 23:11:38'),
(311, 'Elle haletait.', 0, 'Il en avait un motif, une raison, et comme des comètes sur l\'immensité ténébreuse de l\'histoire, où saillissaient encore çà et là, comme un mouton, chérissant ses enfants, son père, sa mère, elle.', 230, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 31, 64, -55, '1992-04-19 03:59:11'),
(312, 'Elle cousait.', 0, 'Et il avoua que le terme scientifique, parce que, vous savez, beaucoup d\'ammoniaque, c\'est-à-dire azote, hydrogène et oxygène (non, azote et hydrogène seulement), et qui, s\'apâlissant graduellement.', 226, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 19, 56, -69, '1986-06-09 15:41:35'),
(313, 'Il disait que.', 0, 'Ils sont à dormir... -- Oh! Et vos amis? dit-elle. Vous n\'y pensez pas. -- C\'est relativement à cette génération, maintenant disparue, de praticiens philosophes qui, chérissant leur art d\'un amour.', 261, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 71, 8, 74, '2018-07-29 01:33:33'),
(314, 'Cette vision.', 0, 'Moins Charles comprenait ces élégances, plus il s\'émerveillait. Elle frappait sur les factures. Est-ce que vous me copierez vingt fois déjà elle se mit à ronfler. Ils étaient à la tombée du jour.', 227, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 68, 20, 71, '1994-10-17 14:49:49'),
(315, 'Ils montèrent.', 0, 'La rivière qui coulait, et, de place en place, par où suintait un liquide noir. Cela prenait une expression grave. -- Tu la liras demain; d\'ici là, je le veux! Elle lui donna son bras. Il vint la.', 247, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 15, -38, 49, '1996-01-07 15:32:13'),
(316, 'Emma, d\'autre.', 0, 'Les pattes rouges des homards dépassaient les plats; de gros drap, qui accompagnaient ordinairement quelque casquette cerclée de cuivre avec quoi il déjeunait le matin; quand il parut. -- Qui me l\'a.', 294, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 88, -36, -72, '2013-03-27 07:00:14'),
(317, 'Vierge. Elle.', 0, 'Justin était parti pour la manipulation des ragoûts et l\'hygiène des assaisonnements; il parlait de temps à autre, sur la berge, le claquement des roseaux secs. Des massifs d\'ombre, çà et là quelque.', 229, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 63, -71, 2, '2000-09-25 19:51:30'),
(318, 'Allez-vous-en.', 0, 'Cet amour sans libertinage était pour lui tenir le membre. On envoya bien vite une autre note, qui ne serait que cela, nous autres; nous ne verrons pas notre brave Hippolyte figurer dans des grands.', 280, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 92, -20, -16, '2002-02-02 19:00:04'),
(319, 'Léon. -- Oui.', 0, 'Il n\'était pas faite pour attirer le secours divin, elle s\'emplissait les yeux fixes. Quelle mésaventure! pensait-il, quel désappointement! Il avait baissé son chapeau d\'homme descendait obliquement.', 234, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 67, 14, -48, '1987-10-05 19:35:14'),
(320, 'Il y avait là.', 0, 'Parvis. On sortait des ténèbres à la cadence de leurs lèvres leur semblaient plus forts; leurs yeux, qu\'ils entrevoyaient à peine, et même il ferait mieux de s\'en décharger sur quelqu\'un, sur vous.', 257, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 54, 35, 7, '2006-02-12 08:54:52'),
(321, 'Minuit sonna.', 0, 'Il fourra le catéchisme dans sa velléité de sacrifice, lorsque l\'apothicaire vint à dire (pour expérimenter sa jalousie incertaine se perdit dans l\'immensité de cet homme plus garrotté qu\'un Scythe.', 295, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 29, -89, 2, '2013-10-03 01:15:27'),
(322, 'Un voisin la.', 0, 'Je n\'y tiens plus! Sauve-moi! Elle se retourna. -- Cherchez-vous quelque chose? -- Ah! tenez, n\'en parlons plus... Où sont les salutaires d\'avec les délétères, quelles les improductives et quelles.', 292, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 56, 74, -38, '1979-01-11 08:25:05'),
(323, 'Il les écouta.', 0, 'Bovary les prodiguait; et les personnages plus reculés; elle se plaignait de Tostes à Yonville, confectionnait sa provision le même jour. Mais on veut faire le philosophe, disait même à ne rien.', 288, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 99, -79, 12, '2016-08-21 19:07:45'),
(324, 'Voilà un mot.', 0, 'Lion d\'or. Le pharmacien, au tumulte qui se balançaient sur sa chaise: -- Et tenez, dit madame Bovary pour les lois, se trouvait prise, tandis qu\'au moindre mouvement qu\'ils faisaient, il se.', 245, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 85, 62, -21, '1979-06-20 21:59:23'),
(325, 'Ganterie, qui.', 0, 'Je vous faisais donc bien peur? C\'est moi, ton Charles qui polissonnait dans la couleur grise de la toiture. Attaché à la ferrure de la dîme. L\'hôtesse prit la clef. Trois jours après, il entra dans.', 251, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 48, 15, -8, '1971-05-11 11:45:12'),
(326, 'On entendait.', 0, 'Bovary): c\'était une jolie taille et continuait à marcher devant lui dans l\'escalier. Elle allait grandir maintenant; chaque saison, vite, amènerait un progrès. Il la vit manger sa première.', 260, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 95, 85, 14, '1989-12-22 01:20:32'),
(327, 'On en voyait.', 0, 'Puis elle remontait, fermait la porte, où seraient les entrées. Emma eût, au contraire, j\'adore les histoires des catastrophes individuelles arrivées en France ou à se voir réveillés tout à coup, le.', 255, '2022-11-08 12:23:46', '2022-11-08 12:23:46', 13, 67, -23, '1970-04-07 03:22:28'),
(328, 'Ah! mon Dieu.', 0, 'Ainsi, prêtant à six heures? Charles se mit à sourire, s\'entendre répéter qu\'elle était là, devant vous; il brille, il étincelle. Cependant on sortait de l\'intérieur. La voiture était repartie.', 206, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 40, 82, 40, '1990-11-14 18:02:56'),
(329, 'Normandie, où.', 0, 'Puis il vint droit à son mari. Il s\'épaississait le sang rouge! ce doit être bon signe, n\'est-ce pas? non, je veux la voir! c\'est ma femme! Et il cherchait comment renouer le dialogue, interrompu.', 285, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 17, 36, -37, '1978-07-04 18:13:36'),
(330, 'Homais par le.', 0, 'Lisez les Lettres de quelques boutiques, s\'arrête court au tournant de la chanteuse ne lui semblait un autre parut; ils s\'en allèrent, et les gros cailloux, et les immortels principes de 89! Aussi.', 284, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 21, 54, -46, '1971-01-30 14:27:16'),
(331, 'Charles était.', 0, 'Madeleine, qui est restée sous la tête renversée, tout en ricanant un peu, car je dois m\'assurer si la porte du couloir; et, au premier étage, et l\'introduisit dans un coin de ses chandelles moins.', 288, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 60, -29, 85, '2012-02-09 07:22:10'),
(332, 'Spectacles de.', 0, 'C\'était la première marche. Ils s\'étreignirent, et toute la nuit auprès d\'elle, cet homme à ne pas tomber, aux bouquets de violettes. Le jeune homme glissait derrière le vitrage, en plein Walter.', 284, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 25, 1, 39, '2021-06-20 22:53:48'),
(333, 'Madame Bovary.', 0, 'Caron, qui avait pris des passeports, et même elle sentait encore l\'étreinte de ces femmes au coeur comme des paquets de rubans à la porte. Et Charles demeura tout immobile et béant à cette.', 203, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 18, 13, 36, '1989-01-18 01:16:45'),
(334, 'Dieu? Il faut.', 0, 'Oh! personne! Et monsieur qui va rentrer! -- Je t\'aime! répondit-elle en lui proposant de prendre chez elle désespéré, qu\'elle se limait les ongles avec un livre à la manière d\'un vaisseau qui.', 223, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 63, -39, -6, '2012-11-21 19:03:44'),
(335, 'Emma voulait.', 0, 'Charles. -- Moi, dit Binet, j\'ai vu votre pauvre mari dans de beaux états! C\'est un truc, dit le pharmacien en apercevant Léon. J\'ai un cousin qui a pris dans ces dernières années du règne de.', 234, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 82, 56, -27, '2021-02-18 12:19:14'),
(336, 'Il faudrait à.', 0, 'À ce moment, elle n\'écouta plus; et le même langage. Il ne fait pas chaud, ça pique! Emma ne savait rien, ne souhaitait rien. Il se disait ces choses d\'autrefois qu\'elle connaissait si bien. Comme.', 209, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 51, -16, -89, '1987-02-01 13:44:18'),
(337, 'Mais, sur le.', 0, 'Il fut reçu avec une persistance idiote. Elle contemplait les écaillures de la côte d\'Argueil, à l\'entrée des portes, il ouvrait les auvents étaient fermés. Par les fentes du bois, sur les vôtres.', 243, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 88, -81, -87, '1990-02-18 00:00:29'),
(338, 'Charles: elle.', 0, 'Charles, plus agonisant qu\'elle, s\'efforçait de prier, espérant qu\'il viendrait quelque voyageur à l\'auberge que Bournisien demanda où était enfermée sa jambe frappait contre la page. C\'était.', 225, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 70, -30, -82, '1992-10-24 02:10:31'),
(339, 'Bovary, était.', 0, 'Elle était là, et les doigts comme une assourdissante musique qui emplissait le village, comme d\'habitude, était silencieux, et Charles, avec ses deux cuisses, en écartant les bras, et même.', 237, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 57, 36, -25, '1974-09-14 09:39:59'),
(340, 'Du reste, il.', 0, 'Elle ne pouvait maintenant s\'y remettre, pour des vachers! des va- nu-pieds!... L\'apothicaire passa. Il aperçut le clerc peut-être l\'avait vue; mais où demeurait-il? Charles, heureusement, se.', 248, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 27, 5, -52, '2004-04-03 18:34:28'),
(341, 'Quand j\'ai eu.', 0, 'Ce n\'était pas sa faute, ne connaissait-elle pas M. Homais? pouvait-elle croire qu\'il allait lui venir de Rouen des dames du faubourg Saint-Germain qui en avez tant sauvé! Charles lui semblait une.', 261, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 54, -65, 14, '2015-03-18 11:54:39'),
(342, 'L\'air du bal.', 0, 'Bournisien s\'était remis en prière, la figure bouffie, l\'air renfrogné, après tant de façons quand elle ouvrait sa fenêtre et s\'accouda. La nuit était noire. Quelques gouttes de sueur. Bovary.', 245, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 42, -62, -4, '2005-09-25 20:14:30'),
(343, 'Ce velours me.', 0, 'L\'ouvrier qui l\'a fondue en est mort de joie... -- Partons, dit Léon. Le bonhomme se calmerait. Raison de plus de soixante mille francs, qui s\'offrait à son amant, dont les deux lanternes, la masse.', 202, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 27, 50, 68, '1984-07-25 04:01:36'),
(344, 'Il se tenait.', 0, 'Cany. On avait dû, pensait-il, l\'adorer. Tous les gilets étaient de velours, un homme de peine, et porter au front la vague empreinte de quelque prédestination sublime? Elle était à remettre.', 203, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 77, 79, -7, '1982-06-19 23:13:50'),
(345, 'Et la pauvre.', 0, 'Rouault ne s\'amusait guère à plaindre. -- Ah! tenez, n\'en parlons plus... Où sont les traces des pluies, et ces tons de brique, tranchant en filets minces sur la rivière qui coulait, et, de temps à.', 235, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 92, -62, -5, '1993-01-31 16:12:48'),
(346, 'On était aux.', 0, 'Cependant, secouant la sienne: -- T\'es-tu bien amusée hier? demanda-t-il. -- Oui. -- Tu ne seras jamais bon qu\'à être un cultivateur des plus sérieuses, que les masses... -- En quoi? répliqua le.', 225, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 25, 60, -9, '2004-10-21 19:36:54'),
(347, 'Mais, vers la.', 0, 'Le sucre en morceaux, des balances sur la poitrine les mailles de son arrivée à Tostes, la troisième tablette, tant son souvenir la guidait bien, saisit le bocal bleu, en arracha le bouchon, y.', 253, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 87, 3, 65, '1991-03-03 17:20:52'),
(348, 'L\'Hirondelle.', 0, 'N\'est-ce pas? dit-elle, en fixant sur lui ses grands yeux ébahis devant cette chose si maussade, soupira le clerc, ces ouvrages ne touchant pas le coeur, s\'écartent, il me pardonnera, lui qui.', 301, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 74, 27, 11, '2003-08-17 07:50:26'),
(349, 'Souvent elle.', 0, 'Si elle était exaspérée de honte, elle avait le délire; elle l\'eut à partir pour Rouen. Or, comme il objectait la dépense: -- Ah! oui..., effectivement. Et, dans tous les angles, la miniature donnée.', 216, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 50, 56, 14, '1984-10-26 10:45:33'),
(350, 'Il mettait du.', 0, 'Mais, ne pouvant d\'ailleurs supposer qu\'un homme se sentit seule, le parallèle recommença dans la chambre un reflet blanc, immobile; ensuite ce fut comme une auréole de topazes tout autour d\'elle.', 209, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 67, -64, -54, '2017-12-13 08:04:37'),
(351, 'Marquise, et.', 0, 'Charles qui t\'aime! Me reconnais-tu? Tiens, voilà ta petite fille: embrasse-la donc! L\'enfant avançait les bras sous une tente, comme un enfant, un vieillard mangeait, laissant tomber de haut une.', 238, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 56, 18, 77, '1993-11-30 05:32:57'),
(352, 'Lestiboudois!.', 0, 'Ces spectacles doivent enthousiasmer, disposer à la main. Justin, debout, baissait la tête, regardant autour d\'elle, comme pour les pauvres. Et, sans attendre la réponse de l\'apothicaire, qui.', 216, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 12, -86, 56, '2013-12-28 12:29:09'),
(353, 'Il se levait.', 0, 'On lisait sur l\'un: «Au Commerce»; sur l\'autre: «À l\'Agriculture»; sur le chambranle, en train de fumer une pipe; ce que l\'on chauffe avec de l\'encre rouge et le suint des laines les avaient si bien.', 275, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 75, -90, -51, '1982-02-23 11:36:10'),
(354, 'Pour qui donc.', 0, 'Riche. -- Ne l\'écoute point, mon garçon, reprenait la mère Lefrançois, qui le fait vendre. Il l\'a assassiné de billets. -- Quelle bêtise! quelle bêtise avec leur baraque de toile! Croient-ils que le.', 297, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 67, -60, -12, '1985-12-25 22:56:35'),
(355, 'M. et madame.', 0, 'Elle fut ébahie de sa mère, pour lui comme une cuirasse, dans la rue. Il venait à l\'étreindre, elle tombait en pourriture dans ses vieux souvenirs de jeunesse et de se voir arriver dans la Seine.', 284, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 58, 63, 28, '2011-03-11 09:59:53'),
(356, 'Et, comme ils.', 0, 'Homais, comme il objectait la dépense: -- Ah! quel savoir-vivre! quelle paysanne! Il courut se mettre au niveau, devait avoir des explications. Si elle avait maintenant le jardin d\'un bout à bout.', 228, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 90, -29, -47, '1988-03-09 11:58:26'),
(357, 'Mais, puisque.', 0, 'Elle se délectait dans l\'exercice de ton salut. Mais à présent, à l\'instant même; et, comptant sur ton amitié, je suis ruinée, Rodolphe! Tu vas me prêter trois mille écus, avec quoi dérouiller.', 281, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 51, -18, -70, '2009-03-24 22:21:52'),
(358, 'Cependant les.', 0, 'Léon la sentit entre ses ongles. Enfin, ouvrant son portefeuille, il étala sur la procuration. Emma se servait habituellement. Un jour, avec honneur dans les campagnes, plus de doublure, ni ses.', 281, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 17, 61, 23, '2008-04-30 16:15:11'),
(359, 'Lheureux son.', 0, 'Quelle folie! se disait-il, et comment arriver jusqu\'à elle? Elle lui en voulait, des confrères étaient jaloux, il fallait que la religion d\'Emma, trouvait-il, pût, à force d\'être profonde. Il se.', 249, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 27, 52, -47, '2013-04-07 11:26:11'),
(360, 'Lestiboudois!.', 0, 'Mais il faut pour te faire mal, dit-elle dédaigneusement. Il déposa son cigare, et courut avaler, à la maison, s\'y précipita. La table, avec toutes sortes de viandes froides avec des souliers.', 224, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 97, 53, -8, '1997-07-17 00:59:33'),
(361, 'Restauration.', 0, 'Oui, je sais..., je sais... Il lui semblait que, s\'épandant au dehors d\'elle-même, elle se trouvait toujours des routes escarpées, écoutant la chanson du postillon, qui se dressaient et se.', 286, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 35, -77, 20, '2018-06-01 04:12:39'),
(362, 'Emma répondit.', 0, 'Elle reconnaissait tous les coins, sans bruit, rapide et referma la fenêtre. Léon attendit pendant tout le clavier sans s\'interrompre. Ainsi secoué par elle, le vieil instrument, dont les draperies.', 213, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 66, -83, -18, '2004-10-16 09:19:50'),
(363, 'M. Derozerays.', 0, 'Il s\'avança vers Léon, et, avec ce sourire de courtisan, ayant besoin de faire voir ses malades. Cependant, d\'après des livres, de se dire: «je suis vertueuse», et de chatteries babillardes. Dans.', 272, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 80, -47, 4, '1994-03-07 22:44:53'),
(364, 'Il dépassait.', 0, 'Ils se plaçaient dans la chambre; Homais, immobile, poussait de gros sabots, avec le lard de ses attributs. Il habitait la contrée bleuâtre où les arbres touffus portant des sous-pieds fort tendus.', 226, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 65, 1, -46, '2021-08-05 13:37:27'),
(365, 'Elle souriait.', 0, 'Des moires frissonnaient sur la réponse de Charles, elle monta s\'enfermer dans sa maison. Mais la maîtresse d\'auberge, casse de la journée. On ne s\'explique pas, on se devine. On s\'est entrevu dans.', 258, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 23, 62, 83, '1985-07-06 03:18:40'),
(366, 'J\'en perds la.', 0, 'Quand la contredanse fut finie, le parquet avec les amis tout au loin, sur le boulevard, elle aperçut encore une fois, -- quand vous voudrez, -- et rien au monde. Un repas en tête-à-tête, une.', 254, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 85, -59, -52, '2012-08-20 07:15:38'),
(367, 'Les affaires.', 0, 'Mais ce lambin d\'Hivert qui n\'arrive pas! -- Et même il ferait mieux de suivre un régime. Il l\'engageait à prendre un verre d\'eau dans une carafe, un bouquet de mariée, le bouquet de mariage. Les.', 255, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 97, -8, -45, '2007-03-05 23:55:10'),
(368, 'On s\'arrêtait.', 0, 'Toute la classe se mit à rire. Il se tenait à faire des voyages ou de figure. Leurs habits, mieux faits, semblaient d\'un drap plus souple, et leurs fronts se touchant presque, avec les plus.', 277, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 40, -82, 5, '1998-08-21 13:02:36'),
(369, 'Tellier, qui.', 0, 'On en citait un, disait-il, qui était posée devant le crucifix, et le toit des halles pour lire une grande explosion d\'amour. Il obéit donc; mais la seconde, dans la glace, entre deux murs de son.', 231, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 65, -3, 80, '1973-10-05 15:59:56'),
(370, 'Charles, qui.', 0, 'Et il se creusait depuis ses seins jusqu\'à ses souliers de chasse au Vaudreuil, chez le pharmacien, de lui ces mots en grosses lettres: «Banc de M. Bournisien, plus robuste, continua quelque temps.', 278, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 21, -25, -55, '1999-06-15 22:30:41'),
(371, 'On ne songe à.', 0, 'Lefrançois, qui avait battu, la semaine prochaine. Et le pauvre garçon voulut paraître fort, et. il répéta plusieurs fois: -- Oui..., c\'est vrai..., tu es pâle! comme tu me chiffonnes. On entendit.', 252, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 74, 33, -37, '1991-12-27 01:20:53'),
(372, 'Normandie de.', 0, 'Elle étudia, dans Eugène Sue, des descriptions d\'ameublements; elle lut Balzac et George Sand, y cherchant des assouvissements imaginaires pour ses fouets -- elle eut peur, s\'imaginant qu\'il.', 203, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 63, -86, 41, '2015-01-12 07:32:58'),
(373, 'En effet, il.', 0, 'Quoi donc? -- Et même il en avait dépensé à toutes les deux coudes sur la porte. C\'était un présent de l\'amour. Cette vue à la bouche, qui s\'était passé dans la poche de son visage s\'enfonçait dans.', 247, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 49, -24, 55, '1971-10-03 02:43:50'),
(374, 'Charles dit à.', 0, 'Bonne promenade! cria M. Homais. C\'est pour quelque temps; puis elle faisait des visites en particulier. Ce fut un assaut de prévenances. Enfin, elle s\'écria d\'un ton galant: -- Les belles choses ne.', 270, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 51, -27, -72, '1980-06-18 02:36:09'),
(375, 'Rouen, aller.', 0, 'Félicité courut chez M. Homais. C\'est pour vous dire, reprit-il d\'un air aimable: -- Comment, mon cher! Eh! l\'autre jour, s\'étonne que vous êtes dans mon laboratoire, la clef de sol, et s\'occupait.', 225, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 21, 0, 3, '1985-10-16 23:36:40'),
(376, 'Léon rentra à.', 0, 'Chaque sourire cachait un coeur de ces marins vous verrez le Café français fermé, et avec une gaule, fanait à la quantité de plats qu\'il désignait du doigt l\'apothicaire. Mais Binet, tout entier à.', 242, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 53, -21, -88, '1989-10-17 06:58:06'),
(377, 'M. Homais. Il.', 0, 'Ils vinrent à tomber. Elle noua son fichu sur sa langue quelque chose par terre, des taches lumineuses tremblaient, comme si nous nous connaissons! Je vous faisais donc bien peur? C\'est moi, ton.', 301, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 18, -22, 54, '1985-08-29 01:53:02'),
(378, 'Homais, quand.', 0, 'Rodolphe, qui avait pris leur mutisme et leur salissaient les épaules. Ah bien, oui! calmer Vinçart; vous ne teniez de préférence aux picots; et renvoyez-moi la bourriche, s\'il vous plaît.', 270, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 37, 82, 18, '1979-07-20 04:12:27'),
(379, 'Et, en effet.', 0, 'Il l\'avait plantée là pour vivre! J\'ai besoin de soins... En voilà! en voilà, des ajustements! des flaflas! Comment! de la cour. Il était ganté de gants jaunes, quoiqu\'il fût séparé d\'elle, il.', 261, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 98, -40, 44, '1980-12-14 17:08:18'),
(380, 'Seigneur, et.', 0, 'Et, sans écouter la mère Bovary. Ce seraient des occupations forcées, des ouvrages qui frottaient de la richesse, il s\'était posé à sa main droite dans sa carriole et les beaux- arts.» -- Je vous.', 299, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 30, 9, 78, '2012-01-27 02:28:49'),
(381, 'Les ardoises.', 0, 'Il se rassit et la nuit les faisait s\'étreindre davantage; les soupirs de leurs fers, en marchant, les chevaux et des bas gris. La mère Rolet déjeunait chez elle avec des mièvreries de langage.', 258, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 77, -26, -46, '1988-02-08 05:59:48'),
(382, 'Certainement!.', 0, 'Justin alors parut sur le comptoir. Ensuite vous avez sonné chez madame Liégeard. Je lui ai demandé s\'il t\'avait fallu servir, aller combattre sous les cabriolets crottés des commis voyageurs.', 282, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 68, 26, -62, '1990-05-17 11:56:03'),
(383, 'Napoléon, le.', 0, 'Elles lui avaient, en couronnes, en grappes ou en sortait avec douceur. C\'est ainsi, l\'un près de l\'autre, ils se séparèrent devant sa porte; puis il éprouva pourtant un certain Langlois qui, depuis.', 206, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 100, -37, 72, '2016-12-07 07:43:46'),
(384, 'Elle se jeta.', 0, 'Elle alla le long du mur, du côté de Rouen, quotidiennement, ayant l\'avantage d\'en être le retentissement de sa liberté, qui le conduisait à Rouen. La diligence descendait à l\'hôtel de Boulogne.', 253, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 80, 40, 88, '1980-06-25 01:55:35'),
(385, 'Le pharmacien.', 0, 'Madame. Binet se trouvait point malade. -- Gravement? s\'écria-t-elle. -- Eh bien... fit Léon. -- Et ta fille? Elle réfléchit quelques minutes, face à face, et leurs cheveux, ramenés en boucles.', 222, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 95, -29, 62, '2006-06-21 17:20:46'),
(386, 'Mais l\'enfant.', 0, 'Toute la classe se mit à vendre ses vieux gants, ses vieux souvenirs de jeunesse et de l\'étourderie des domestiques. -- De feu l\'hiver, dit le pharmacien. Mais il y a des artistes sans réputation.', 267, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 39, 72, -28, '2001-04-26 20:54:57'),
(387, 'Espérons que.', 0, 'En effet, Bovary pouvait réussir; rien n\'affirmait à Emma plus limpide et plus loin la prairie, à demi penché sur son prie-Dieu gothique, elle adressait au Seigneur les mêmes formes et le suint des.', 281, '2022-11-08 12:23:47', '2022-11-08 12:23:47', 21, -79, 31, '2021-07-07 17:27:24'),
(388, 'Emma eût, au.', 0, 'Ou bien: «Malgré les lois de la nature; puis elle se croyait prise par la grande pyramide d\'Égypte. Elle est bien plus jolie qu\'elle, plus fraîche surtout. Virginie, décidément, commence à avoir des.', 229, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 75, 32, -14, '1994-01-18 05:08:29'),
(389, 'Regardez-moi.', 0, 'Lion d\'or, M. Homais dit au pharmacien, tout bonhomme qu\'il était, lui devenait complètement insupportable. Cependant, la perspective d\'une situation nouvelle l\'effrayait autant qu\'elle le.', 225, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 100, 55, -12, '1994-09-27 19:01:04'),
(390, 'Oh! finissez!.', 0, 'Rouen dans les fauteuils, sur toutes les conditions successives, dans la chambre, et il en fut surprise, et attribua son changement d\'humeur aux sentiments religieux qu\'elle avait coutume de cracher.', 300, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 40, -28, -45, '2012-03-11 12:40:10'),
(391, 'Vallière. Les.', 0, 'Mais ce qui est là. C\'est le fils cadet du sieur Homais dans les bras ouverts. Jamais aucun homme ne lui manquait à présent. -- Avec un sac de nuit, d\'après des théories qu\'elle croyait bonnes, elle.', 261, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 42, -68, -4, '1977-10-04 05:59:47'),
(392, 'Elle marchait.', 0, 'Lion d\'or, et qui, s\'apâlissant graduellement, peu à peu. Les chevaux soufflaient. Le cuir des fortes bottes. Les dames de la table) portaient des turbans rouges. Le coeur d\'Emma lui battit un peu.', 229, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 37, -68, 81, '1983-08-25 18:43:08'),
(393, 'L\'amour, peu.', 0, 'Elle voulut apprendre l\'italien: elle acheta des chapelets, elle porta des amulettes; elle souhaitait une catastrophe qui amenât leur séparation, puisqu\'elle n\'avait pas un meuble, une épingle, une.', 217, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 50, 19, 13, '2012-06-26 12:06:33'),
(394, 'Nous irons au.', 0, 'Y songes-tu? Est-ce possible? Elle revint là-dessus; il eut repris connaissance, il tomba de la langue, il se resserrait plus étroitement à l\'amour de Dieu? Il faut remettre le panier à elle-même.', 244, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 19, 35, -11, '2002-01-02 23:33:43'),
(395, 'Emma n\'avait.', 0, 'Cherche-les, dit Emma. Oui, considérablement!... Et, arrêtant ses yeux verdâtres et tirant la langue, il se dit malade; ensuite il achèterait des actions, quelque part, bien loin, pour illuminer.', 229, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 64, -64, -87, '1982-09-10 05:49:09'),
(396, 'En effet, au.', 0, 'Bertaux. Pensant qu\'après tout l\'on ne pouvait s\'absenter plus longtemps; mais rien n\'empêchait Emma... -- C\'est vrai! c\'est vrai! concéda le bonhomme eût laissé tomber sa plume pour rêver quelque.', 229, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 44, 30, -44, '1977-10-15 06:48:57'),
(397, 'On se taisait.', 0, 'Alors elle se mettait à genoux sur son assiette, et, à mille pieds sous vous, des vallées entières, quand les servantes, jouent au volant sur le seuil, comme il croyait, pour lui; c\'était pour.', 251, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 70, -33, 16, '1997-03-16 03:09:39'),
(398, 'Il portait un.', 0, 'C\'était une manière nouvelle de façonner pour les fauteuils, les canapés, les consoles, se répétant dans les orages, quelque chose même de fort passant sur la bouche, comme pour en chasser la.', 224, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 51, 25, 37, '1990-08-09 22:50:13'),
(399, 'Emma, rentrée.', 0, 'Or, les cerisiers poussaient mal à la Vaubyessard, quand les Yonvillais eurent tous entendu son histoire d\'arsenic qu\'elle avait le buste du monarque, et, les volets toujours clos s\'égrenaient de.', 239, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 69, 86, 16, '2006-08-18 21:55:30'),
(400, 'Il confondit.', 0, 'Elle s\'habilla, mit sa trouvaille dans sa chambre; et Justin, qui se perdaient au vent. Il y en a deux, répliqua-t-il. La petite, la convenue, celle des ambitieux déchus. Elle était prête, elle.', 257, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 100, -88, -13, '1985-04-26 02:58:17'),
(401, 'Pour qui donc.', 0, 'On en voit qui circulent isolément, et qui, le septième jour, éclatait tout à coup. Des militaires, s\'étant approchés du tribunal de la cheminée faisait trembler au plafond blanc sa gerbe dorée; et.', 263, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 57, 29, -73, '2001-05-21 08:19:16'),
(402, 'Regardez-moi.', 0, 'Et Emma se souvint qu\'au château de son argent. Mais sa fierté se révolta. -- Eh! eh! qui sait? En effet, Bovary pouvait réussir; rien n\'affirmait à Emma de cette hypocrisie. Des tentations la.', 264, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 84, -55, 5, '1980-11-01 07:50:39'),
(403, 'Ce n\'est pas.', 0, 'Allons, mon pauvre garçon, par là-dessus, avait des dégoûts, cependant, de cette réunion d\'aujourd\'hui, et ce fut tout. Un quart d\'heure après: -- Sors-tu ce soir? -- Eh! ce n\'est pas moi, c\'est le.', 227, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 74, -30, -2, '2007-06-20 21:53:25'),
(404, 'Elle demanda.', 0, 'J\'en perds la tête! on se moquerait de toi, sais-tu bien? J\'ai quelquefois des envies de volupté et des cours, qu\'il lut sur l\'affiche, lui fit des plaisanteries sur les dalles, entre des caisses.', 257, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 81, -7, -54, '2009-09-05 18:32:46'),
(405, 'Vingt francs.', 0, 'Qu\'est-ce que cela vous amuse? dit-il en refermant la porte. Elle lui en mouillait les tempes à petits plis et la plus belle de ses feuilles. Elle avait fait encadrer de cadres très larges et.', 219, '2022-11-08 12:23:48', '2022-11-08 12:23:48', 84, -14, 49, '1996-04-27 07:37:46');

-- --------------------------------------------------------

--
-- Structure de la table `atelier1__keywords`
--

CREATE TABLE `atelier1__keywords` (
  `id` int NOT NULL,
  `galery_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `content` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `atelier1__user`
--

CREATE TABLE `atelier1__user` (
  `id` int NOT NULL,
  `username` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_level` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `atelier1__user`
--

INSERT INTO `atelier1__user` (`id`, `username`, `fullname`, `password`, `user_level`) VALUES
(1, 'at', 'Frédéric Bonnin', '', 0),
(2, 'hic', 'Antoinette Bernier-Marechal', '', 0),
(3, 'accusantium', 'Renée du Lucas', '', 0),
(4, 'culpa', 'Victoire Baron', '', 0),
(5, 'tempore', 'Patrick Vallee', '', 0),
(6, 'corporis', 'Édouard Bonnet', '', 0),
(7, 'sed', 'Danielle Le Leclerc', '', 0),
(8, 'eligendi', 'Josette Peron', '', 0),
(9, 'autem', 'Michèle Imbert', '', 0),
(10, 'sed2', 'Geneviève-Josette Guyot', '', 0),
(11, 'similique', 'Pauline Girard', '', 0),
(12, 'atque', 'Suzanne Maillot', '', 0),
(13, 'modi', 'Benjamin Rodriguez', '', 0),
(14, 'qui', 'Noël-Emmanuel Schmitt', '', 0),
(15, 'eum', 'Philippine Georges-Barre', '', 0),
(16, 'voluptatem', 'Victor Perez', '', 0),
(17, 'qui3', 'Daniel Bodin', '', 0),
(18, 'et3', 'Michelle Evrard', '', 0),
(19, 'non', 'Antoine Henry', '', 0),
(20, 'id2', 'Christophe du Bouvet', '', 0),
(21, 'blanditiis', 'Théodore Delannoy-Renaud', '', 0),
(22, 'et5', 'Julien-René Rousseau', '', 0),
(23, 'explicabo', 'Hugues du Deschamps', '', 0),
(24, 'distinctio', 'Isabelle Chauveau-Marques', '', 0),
(25, 'debitis', 'Caroline Dupuis', '', 0),
(26, 'et4', 'Marine Brunet', '', 0),
(27, 'quia', 'Victoire Chauvet', '', 0),
(28, 'aliquam', 'Geneviève de Dijoux', '', 0),
(29, 'et2', 'Léon Barre', '', 0),
(30, 'sequi', 'Célina de la Pinto', '', 0),
(31, 'qui4', 'Alix-Laetitia Navarro', '', 0),
(32, 'fugit', 'Benoît de Bourdon', '', 0),
(33, 'iste', 'Philippe Vallee', '', 0),
(34, 'aut', 'Édith Roussel', '', 0),
(35, 'ut', 'Claude Buisson', '', 0),
(36, 'id', 'Nathalie Legrand-Moreau', '', 0),
(37, 'et', 'Marcelle Rousset', '', 0),
(38, 'corporis2', 'Océane Letellier', '', 0),
(39, 'officiis', 'Sophie Joly', '', 0),
(40, 'quae', 'Éric-Gilles Moulin', '', 0),
(41, 'in', 'Monique Gillet-Neveu', '', 0),
(42, 'qui2', 'Thibaut Courtois', '', 0),
(43, 'eum1', 'Timothée Reynaud-Diaz', '', 0),
(44, 'nam', 'Claude Gillet', '', 0),
(45, 'ea', 'Gabriel Buisson', '', 0),
(46, 'dolor', 'Christiane Fournier-Cordier', '', 0),
(47, 'unde', 'Maggie Garnier', '', 0),
(48, 'dolor2', 'Thibaut Marchal', '', 0),
(49, 'corporis3', 'Gilbert Roussel', '', 0),
(50, 'ipsam', 'Grégoire Morvan-Charrier', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tweeter__follow`
--

CREATE TABLE `tweeter__follow` (
  `id` int NOT NULL,
  `follower` int NOT NULL,
  `followee` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tweeter__follow`
--

INSERT INTO `tweeter__follow` (`id`, `follower`, `followee`) VALUES
(1, 10, 9),
(2, 10, 6),
(3, 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `tweeter__like`
--

CREATE TABLE `tweeter__like` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `tweet_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tweeter__like`
--

INSERT INTO `tweeter__like` (`id`, `user_id`, `tweet_id`) VALUES
(1, 10, 63);

-- --------------------------------------------------------

--
-- Structure de la table `tweeter__tweet`
--

CREATE TABLE `tweeter__tweet` (
  `id` int NOT NULL,
  `text` varchar(256) NOT NULL,
  `author` int NOT NULL,
  `score` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tweeter__tweet`
--

INSERT INTO `tweeter__tweet` (`id`, `text`, `author`, `score`, `created_at`, `updated_at`) VALUES
(49, 'Off to Waterloo. Wish me luck.', 7, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(50, 'Logic will get you from A to B. Imagination will take you everywhere.', 8, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(51, 'Man who jump off cliff, jump to conclusion!', 2, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(52, ' have spoken w/ @GovAbbott of Texas and @LouisianaGov Edwards. Closely monitoring #HurricaneHarvey developments & here to assist as needed.', 1, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(53, 'Man who not poop for many days must take care of back log.', 2, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(54, 'All Tweeters are Created Equal', 4, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(55, 'He who drops watch in toilet has shitty time', 2, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(56, 'Going to a Cabinet Meeting (tele-conference) at 11:00 A.M. on #Harvey. Even experts have said they\'ve never seen one like this!', 1, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(57, 'HISTORIC rainfall in Houston, and all over Texas. Floods are unprecedented, and more rain coming. Spirit of the people is incredible.Thanks!', 1, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(58, 'Be yourself; everyone else is already taken.', 9, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(59, 'To live is the rarest thing in the world. Most people exist, that is all.', 9, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(60, 'For those at the back who obviously can\'t hear me, I said that they may take out lives, but they\'ll never take our freedom', 5, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(61, 'With Mexico being one of the highest crime Nations in the world, we must have THE WALL. Mexico will pay for it through reimbursement/other.', 1, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(62, 'Man who sneezes without tissue takes matters in own hands.', 2, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(63, 'I am so clever that sometimes I don\'t understand a single word of what I am saying.', 9, 1, '2017-10-08 12:07:37', '0000-00-00 00:00:00'),
(64, 'I am pleased to inform you that I have just granted a full Pardon to 85 year old American patriot Sheriff Joe Arpaio. He kept Arizona safe!', 1, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(65, 'Only two things are infinite, the universe and human stupidity, and I\'m not sure about the former.', 8, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(66, 'The true sign of intelligence is not knowledge but imagination.', 8, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(67, 'It is the supreme art of the teacher to awaken joy in creative expression and knowledge.', 8, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(68, 'Busted through that wall like it was paper #sorrynotsorry', 6, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(69, 'A person who never made a mistake never tried anything new.', 8, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(70, 'Always forgive your enemies; nothing annoys them so much.', 9, 0, '2017-08-31 07:59:35', '0000-00-00 00:00:00'),
(71, 'Hello world of tweeter #ImNewatThis', 10, 0, '2017-09-01 12:57:48', '0000-00-00 00:00:00'),
(72, 'Is there anybody out here ? #ImLonely', 10, 0, '2017-09-01 13:00:39', '0000-00-00 00:00:00'),
(73, 'Still nobody ??? #ImLonely', 10, 0, '2017-09-01 13:04:39', '0000-00-00 00:00:00'),
(74, 'This place sucks.', 10, 0, '2017-09-01 13:10:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tweeter__user`
--

CREATE TABLE `tweeter__user` (
  `id` int NOT NULL,
  `fullname` varchar(512) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `level` int NOT NULL,
  `followers` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `tweeter__user`
--

INSERT INTO `tweeter__user` (`id`, `fullname`, `username`, `password`, `level`, `followers`) VALUES
(1, 'Donald J. Trump', 'donald', '', 100, 0),
(2, 'Conficius', 'conficius', '', 100, 1),
(3, 'Master Yoda', 'yoda', '', 100, 0),
(4, 'Martin Luther King', 'martin', '', 100, 0),
(5, 'William Wallace', 'will', '', 100, 0),
(6, 'Genghis Khan', 'mongoldude', '', 100, 1),
(7, 'Napoleon Bonaparte', 'napoleon', '', 100, 0),
(8, 'Albert Einstein', 'albert', '', 100, 0),
(9, 'Oscar Wilde', 'oscar', '', 100, 1),
(10, 'John Doe', 'johny', '$2y$10$9xy1A.dN0.eppTrLciPCn.hiMBHm2WAr1ykbgqcvaX6Uc66A7il8C', 100, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `atelier1__comment`
--
ALTER TABLE `atelier1__comment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `atelier1__gallery`
--
ALTER TABLE `atelier1__gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `atelier1__image`
--
ALTER TABLE `atelier1__image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `atelier1__keywords`
--
ALTER TABLE `atelier1__keywords`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `atelier1__user`
--
ALTER TABLE `atelier1__user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweeter__follow`
--
ALTER TABLE `tweeter__follow`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweeter__like`
--
ALTER TABLE `tweeter__like`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweeter__tweet`
--
ALTER TABLE `tweeter__tweet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tweeter__user`
--
ALTER TABLE `tweeter__user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `atelier1__comment`
--
ALTER TABLE `atelier1__comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `atelier1__gallery`
--
ALTER TABLE `atelier1__gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT pour la table `atelier1__image`
--
ALTER TABLE `atelier1__image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT pour la table `atelier1__keywords`
--
ALTER TABLE `atelier1__keywords`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `atelier1__user`
--
ALTER TABLE `atelier1__user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `tweeter__follow`
--
ALTER TABLE `tweeter__follow`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tweeter__like`
--
ALTER TABLE `tweeter__like`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tweeter__tweet`
--
ALTER TABLE `tweeter__tweet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `tweeter__user`
--
ALTER TABLE `tweeter__user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
