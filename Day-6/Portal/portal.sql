-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 02:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Panduan'),
(2, 'Olahraga'),
(3, 'Berita'),
(4, 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `id_posting` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_posting` int(5) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_posting`, `id_kategori`, `judul`, `isi`, `gambar`) VALUES
(1, 0, 'LOREM IMPSUM DOLOR SIT AMET', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0xffd8ffe000104a46494600010101006000600000ffdb0043000302020302020303030304030304050805050404050a070706080c0a0c0c0b0a0b0b0d0e12100d0e110e0b0b1016101113141515150c0f171816141812141514ffdb00430103040405040509050509140d0b0d1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc000110800e100f703012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00ef754b80d2332bb0f5e4d729ab5c1f25b2ec4678e6afead707e6c8c06ea41ae764905c5c228cf969d49afdf294146363f99322c1622b63beb75138d2a776deab6e85b92e1f702247fba0fde3e949f68973bbcc7ffbe8d40d264e48e4d2799d457ab1a6ac8fcdf1b5bdae26a4e2f46d967ed532ff00cb46c7fbc6956e25ebe637fdf46ab6ec668ddba9fb35d8e1e69772dade4b8c798dff007d1a0ddcadff002d1bfefa355777039a5dd4bd9aec4f34bb967ed5202099581ff78d5bd31a49ae146f661d4fcd597bb1d6b5741c798ff4acaa46d17a1d141c9d45ab3acb47741bb278ff006ab463b87dbc9e3eb59b6b09c63ae7d6ae44a796ec2be72a45367dc529351dcb5f6a27680581efcd344cdc9dc7207ad5757c316c54923ed840e85ba0acb917636e76d6e57bc9d96163bc8e7ae6b93d6f509772a891b9ebcd745a8c88b18523045713a8cde75db63b1c57ad83a49f43e7f31ace31b2620ba9bb48df9d1f6a9b07121cfd4d57dc4e00ea29c5bd6bd8e45d8f9be79f72c2df4dddcfe74efb74aa3eff00f3aa9b875fe94be831fa52e45d87ed27dcb5fda13631bbad1f6f987fcb4c76aab9f6c51d738a3923d83dacff009996bfb467fef67de81a84fcfcd9f4aacb85e4d2f1d3071ec6972c7b07b4a8f44d963fb4a703efd2ff00694d8c9200efcff9c5518fcebcbf161616f26a1a891b8dbc38f917fbcec7e5451dd9b8addd07c12daf4a18470f88595b0d3bb3a69101f418f9eed87a2ed4f7ae2af88a5474dd9ee60f2fc562b56da467e97a85febf2b43a369d79ad488db5cd8c2cc8a7fda93851f89a1b54b98ee2ead2e6d8dadddb4a61b882465251860e32a483c11d0d75a9a84be17bffed58752bed524b4f32c34fb5de21b7bcbb230522b74c46b0c43966c1e78c9c579f47a7be95adead0c93b5d5c48d1cf3cee4e649581676e7a0c9e07618ae5c2d7957aad492e5fd4f4f1d83a785c3b7193e7f335bfb49fba2e7a7de348da949d31fa9aa84d358f1eb5ebfb389f27edaaf72e7dbd8ff000ffe3c68aa6addff00ad147244975aa772d5e01b88772c7d3b550c04c2eddbf4ab5764b39039aac49cd5d1a3182bd8facccf89f1f9a43d8d495a9f65a08cc7a8191494e5a4e95d5647c9084e28069ca79a36e3eb458917a2fbd0a491f852814a17b545b510d1cb01d2b7f435dab829cd61c2a5db03a9aecb448951429e8a38cd71e2a5cb13d3c0d3e6a97b9af0afcbbbcbe7152c726de0ae0f5fad2c65b8000c1a9dd46e5dc3915f39296baa3ec231496e562d92a4ae3822ab5c4c376dc1e3deac4ac77f038aa33c81964cf0477ad29c6ecc6a4b955cc9d5ef02a3f2c38e31deb95dc4fb56a6a9741f74408201e71599b7b57d161e9f2c0f8ec554f69504dc7b75a39a5db9fc2976f420d75d8e2b8993c52eec734bc7d28dbf8525142133c114aadb69bfad477577158c06599f6a67031cb13d801dc9a52b4757a234853751a8455db256658d59ddf62a8c963c003dea4d3f4d9b598ade799ee74ed32e095b516d16fbed471d45b447a2facadf2ad69e8fe0eb8b9d4215d52d63b9d5182cb6fa0c9cc56cbd44f7cc3a0f487ab1f6af5cd07c37168ed25ccb235feab7000b8be9861e4f4451d1231d91781c75af99c66617f7293f9ff91f7197e4f1a76a95d5df6e88e73c3df0f97ec0b6da85b45a7e95b83ff62db485c4ac3a3dd4c79b86ff0067841e86a7f17789ede286e6d23b8365a6da058afef2dc61d323e5b5b7038699fd07dc1c9ed49e29f1927d9ee92d6f0da69d6ede55eeaf18dfb1cf4b7b71ff002d276e9c709d4fa572da7e9f25e4d6d79796cb6705a861a7e981b72da29eaeedfc73b75673df20578d4e12ab2febfab9efd6ab1c3c09b4db59a6b81a8dedbc76920885bd9d8447f77636e3a44beac7ab37739ae26ea6f3bc47ae4807fcb754ff00be5057a3c92ac31b3b602a8ce4d796e939b8b796e8e41bb99ee39f42c71fa015f4781a6b9aeb647c7e3ab39d29393dd97b8f5e698ce4f3d734ee38e38a69e39c77af73951f2c2c7f3628a7daaee90719fc28ac6764ce882d08a691379c3743fc42a32e7ef0c11ed4fdadce4fe7cd30c6546e01463afa1a7fbda7ab69a3f47c2d1e1ece25ec29a951a8f6bbba6fb02b679cfeb49e61c53bcb0db587f150d0e188fd6bae328c95d1f098dc1cf03899e1ab6f17619bb14f0e32324d1e5ee20628d84e38aa3cfd0566c67068690934be51cf4a0c7f30e0f4a3416858d3f2f70bf5cd769a7c79cf3827935cde8560d236e00fe75d8d9d898d54e0e4d78f8ca91bd8fa2cba9697b13a978c8c676a8f4a7cd37dd2493bbf3ab3e4ab2038e734ad0af96c1863d38af0dca373e93934b99f33346acc7f3f4ac3d4a5f2e173dcf7cd7477118f242f53f4ae6f5a530c6e48cfe15dd87b3923ccc5cb961a1c9dc485a421460545e61efd6a5906e727a5023cd7d2249687c5b95ddd916e239183f5a532371c73527960526cfce8d3b0b419e61a3cc66cfa52f9791c8a65c4f1595bbcb2b6117afbfb7d68f756af446918f3b518ead835c1568a38e392e2e26711c36f12ee795cf4551dcd769e1af07dc586a8c88f0dd789e3204f7d812db68808cec8c1e24b9c77e89d697c13e19bab7b8728c6db5f9a31e7dce013a45bb8e234cf1f699075fee0ebe87b68efac7c3eb1681a2d9c9a8ea112e574fb5c33a67abcce788f3d4bb9c9ebcf4af8fc7639e21ba70d22bf1ff807e8396e5d0c2c79e7acff0022e5869fa77853499363adb5b2666b9bab8909691ba992590fde63ea7f01d2b94f1278b4dd5b45e79bab3d3ae81fb2d8db65351d507aae7fe3de0f5918648e98acfd475a92fb50d91c96de21d6207caf940b691a5b8efc9ff4a987bfca0fa53f4fd256ce6b8ba9679afb51ba3bae2fae58b4d31f73d80eca3815c14a8caa7bd2d8eec462a3455a3abec56b3d326b89adaf3514851ed94a59e9f6ab8b5d3d0ff0c63a963fc4edc935a80d3d79e0ff002a86faf2dec2d65b8b8916286252ceefd00af523151b28a3e7a752755de473be3ed51acf495b284ffa55fb79098ea14fde6fc07ea457391aadbc31c4830a8a140f4006290ddcbafea526ad3ab46ac3cbb589baa45ea7ddbafe552eddcd8ebef5eee1692a70e67d4f0b1d5949aa4b65bfa8c56c7e549b89c8cf14fda07068d9d78aeed0f28b9a4c7e6cd9cedc0a2ace8b6a6472718f7a2bcfab28a933d4a14ef0bd8cadc781f9d23b7031f29cf14df317f85ce7e9471dc100f5e393f4ae89548c972c7a9f4985e1ec6e16b2ad8b5ece10776db1caa5615c1e0e4d19ec45234996f41d8526efc2b5a71e58d8f0737c5ac7636a5786cde83f71e94e1db350ab536eafa2b1b769a56211781c7249e807a9aa7a2bb3c854dce5cb15ab2d50012dc0c9aada6c897715c1d62f6e3c32ca098239b4f91bcde38dd305658c7fc00d45742cade15908d07558b39df2f889ae64ff00bf01a007e8457993c74232e58a6cf728e4d564b9a72491d8e9f7169a7dba35cddc36d81c99a5541fa9ad287c75e1e8386d76c5dfa058e7121fc9726b9ad1f48babbb55bbb2f0b5ec71e32afa7f866d1bf26732356a8f11788adc08c8f1858c4bc0cd9fd917ff00215be7f235e3d59bacda565f3ff807d151a31c3ab24dfc8dd87c6da5dcfcb6ff006eba38e3ecda6dcc9fca3a98f881963ca687e229c1e729a2dcff005415cbcbe2279f1f6bf116a308eff6ed5b525c7e51a8a6aff625f72fe24d1652dff3f1ac5d331faee715cbecd9d9cceda419d3cdaa5d4c37af867c4857db469c7f315cfeaf6fafdd64af857c4607fb5a5c833f852ae81a3c982356f0d951fddd4653ff00b57fa524de17d298ee375e1d77eb91aaca9ffb3d6b4e75293bc5afebe67256c3aacad283f93473b3596a56c18dc681ae5b81d4c9a5ce00fc765529b56b6b7205c3496c7d2e61923fe6a2bad922b1b15245fe9f181c936fe28923dbf9b7f2a8b4ff00165b5c149078d2f74cb65fe0fedc92e64931fdd5dcdc7b9cfd2b3c767d2cbe9fb4a8b99f65ab7f257fc4f4725e0d967b5fd8d07c896f29b4a2be7d4e72df50b6bbc8b7b9826f5d8ea6a7d854654678aeded753f0c33bc96f6973ab5c487734b1e9d3dc3c84f7dc63ae7bc5ba5c171710cf69e1b96c99cf965f569174f8813d181f39187d7a7a8af9bc1f1a626b62542ae11c60fadf55f7a47e899a784b97e0f013af87cc94ea455edcba3f9a6dfe063fddff00f5f356341b3bcb86fedc874fb8be86dee459d84705ab4ead74464cceabd5621c81ddb153ae97a1ae92e4f89651aef2069da22beaf028c700c855769ebfc647bd53d3fe20f89bc2fa6d8f85f52b9bcf0f5808dbcbfec6b54f3ae0124b179773306e790b822bedb158a78aa7c9457adeebfe1cfc7303972c1d573aceefa5bfc8ee6f2f0f86ad62d32feeee34932e65fec7d3596e35abd66e5a49a41f25bee3c924e7b678aa0b6b7ba9d89b09628b40d009ddfd87a6487f7bfed5ccff007a56f5edf5ac8d0fc49e13d36274b4beb7b6690e646b8de92c87d5cc832c7f1ad86f176891f2758b0c7a8b943fd6b86185e4b39eaff23bab62ead4f769ab2fccd2b7b78acede38a08d608a31858e3015547a01daa5031c573775f113c3d6edb06a2b72e7a476a8d293f971fad665e78faf6f14ae9ba6340a7fe5e3502063e91a9c9aec8d29cdd923cc97bbad4d0ebb50d42d748b492e6f264b7817ac8e718ff1fa0e6bcff54d4ae3c5932bcd1bdb6931b6f86d5c61e523a3b8f4f45fc6ab35b3df5d2ddea772fa95d2fdd320c4717fb8838156bcc1d7dfbd7a74309cbef4cf37118d8c57251fbffafcc74d22dbc2d249f2a28c96f41ebef59c97d7d7108b886d23f24fcca8ee448c3d7da9daf319349b90b9fbb572de65fb2c263e85548fcaba25cd2a9c9b2b5cf32168d3e76aedb21b1be8b51b712c60e558ab2b0e54fa55a279045666928b15d6a0e9c234dc0f702ad36a96f6f388df7c8e7fe59c2a59bf21446a5a1cd3612a37abcb4d6875da3c0521538c8c67ad150e87addb4ce6289a48e4c67ca994a31fa0a2bc6a952329368fa4a545d3828f29cc96f7c1a6b1071c53fb74e94ddbdebe954627cfd5c556affc59b7eaee37a1cf4a5db9e73d68653da8faf3f4a67208c5635323b044504b31e062b4bc21a28d4a41afdfa6cb74e6ce2938000eb29faf6f415956fa7bf8935c874a0585a443cfbc75feee784cfb9aed755617732e9f105582301a655fbb8fe18fe87bfb0f7af2f1151ce7ece3f33dfc1d1f671537bbfc115a7927d772de7cd6b69ff2ca34c29907f79fd41f4f4eb52c76a5a35864b0d22f621d127b20bfa8c8fd2ac63ffd5562d5493c57349c546d63e828c1537a14d3c3da333665f05da67bbe9f786263f96cfe757edecf4ab3ff0051178bb4a03a7d975299947d009587e95a56cadc0a9b9e4135e74d424f55f8b3d7a6e76dff0023396fa2b76caf8dfc69623fbb3cd230fc77c4453e4d496f2365ff00858770c7fbb7d6768ff9ef8066af193e50738fc6ab4c4f39e7d73cd66a852bedf97f91a3a9522ba7f5f332cc3fbb213c65a3cc4f79745d389fc3e51504b60df78f8a347c753b342d3813ff008e9abb70b1b7fcb34c7ba0ad9f0d7866090adedc5b4617198a3318e7fda3c74af2f34c561b2da4a725793d9597f91f4dc3b9262b3fc47253d29c7e2974f4f566143e1983528a292ffc616b0a2b6f8e3b7b1d3e23edbb11fe98ad28b49d2e05f93c77aa28e98b59e04ffd17166bb35b78571b218d47b20152190431b31f955464e076fc2bf31a998caac9ca4dbfbbfc8fe87c3e414f0f054a94525ff6f3bffe4c7187c3fa1dd644ba978a35951d51af6ed94ffdf210551d53c3ba169d6be65a78363490ba8f3af5537b77c65cbb738f4af41f33cc50d9ca91904d735e33b9db1db439e7993f2e07f3abc1d7956c4429c13d5ad2ff00e562332c0d2c2e06bd795972c5ec976f3b9c17d967dca6dd93498faf9362ce41faee38fc853aeece2f1458c9a66a5b52f23fde453c631c8e9227a11dc7bfbd7a8e93f05f51d53468ef3ed5142f226e489949fa73dabcfbc43a1de69374d04c9e45fdab6e4fa8edf4238afdae9e2b0f5dba506aebef3f9071597e268c562270b27b1c0dbb4cb34f637eaa2f6d8e1c601575ecebc743fcf3521b3833fea213ff006cd7fc2b6fc5d66754d220d7aca3ff004cb4526445e59a31f7d0fa91dab1ede44b98639a3c14914383df9af6b0f53da45c5ee8f8ec641d3f7e1a27f98e4023e13083a60003f951f5e0d2e3bd2aafaf7e2bb11e5f3736eca3a86ad069e55642d24add228c658d54ff00848b61cdc58dc5bc59c798c9c0fad3848ba5ea9713dca1314d8093aae42fb1c741579b52b1957e6ba8190f072e3047e75e77b49ca4fdf4ade87a3ece9c52f71cafd49a331dc421d4f991b8e31dc1acf8a76b2d3eee253f35b92a87d8f2bfe7daa1b5cd8ccd1d9c96f776f21dcb134caad1fd3af157e38de2ddbe2592798969177614003d7fcf5a7ed1d4577bf50f67ecdb5d1d9a1bb4d8dac7044dbe7618527a127ab1f61d6b4348d3d6dc08d7ab1cbc87ef39f5aa027b6b5b759fcb63e60c018cb9f615a1a6cda9bfcf1e9b128cf1e74e33fa0a994a105aefd2c870a72aaf952b2b9a7afdac76fa3ee933e7ee5f29b3f30f5c7e19a2b42cf43b8d4992e35231b84188ede2cec19ea493d4d15f2988a752b54734f94fb3c3ce8d0a4a1b9cbf278a08f7a76da0f6afbd3f351002d9ec314c9a64b7b79257385452c7f01529f5f5aa9796a752bcd3f4c1c8bb9c07ff00ae6bf331fc8567525cb16ceac353f6d55419d27846d3fe11ff000ccda8dcaffa5dd9fb4c80f5e461107d063f3abf6103410fef1b74ce4c92b0eec7fc3a0a9b5a9165bab4b61fea9733bffbabf747d338f5e95774fd0eff0056bcd3617b69ececefdf0b7321504a052c4aae7772a0e091debe2733ce30993d075f153b396a97576e88fd1726caeb66d8a8e1a8abb93b7925ff00009341d06fbc4d237d8a354b646d925e4d93183dc281cb91f80f5aeb13e17cd6f1296d5a4591d7729fb226c23d719c91f8d76b65141a7e96b6d6a7ecf0a858d6dd47cbb07f81fcfad3d9a3db17cd216fe318071cf18fd6bf98f32e37cdf1d5dce9d5708f48aede6fa9fd7d95f0464f97d18d3a941549757257bbf2be88f30d434dd43c3a435f471c968c702f6d89f2fd0798a794faf23dc50adc63f8bd718af4dba5b79e1960f295e190f2641c95c63071c77af27bc49bc3f25dc6e88f656d73f678dbce0242080ca150e0b603638ec2bef78538d258992c266924df495b7f2f53f38e33e10a197d2faf60172c6fac77f9aff22699be5e98e6b17c51af41e1fd12f350b829b2dd37624904618f61b882064f1f8d6bcc472be955e453232a46bbddbe555f5627815fb3d5a8a95295493b24af73f1ec2e1e78bc4d3c3c55dc9dac7838fda0f57b8d4956d7c2715c5aa37cf279b7053e85962e07fc06be93f01f88ae3c57e1bb6d4ae20b5b7698b054b29a49630a0e382e88c0e72318ed5b7a65b9d36ca386391891f33b64fccc7a9fcea7672cdb89c9ebcff2afc5b1d8d9e3ea7b49effa1fd6192e4f1c9a82a34dfbbbb56ea50875ed32e3589f488efeddf558504b2597983cd5439c315ea475e7daafee2391cd788fc64f821ac788ae86bfe19d6ee9758b573710dadccc72ade904bf7a3ff70e54fb75ad5f817f13b5bf18da4fa5788b4f95357d3c149af1536aee5e0a4abff2ce5e73d30c3241eb5c72a6bd9fb48bdb73d28e2a51adecaac5aedd99eb3ffebcd705e2dbc8db537dcea891e103336060727bfbd6ce9fab6a1af5e5bd95bdc5a40d2995679a35667b7f2f1b9403f2b1391839c0f4aeb34df07e89a6a9912cbed17ccff35c5d012bb7a92ed9e7e981ed5e253e26a19562635a30e771e9b6a7163b04b88b2e9d0a351c54dd9bb5ed67aae874df08bc591788fc3a9079f1bdcdafeed82383c76e955be2f7845355d1cea302ff00a5db72d8fe25abfe0eb7b3b1d64a49691c2655d9f242a8d9ec09eb5daea9a6816b2a1f9eddc6d653c91918fcabe9f29e2658bc4fd6947935db7dcfcfb36e17785c2fd579fda69a368f8fb4f7fb16acd032ff00a3de02c07a480723f11fcab8c5b4fec3d6b50d273fba8dbcfb6ffae4c727f23915df78d74d9747d4af225f964b49fcc4fc0e7f9572de3d455d5341d4d0616726dd8ffb2c3728fd3f5afdfe854bca3563b48fe59c761f95d4a2fa7e852ceef6a2976f1c7deef4bb7e6535ee1f1ac69c633e94cfb3c4fd634f5e501fe7527f3ac98fced6a4625da0d3d5b6ed4386908ebcf6158549a8d95aefb1d14a0e49bbd92ea3ee5ed6e99adade18e5988c1655188fdc91d314b71a942de6a9b76b886138926006011c7e3562f1e0d2f4e90c4ab1228f9554756ed496967f67d31606ea50eefa919fe75cce32526bcb5d3ee3b232872a76eba6bf78db864b7bbb6ba2b9b5542bb957eee7183f4aeb341f2a6457491648dba329c83f8d731a2b1934db67eac1029e9db8adc5d34c6bf6bb15582e546582fdd97d987f5ed58d6e68c3996ccd70dcb52af24b747676ea444083455386f964b68e54fbb2206193cf3eb4579ca3cda9edcaa2a6f959c1163464b547ba8c9afa9b1f19624dc78ab3e1387ed5e336763bbec96671ecce71fc81aa7bba568f8072dae6b6fd70215cfb609ae1c669499ea65f1f7dbf236d9fced56fe5ebb36c2bd3a0193c7d4d71b79f119bc03afeb36773a6fdb229a3867b2ccaf12c24020ba6ce739cf23d6bacd3e462b3391feb2791bff1e23fa541a8683a36b9756aface95fda76f0ee056390c52a86182c8e08c30e0804f38afcf78bb2bfed1cb27050e6942cd5b57e88fd6b82b1986c26674beb6ed07a5ef6b37b3bf434fc0ff001d2d755d15e7bdf102e9d7308c98afed7ce571fec3295627d8927deba9f06fc561e36f3a2b2bdd2639e2ea9771cd0bb2fa81bb1fad79affc285f05eaf0edd2fc6977a7dc3b65a1d56188e47a6d22339ff681e6ab9fd96bc430c6bf61f1068d7699c06db3c585ecc08dd93ed9fcebf95eae130f4e4e336e2fcd1fd791c357a9094b0d8bba7b68a5f8f5fbcf606f1a417905d95f16694a6d831921d39009320740f2b373f45af34d07e285878cf5ab2d3ad34992caee3335c3dd4b71e71957003e49e4b1f97d318ac793f659bf863b81aa78cb4882df1c33c2e73ea3e675c0fc4fe156fc13f0ee3f076a12ff0066ddb788351bc31e9fa7916e2dd6566c70a39382dd589fbaa4fbd7d370b65b4ab6634e5195d45f337aab5bccf89e29c1ce8e5f51e3b10ea49d9417c2b99f9753b79ae8bdf43656b6d71a8ea538261b1b189a69e403ab0518c28eecc428ee6b561d07c47e1891b53d7fc25a969fa6c7197fb4c324377e4fab4b1c2ecea00ee0301d78eb5eedf0f3e1dd87c3fd2e48e2db73aa5d80fa86a4c3f7972fe839c88d7a2a7403dc935d44d2c7046f2cae22890167766c051dc93db8efd3f2afd7b31cd678d83a0b483fbd9f9f647964729ab0c5fc5517dc7835b5c45796f14f04a93412a078e489b723a919041ee08e7f1a9297c27f0e755f145e6a973617a3c39e0a9eede7d31a1b756bd9e26c16f2c38290c45f7b2b156621b2001827b093e04e886dc88757f12457b8f96f1b5792439f531b03111cf4d98af8e58695f73f5bfedec3da3a3bbdfc8e3f3c63ad65eab691d8d9ea97b630dbdbdfcd030370536976553b0b91c9c7f5a9a117fa5eb5a8681ac18df52b108e2e225d91ddc0f9d9305c9da7e56565cf0c38e08ab37102dd5bc90c832b22957ce464118ff26b92a4651528adcfa2a156188846ac7547cf1f0d3e294ba57f65784ef74e3a6ea36d7198af194abc7337def317a32b6ee41c7cac08afa6341f1243737a9697d13596a71fccf67bc6e7c7f144dfc6bef8c8ee05791f8dfe18c1e39f2904eba678c2c62db65798023d4635fb8aff00ed2f4c8e4751904d79ed97c4af15f86fc4f6da378f2299f4f8d82b5bdd47f381fdf8a403923a8656f6e2bf36c5615d6a8f955a4b75faf99c52c3e232c93a9828f352776e37d6fde3fe47d7967a8cb6f7c2e15c99093b99be6273c1eb5eaabb2e2d406046f5e4fb115f2e785fc796fac6a0d67e1ff1041ad141b859ea4ad1ca07a24ca32d8efb94f4eb5f45687af7f6868f13ec513471812aaceb204603a120ff004aecc9653a739c25a7e67998dccb078c8c5d37cad6e9e8d7de7cebf176cfcaf175cae31e646037f2fe95e53e2ecc9e03b0973f35bdcc7cff00bae56bd17e21eb516b9e30bdb9b62c6cc058e3dcdb8923397e9c67d3dabcefc4e7fe2df5df5c7dab2bf84a3fad7f5be5139d4cbe93a8b95d969fa9fc7b9e4a12ccaaba6eeaeca641e47bd14848fa52ee19afb43f3292f798bc98c81df8aa30c771a7c6618a359e12495fde6d233db9abbf2f6e94a641d2a254d4b57a3f235854705cb6ba28259cf7934725d950b19ca4319e33ea4f7abc7e6e7a668dc3b70685c153cd28d351baee13aae566fa15349916d667b394ac677968b7100329f7aeadb56b6b3882f9ab2cec36ac319dcce7b0acab58a099956745923eeaea185745a5d8d9c259e08a2848e328801af27111a89724763d6c1ca9ca4e6d3b8c9237d3b4fb78d8ed915006faf7a29bad5cab46aa5c657eb4569429da9a46589ace555b393349b8fad33cc0dce28f338e95edd8f36cc9371ad4f0049b758d6d0fde2216fc304563f99c74ab3e11b8fb378c258ce765d5a763dd5b3fd6b8b191bd33d0c1e9297a1d0e9f916f229392b2c8bff8f1ab0dc5578ff757d7b1741e6ef1ff000203fc0d5bb3b39afe4db0c65fd5ba01f535c326adccf43e868a954e550572cc28b2aed75575c7dd7008fc722af59f86ece6864ba96d60b7b3894992510925bd9540c9fcaade9fe1d66ba8a195c74df26ce005e9d7d49e2b86f8c1f101dee5fc2fa4cad6d6d0a817d342769e9910291c8183f31f703b9afcaf89332a33a9f56a714edbbb2fb91fd1bc11c395a8d28e3b16dabfc31bb4bd5fe875be0dd63c15e2ebabeb3d1ed81bcb1c1944f6fe5cc01e03293d4678e3919e457a1fc18f0c9bbf885aa6a7711ef8b46b7105ab30eb34d9dcdfef08d71ff0335e21fb3ee8a3fb4b57d50288ede0856c62da30324877c7fba02fe75f4dfc0dd406a1a3ebd2155565d51e3e3a90228ca9fd6be2b07295172852d232dcfd1f3ba74ebe1154c424e517eebff238bfdb07e3d6a1f05bc17650680f1c3e21d5e468edee6440c2de3400bc814f05b9006411939ed5aff0ef58d6be26f837c15a5f88d8cd3cfa547abebcde584f3d0b91042c0003f7870cc070551877adaf8b7fb3d7863e346b9e1dd43c44f7857477722dada40a972ac54949090481951f7704f2322b4fc236f3bdaf8cb51b08e34bb9af65b5b48f015556de258e241e80317fa67b57a6da69773e1b5326d3f68df07ea5f184fc37b496eaeb5d50eb25c43129b549554b18b76ecee0a3a818078af51ff26be49fd903f66cf12f82fc59aaf8e7c756df62d6a512456b6924ab24bbe424cb3b9048e7900673f3135f5b719f6ec2a6492d811e3df17edc5bfc41f0cdd8186b8b1bbb6723a90a639173f420fe7591e95a9f14ae9350f88fa55aab67fb374d9a7931d034cea8a3f247fcab2ff9d79389b73fc8fd1f24525845cddd9c5f8ff12496c84708a5c1ce0ab646083d41f715457c5c354d24e91e27d3e2f12692f80fe62a89801d09078623d46d3ef563c75266fd07a20fe66b976e3be066bedf2ce1acbf3acae2f131f7aeed25a35fd79dcfc778b78af33c873f947093bc546378bd56df999baa7c1bf0cde6a0da87833c5a3c277ad86165a8236c4603aab33061d077615cd787bc3fe39d235eba8ee3c4be5db19737571637de724c7a909803191d493c67b9aee59837cadf30feeb0e2915d57033c6381e95181e01a585c57b5ab59ce9ae8d59fcdffc03c9ccbc4aa98dc2ba70c3463564adcdbe9d74b7ea3b88d7006c0a3f41583e276ff8a0a08f3969ae131ef99735aba85c08ace520e5b6e17ea781fad63f8cc88d341d397aac9e6bfd117fc4d7eb0a0a2a315b687e1f39b94f99f995d875a4c7bd47e60e39a5f307ad7bbca7ca3bb771ded4537cc1eb4dde3d68b05876ea72b03c77a8c60e79a747b73c1a4d01a1a7b2acabb86e1f5ae86e19638418fe5dd5cd4606d0735a4fa92bdbac2ebf77a735c35a3cd24d1a50aca9f32652bcb8669d8b1f6a2a0b8756e868add2d0e7d65ab3377b537cc350eef6a371f5aeeb1dbca58dc4e05363bafeced7349bcfe08e6f2e43d3e571b4ff004a8c311dead69fa0bf89ee934d59046f7195573fc271907f4ae7c4457b3773b309172af18c7ae9f79df7f624b71ab5a4d2662b7ba0d0993d5d46e18fc37575fe45be9b661220a19781ee4fad62697a9c9e2af03db7cbe4ea96988a55c60c77311c11fa7eb4cfed64b9b78ae4f264ff00967dc37753f439af8d94ea574add3fa47ea79650a380f72a6fdcb5e21f1745e0cf0a5deaf3ee92eae038b750382caac547b0e2be7bd3f4fbed5afa1b1b656bdd52ee43c779246259dd8f600e493d857d15a9784f4df88be098f4cbe9278d148225b570b24720ce08c823a139073904d2f857c13a1fc3b5636c64bad46ebf76d7574c1a69067850000aab9f4c0f5cd7e158897ef26e6f5bb3fae30b4dca9d35457bbcaad6f42f787fc2b1f857c2d6da2d9bef65044b72011bdd8e5e4207bf41ec3d2b5be1d78badfe19f892f6db5991ad747d58a335dcae0c56d708bb0331ed1bae0163f75946700e6adb3246a598e00ee4f4aaf796f6f78bf67982481c6e5562391f88f7ac235254e578b3a31183a58ba3ec64b4e8fb33df639a292d56e5658ded986f130706323d4374c7d0fa5705f08fc47a76adff00096d8e9fa85b6a22c35c9c996d641226d942c830470792eb919e54d78f47f0f745826dc744d36ea227a4900523ea31b1bfef915b6af79e16d461d6f419ad6caf2084412dbdc21fb35cdbe73e5385195c1e5594654fa8241ef8e2e2f46ac7c856e1ead04dc26a4cfa1f18aabaa6a969a269b75a85f4e96d676d1b4b34d21f95100c926bcd97e2a6b57f6313269969a44ecbfbc592537441f6e107e633ea2b9cf13de6a5e2e82de0d4b5169ada1904c2d442a9148c395de072e14f20138c80714de260b639a8e45899d9ced1f5ff00817336c6eae75cd4354f105ec6d0dc6ad28956071f343028db0c67fdadb963e85c8ed5a1dcd5659ae237025884c0f1be2273f52a7afe1563a64579b29b9bbb3ef28d1587a71a71e8705e3cf96fd79fe05fe66b97f4ce48aeb7c7cbfe93037aa607e75c8ae7bd7ed7c2524f2c8af367f2bf891071cf64fbc63f90818a934e5fba72290afa523b7968598e028ce7d057d8ee7e5ce36d48d41bad42da0c7c887ce7fa0e9fae2b98d5af86a5e2cbd941dd15a462d93d37756ff3ed5d0dc5f0d0b41bcd5641fbe946634efe883fafe35c7585ab416ca1d899dc992527a963d6b5a30552b6bb44f36acad0949f5d0bdbfdb8a50ddea065cf7a3dbbd7afcbdcf1f9513f987ffd549e67cdd2a1036f7a3bf5a395072a272e3bf4a58a4f9b8aae57de9f029ddc9e94584e3a1a51ca5587a7a6689e60cc5ba67b543182dcf1eb514cd9eb5872ab9cfcaae48d20cd155f1ef4569ca8d394a7f37ad2ae73d6a0dc7382734bbb9eb5d3a9dae2cb233dcd6bf857555d175eb2bb6fb91c803ffba783f8d602b9663ce29779e064d67529fb48b84b636a13950ab1a91fb2ee7adeb122f837c60ba8060ba2eb8ca93b7f0c3738c249f461c1f7c552f115bff65eb1e72fc96b391e60ed1c878cfd1b183ef8ab3a15c45e34f03bd85f2f9a611e4be7f897b11eff00e1595a4dddc1ba7f0e6b3fbdbb8e2c412b0ff8fc807420ff007d47defa66be2a11742ab8cba68ffccfd4f34a6ebe1618ca0af196be8fa9b5633c96d223472c91f20b6c62bb867907079aeeae34c87ec570b12619d3fd631258f719635e65b65d2664b59cb49137cb04edc139fe16ff006bf9d7a1f87f507b8b35b7b8468ee235c6d71b772f4047af6cfd2bf38e2cc0a8d48e269c559ef6efdd9fb2f86f9ccabe1ea60aacdf346cd26dedd52346d6417967148fcf9880b023d473f5aac2dd430b398168cfcd09ce0ae3f841ec4763e94fd24edb568c73e548e9fae7fad5a9225931b86769dc3d88afcf7748fda1c9c24d0db75921565925f300e8d8c37e3ebf5a8554dcdeb16e52df0157d5f1d4fd063f3ab7fcaaad88c7da549f9965271ec4023f4c50c98bba948b5fe7de81451564051451408e43c7d09f2addfa0e413f91ae1ce3d78af47f1adbf9fa3eeee8e3f23c579973b707b57ebdc1b554f0b5295f667f3778a18774f1f46ba5f147f264e17d0f1e955fcafed2ba16d83e546434cddbd973efdea2964769120840370fcae4f0a3fbc7d05695aefdabe1fd1887d72ec132dcb2e459c3fc7337a31e8a3bd7de56aab0f1e63f19a74658cacb0f4b46ce7b51d3f52f1b6b1e569b692dc69b60db5a454c46d377f98e0617fad5dbcf86fac69d18693eccccc321566dcdf876af5dd2edadfc2fa2dbd869ea23b681422eeeadeac7d493c93593aa37daa30db8939c8ec2bcda38faa9da0925f99f7bfea961bd8fef24dcadd3a7e07894b1496f2b452a98e45382add45309f7aec3c79a627d952fd70254608e47f103d0fe06b87dc7757d7d0abeda9f39f9563f02f05889526f6276cf4cd2739193506e1ebcd26f2bf8d74d99e772b2d7ad4911dbd7bd510c7f2ab11b1e9532444a25edc76819c542f9068ddb5783559e43eb59c56a6718327ddeb4554690fad15b599af2109cfd3de9c2a0121f5a7ee3c0adb94e968981eddfb522b37435187656a7c2b2cf2a471a3492336d55419249ed594ad1577a21c60e5a2d4f4ff832cc1f51c8fdd7c99cf4cf3fd2bb0d7bc1d6be26b5686557b696293ccb6bd85b6c96efd994fad47f0ffc327c37a2a25dfc97321f3265f46c703f01fae6ba392ee28d888d8640e057e738fc473e225286a7f43e438174b2e850c42bdd6bf3391d3fc4922487c2de2f8a0fed0906d86e94620bf51d0a1fe193b907bf4a9ef45df87f62de4935d58c67f757e99f360f6907523fdac1f7abdae69765e20d3decf52b58eea06e7632f21bb153d411ea2b8b6d6358f04eab6ba621b8f1369b701fc9873baf20555cb7cc7024503fbc41fad70fb355a2e13574f74ce5c4e1abe515162b0b36adb3eabe5d51dff862e7ed96f71299165dd364489f75b81c8ffeb56cd79f785b56d1b52b8b94b1d55f47be7973f62661038e3bc0e307f0aeabfe2776d8f9ac6f171c79a8f031fcb70afc9b1384a74ab4e34e5657d13d3f13f78c0e6d2af87a756b2bc9a5769dff0005afe06bfe3552eb36b28b840c62236caabd71d987d3f95541abdfc7feb74698ff00b56d711c9fcf69a3fe12071c3e97a9263fe9dc37f2735c6f0d53a5bef4ff0053d38663878f56bd535f9a3511848a1948656190cbd0fd3da9d581fdaeaaccd6b67aa42fd4a1b16d84fa9191fa1a923f115c6df9b45d433fde4886d3f8330c51f57abd558b78fc2b5753bfa1b74564ff006c5e337c9a2dd7b19a58507e8c4fe948d73addc3623b3b1b51eb2ced31ff00be5547f3aa58797da925ff006f2ff873079951b7ba9bff00b75ff95bf12e6ab6a6f6c27887564381ef5e3175e635f496d02079b3939fb883d5abd2f58b8874a84cbe20f122d9c07fe59abada2b7b7f7cfe06bcdfc417d2dc4727fc225a7492d9b65a3bdb98da2858f709bc6e90e7bf4afb5e18ad1c0e2649b6e33d2f6d2feaec7e4fe2053966d808fb38da54dded7bc9a7be8afa2f533b59d6a2f0bc46dedb175aa4c33893affbcfe8a3b0ef56be17f8c20f0addddc5a9b1905eb2c935ee0160e3a67fd9e7f0af3fb66f315e772cd73213e6bc872c581c1c9fa8ed537987b73ed5fb747010ad49fb5d5b3f9af0d8dab97d75528ef13e9c9963bab5596191248d86e465604107d2b0eeb31c6636e78f9587f10acaf8453bdd7856588b92b1cecabbbb0201adabe2be5aa938657c03ea31cd7c74a93c3d674bb1fbc60f11f5dc246ba56724719e3184c9e1fbae082bb587e045799b6ef5efeb5ecb796f1ddc324328063914ae3ae47a62bc9f5fd0ee342ba314a8de567e49b1c3fe3ebed5f5996d48f2ba6d9f9671360271aaabc55d6cfd4a39f7a4661c1ef51f3de9ad5ef729f05627560e703ad5a56c01eb5422c6ecd595607be2a248ce712691f6f7e6a0663f5a64b266a3dc692884624acdc75a2a0dd8fad15a58be51228e49df646a5dbfbaa327f955a6d2efa35cb595ca8f568587f4afa2349bbb3d023f2f4dd2edec91ba98d3e63f8e7fad5abaf125c5d738603b6735f18f8922e5ee256f368fd4697085371bd4adaf923e73d3f43d4f5498476b63713bfb46c00fa93c0af55f00f8257c30c2fefbcb9aff00f8113958877ff817f2ae9aeb519a66e8c6aa319719e467bd72e2338facc7d9f328af53dbcbb87707819fb59cb9a4beefb8d793505238259dbb76142e15433727b567db5bcadf30196ad25b1b8f2b2549e3d457cf4f114568a4bef3efe9548a5b95ae2760ade87f4ae47c5700cd95f4176b67a8d9b99206752e24c8c32328e4a91e9d38ae935899b4fb40eca649a4709145bb05d8f6ff001f6ac96b78ce98896f2adddf6a4fe4bdcc7cfcb9f9c2ff00b2a0115f1f9ef1353cae3ecf0f69547f72f53ee721e13ff5857b4c4b6a8aedbb7e5e9dca5078934db8d1e187c5fe1e9628e4ccbf689ad7ed56a771ce43a82c9ff0202aee93a07862f943786fc497361bba47a66ac1d07b794e587e95d5c4a218c2c7f2a8002ed3d874acbd53c23a1eb6c5aff48b2ba73fc7240bbbfefa1cd7e794b3b8daf34e2def6775f73ff33ec713c272e6fdc4a324b6e6567ff812ff002117c39e28b35fdc78a7ed2bd9751d2e373f8b214a63af8deddb21bc3d7abe9b6e603fcd8567ff00c2b1d0139b68af2c5bfe9cf509e2c7fe3f8a7ffc20710e22d7bc4507b8d55dbff4206bb56698496f2fbe097e4cf25f0f6631da3f7546ff00068bff006ef18e71fd8fa1b7b8d466fe5e56698d3f8da43f25a78720ff007ae6e24c7e1b16aaaf82ee57a78bfc47ff008169ff00c6e9c7c1924836cde26f114cbdb3a86cff00d05053fed2c12d9aff00c05ff992b21cce5a34ff00f028afd2e5b5d2fc6d74007d6b48b31eb6ba7492b0fa6f931542ff00c326dd0bf887c75a9793dd45cc3611fd32a01ffc7a9cdf0ff4c917fd22eb57bb1ff4f1aa4e7f40c296d3e1bf85ec64f31342b3797af993c7e7367d7e7cff003a89671868ea9bf9462bf1bdcd63c338ea8ed34ade7393fc2d631f4fd4be1ce8b70d26956f0eafa803cbd9db497d704ffd7421b9fc6afeaf75e20f195b3db5a698740b561ff1fba9b2b5c7d1225ced3eecdf857570c6b6f1848916241d1235daa3f0a5ce3bd79f573a77e7a516e5d1c9dffc91ed61b8523156af3f77aa8ae54fc9eeff00147ce1a8e8371a34d2db3c326226da4b293cf5c923b9ebf8d36c747bdd46658e0b695cb9da1bcb6da3dc9af77d774d95585fda02d3a2ed96153feb93ff008a1dbf1aa7672fdae159a3f9e26fe20719f6c763ed5fba70df1c471d85f6388b2ab15f7aee8fe75e32f0d6395e33eb38497ee26eebfbafb37f90ef09db47e1dd2e2b1f95a41cb48bd0b1ea6a69d44921efb4e41a5581d4e550afa734a219790ab926bba78fa129b9b9eac8c1c6387a2a95f45b103c6ae30fd7d476a866b34b885a1b8892e2161821867f4ff0ad24d3e5651b804fa9a7b696dff3d97f2a6b31a11d79cbad0a3553e6d7e479ddf7c3ab3ba90b5adc35a8fee101d7fc7f5ae7354f026ab6219a244bb8c73ba127763e87fa57b19d342f1bc127fd9a6ff67edc02c057a70e20853de775e8cf95c470fe06b2765cb2f2bdbeed8f9fe30636391839c63d2a65f98926bda75af86b67af42d206fb35d9e9344a4eeff797bd6149f04e6f2891ab47f4f20fff00155eb478932fa8bde9d9fa33e1f15c338ea752d49732eebfe09e5d27dee071519cd7a43fc17ba04e35387f18587f5a8a4f8377abcff695b9ff00b66d5d4b8832dff9fabee671ff0060e62b7a7f8aff0033ceb34577927c1dd587fabbbb56fa865fe945747f6e65dff3f511fd8b8f5ff2e99ed4da3ac991e4e0fad35b4123fdd2793e95e57ff0b43c75931aff00c23d193d66092e47be0e45317c7de3a8d5a37d4f4db8898659feccbbd7fdde31f9d7f21cf8f32683d24dfcbfe09fb73a356d77167ac0d1dba2a0623a81daa35d1cb37fabefdebc9bfe16578ba3e23d5db8e8ad6b114fc82ff51496ff00137c5b6b2999b54b7b86639315cda831fd38208fcea21c7995c9ded2fbbfe098a525a347b2c5a7c903331462a71c8e7f4ad192dc85e9850396f4af1693e3878a94a08ecf4340bc9f92624faff162b434ff0089be22f19cff00d9aeb6f6e2e414945bc5f2a478e4ab37cc0e3dcf6e2ba25c5d9654b2a536df45667bd94e0ea6638b86160be2763a4b355d6b519f5071bed543416c186432f477fa1c607b0a8b41852e6ea6bc4458ed6206ded554614283f330fa9fe5526b52182d60d32cb0935c7ee630b8fdda01cb7e03fa569dadb47676f14112ed8e350aa3e82be3ead5788acea4f56cfeb6c2e1e180c2c70f497ba9597f992b10abc9fa9a33b8020e476351dc5bc7756ef0ca3747202acb9eb9a7451ac312468bb51142aafa0030298f4e51d4514504851ef9c52e290f1d680ea57b6be5bababb842e0dbbaa9f72466ac7e39acad04eeb9d59f1c9bb2bf928156ecef24bab8bc8a4b668042e11198e44808ce6b38cb4d4dea53b49a5d116a8a291dbcb8d9cff000827f2ab6ec8c56ba0aac0f2187bf39ac5bbb37d1ee1efada169ede43bae6d57ef1ff6d3dfdbbe2acf8779d16ddcf59774a7fe04c4ff005ad2ad28d59d392ab4f492dac618bc2d2c4d3961f111e683dd7f5d48a186d750b44b9b702789c654a1e1bf338e3d2b42d74a5fb39760176ae485193f90eb5c9eab25d78556e350d3eda3bbb66fde4f69212aaac3a48bc707b73f5ae6a2f8d5e25791997c3da75b107e4dd3bbb01eb8000afb68f15e068535f5b7cb23f99389b872ae455ed17cd4e5f0bfd1f99eb4da2a9da1ceddc32bdb3f850de1f89002ceeb9231b5375799c9f1b3c4f3425134ad36ddfaf9eecf203edb78a8c7c78f12f97e59f0e6981d463cc174fb0fb8039a85c6994ddfef3f067c774d99e9d3786dba45286239c32d42ba0dc2b0575f6e6bce6d7f682d4ede375baf08bc93f50d6f7e3cb3f4dc0902ac59fed1ed23013f852fe1907042caae9f5ce01aef8f15651257f6cbee64f3773d3e3f0fbfdddaa07d714975a20815433a82c76a82fc93ed5e733fed1d725bcbb6f07dece7fe7a35e44a9fe348bfb444e8a1afbc1d7a157f8ad6ea39d87e1807f2ae4ff59f2972d2ba3a54b43d0d3402f962482df8fe9537fc23cb19cfccdfef74af395fda104b2092dfc2ba9bdb1eacf3c71b0f7087afe75664f8f16eac8c3c39aa4e58636acb171f519ae98713651d6baf9b317ef743bbfec721b2320515c04df1f656c08fc21a930cf3bae2241d3d68a6f8b3258bb3c444391f6679546831fbc9b3ec0d4a1626fbace4f705ab1a473bb8507e8d50f99f301f38e7aeeafe5afabc4ebf6c6f4b15b46b9790a9fa935524288bfbb94b9f7e3f2ac4bcb8b86b4ba1133642301cfb545e0db8b9bcf0b69934c1773423391cf048fe95b7d5631a6ea5f66473393d8d6378a8c4156ce3bb57a87c35b04b7d227d5a70b19986159fb20e4febfcabcda0b57bc9a385235669182a8cf72715ec17568ad1d868106163d81ae08ed1af51ff000235ef647874e6ebf6dbe67edbe1de5aa7ed71b5169f0afd5fe859f0fc6f7f2cbab4c0ab5c0c4287aa440f1f89ebf956cd22a855014600e00f4f6a5da6beea09247ec339f34b99ecb6128a5da68da6acc800cd252ed346d34007341078fad1b4d2e0d1d434b991e1dcb2ea2fd9af24c7e000ad6c9efd6b2bc3bff1eb778ff9fb9bf98ad5ace9fc08debbfde34159de22b836da2de48bc3794547d4f03f9d68ed3591e26f9aca084f49ae6243f4dc3fc29cf48b151d6a246859db8b5b3b784748e354fc854d4bc9cd1b4d5ad8ce4f9a4d8d645914ab00548c1cf4c77cfb5796eb9a58d23539ed1622ca3e78db1cec3d01fa1c8af54c7af4fad79cf8fb5c82dfc4515bc72c6f771db82f0aba970a5b8257a81c75af9dcfa97b4c1ca496ab63e638928d0af955755fa2baf268e6fca0d9679648c7f776f15118e25eb3bb1cfddc7353bea7773464a8555edb79aabf6e7552b326f19ceeef5f97a5596b3b9fcd53f651d20ee6be97a2fdb34ed4eedc7fc7b441933fde2703fad45269de4f864df1887da1aebc85e3a2ed24feb8aa91dfca21748a46f2df05955b00e3a669dfda574b6cb03339895b7ed63c67d6b7f6b1d8e662e97a5cb796fa8dd1678d6d61f30f1c33646d15516ea47e320fd45598ef2e16392352c124003286e1b1d3352436ef39ff005600a4d465b215b4218664909dc114f7e735398d3702241edb4f357174bb365065ce7fd8a72e87a583b8cb3a9f66153ec2725be82d51459580cabe476e68a9ee2d6ce1ff005534ec3fbadb7028ac3d84c3da33995fba7eb5565ff587eb4515f41139d13daffc7ac9f4a6e83ff205b1ff00ae428a2a6a7f0e5ebfa1ad3ea749e18ff91834effaec9fcebd3ecffe46cd4ffeb845fccd1457d5645feeff00f6f1fd23c05ff2277eb2fcc9fc3fff001ef75ff5f527f3ad4a28afac5b1f715770a28a299905145140050bd68a298919ba1ffa9bdffafb97fa5688a28aca9fc08eaabfc490b591e22ff985ff00d7e27f23451454f84587fe22f99af4ab4515a9ce0d5f1cf8e3fe4f16e7febda3ff00d27345159d6ff77abfe167c4f167fc8b647aedaffaafc47f2a8e6ff5828a2bf229fc27f3b22bdbff00c7cd6b2fdc3f4a28af225f107464b1ff00abff008154b27dd3f5a28aeca20364ff0054df5a86e3a0fa0a28af496c0ca4bd1beb4514562739ffd9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'sintyav', '123'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_post` (`id_posting`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_posting`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_posting` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_posting`) REFERENCES `konten` (`id_posting`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
