-- -------------------------------------------------------------
-- TablePlus 3.3.0(300)
--
-- https://tableplus.com/
--
-- Database: telegram_bot
-- Generation Time: 2020-08-10 16:11:12.2860
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `teleg_bot_app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telegram_id` varchar(10) NOT NULL,
  `username` varchar(32) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `registered_at` datetime(6) NOT NULL,
  `subscribed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

INSERT INTO `teleg_bot_app_user` (`id`, `telegram_id`, `username`, `first_name`, `last_name`, `registered_at`, `subscribed`) VALUES
('2', '999999900', 'cnqiccvyny', 'jyeacmerdn', 'kbewmdrwqx', '2020-08-10 10:22:19.041411', '0'),
('3', '999999901', 'tmvdsbyfka', 'xpfdhhtqny', 'lflxqrsjyw', '2020-08-10 10:22:19.044091', '0'),
('4', '999999902', 'gqhaibmkmv', 'wxxvyniaaw', 'kgzyropbmo', '2020-08-10 10:22:19.044694', '0'),
('5', '999999903', 'zzhruacnbf', 'npnlgmvbbv', 'lpgndiofya', '2020-08-10 10:22:19.045275', '0'),
('6', '999999904', 'yptxotayrr', 'gmcvvewmez', 'cudveedepf', '2020-08-10 10:22:19.045853', '0'),
('7', '999999905', 'mvivrqlosu', 'dllfyvimue', 'djkluoxzgq', '2020-08-10 10:22:19.046394', '0'),
('8', '999999906', 'xobszlbsdp', 'cfnmfqkjee', 'xfxvikyowj', '2020-08-10 10:22:19.046949', '0'),
('9', '999999907', 'inmmvivunc', 'qvdhrvszqz', 'mxtxavrwgu', '2020-08-10 10:22:19.047508', '0'),
('10', '999999908', 'amykrknovh', 'dijllhnrll', 'ckaluyimvk', '2020-08-10 10:22:19.048076', '0'),
('11', '999999909', 'votwjpuvxc', 'jlqtznqstd', 'ahjyukfbvi', '2020-08-10 10:22:19.048654', '0'),
('12', '999999910', 'kcgfckqinw', 'uphkodpcyb', 'qakjtozppl', '2020-08-10 10:22:19.049375', '0'),
('13', '999999911', 'nftyzwodxq', 'jtuungwqti', 'igwwliszqi', '2020-08-10 10:22:19.050183', '0'),
('14', '999999912', 'qezmkxslxi', 'gmqxsvxdwg', 'bhjvyehyph', '2020-08-10 10:22:19.051079', '0'),
('15', '999999913', 'bojhxhoylb', 'jxvgdpyiuh', 'ohubvgsuhx', '2020-08-10 10:22:19.051774', '0'),
('16', '999999914', 'nybqlfclqw', 'zpmyiqamtv', 'wjiybbvohm', '2020-08-10 10:22:19.052519', '0'),
('17', '999999915', 'ouypjdwoqh', 'visxbgyqrv', 'zeusdrjymm', '2020-08-10 10:22:19.053203', '0'),
('18', '999999916', 'uqsbpuzrfc', 'rgbrqmjffi', 'bdiwhbofct', '2020-08-10 10:22:19.053869', '0'),
('19', '999999917', 'mskdlduvmo', 'vhrvazroge', 'xbkibpebfv', '2020-08-10 10:22:19.054554', '0'),
('20', '999999918', 'xaukuvjbyr', 'oubabqjdxn', 'yqdlwqodkp', '2020-08-10 10:22:19.055164', '0'),
('21', '999999919', 'wccqgmswpx', 'czgqxowcdu', 'sqmjjdlgms', '2020-08-10 10:22:19.055794', '0'),
('22', '999999920', 'aooxsxknfy', 'xlwfyrgnhx', 'pjvmtzxcxa', '2020-08-10 10:22:19.056415', '0'),
('23', '999999921', 'dgdttxlaqz', 'drqnqiecsw', 'pfhzjmudgu', '2020-08-10 10:22:19.057073', '0'),
('24', '999999922', 'cnggkbxuyy', 'ypnlxfaurx', 'qfymotrpnu', '2020-08-10 10:22:19.057662', '0'),
('25', '999999923', 'nrqelguzre', 'wroueblgub', 'pmyicnjqkd', '2020-08-10 10:22:19.058303', '0'),
('26', '999999924', 'gxkhswupqi', 'pjdxvyvmqa', 'boialckhak', '2020-08-10 10:22:19.058885', '0'),
('27', '999999925', 'jmcfwlklur', 'iczfumyryx', 'ayheogeujb', '2020-08-10 10:22:19.059464', '0'),
('28', '999999926', 'cyvrvrfvtn', 'oppjpmaqck', 'esgzdopuie', '2020-08-10 10:22:19.060045', '0'),
('29', '999999927', 'ixgztuxhaq', 'skqywssirb', 'xxuixxfnqk', '2020-08-10 10:22:19.060626', '0'),
('30', '999999928', 'ruhghckxjr', 'hzdkaontjd', 'gctvxnvxnd', '2020-08-10 10:22:19.061229', '0'),
('31', '999999929', 'dnchkgxved', 'ivtfyjjyuw', 'xjnoosbjps', '2020-08-10 10:22:19.061795', '0'),
('32', '999999930', 'kcfduezhin', 'gtndfkznst', 'muntzfhpxk', '2020-08-10 10:22:19.062329', '0'),
('33', '999999931', 'pypdlipzoy', 'tlotwbalvt', 'acuaprhheb', '2020-08-10 10:22:19.062836', '0'),
('34', '999999932', 'vyygofbjlg', 'zrkitbakbq', 'hrsmsoubjg', '2020-08-10 10:22:19.063302', '0'),
('35', '999999933', 'zqayksztxd', 'bchzvwqdea', 'xgtzfewkkc', '2020-08-10 10:22:19.063811', '0'),
('36', '999999934', 'swnhgqqjap', 'dakxrnnokt', 'owpdotbzko', '2020-08-10 10:22:19.064347', '0'),
('37', '999999935', 'kdoxeinnuu', 'tmshdyswqs', 'vgmqycahdt', '2020-08-10 10:22:19.064872', '0'),
('38', '999999936', 'sdrcqnwupq', 'mjktvqkcbl', 'cwwygdnhzt', '2020-08-10 10:22:19.065365', '0'),
('39', '999999937', 'iknazoszyp', 'wcxvadykag', 'ommjfuuqzr', '2020-08-10 10:22:19.065872', '0'),
('40', '999999938', 'xzetvwlqnf', 'zuexymoynb', 'vhllwdxicl', '2020-08-10 10:22:19.066394', '0'),
('41', '999999939', 'jyidvtbfkl', 'hbyohcpobe', 'tauqxnhavd', '2020-08-10 10:22:19.066894', '0'),
('42', '999999940', 'ulyzlauhao', 'becmduucng', 'mdlsoxiehw', '2020-08-10 10:22:19.067405', '0'),
('43', '999999941', 'peehdeeanj', 'skkshjkuic', 'gafwstkscj', '2020-08-10 10:22:19.067905', '0'),
('44', '999999942', 'olefehvqdc', 'kbfiwzyhte', 'vbxkymqqhp', '2020-08-10 10:22:19.068441', '0'),
('45', '999999943', 'khbxfcytmz', 'eeaaujuakz', 'bdnzbakxlj', '2020-08-10 10:22:19.068952', '0'),
('46', '999999944', 'cnornujwvu', 'xuxkdqebow', 'propmmcvsj', '2020-08-10 10:22:19.069452', '0'),
('47', '999999945', 'gvalvolrsb', 'sncheyxdtk', 'xwiduilyad', '2020-08-10 10:22:19.069973', '0'),
('48', '999999946', 'mrzwycvdsm', 'bdmbboroxd', 'qgnzehcfbz', '2020-08-10 10:22:19.070491', '0'),
('49', '999999947', 'oklsiszvqo', 'cugtyupbbb', 'mxarkhljta', '2020-08-10 10:22:19.071002', '0'),
('50', '999999948', 'yacqyvnhlh', 'ixhcpkkxnm', 'ufzqjmgvuw', '2020-08-10 10:22:19.071515', '0'),
('51', '999999949', 'bpyjcyqotm', 'ynyftqofxx', 'eumdywfeym', '2020-08-10 10:22:19.072005', '0'),
('52', '999999950', 'gyizylbehl', 'sjodzrxsio', 'ilbqrzvneg', '2020-08-10 10:22:19.072519', '0'),
('53', '999999951', 'iromkqhrmg', 'agwozrrsaj', 'xdflvsgaiz', '2020-08-10 10:22:19.073001', '0'),
('54', '999999952', 'xzyeqpdywp', 'nglvzpdqbj', 'uxzjcsyvwo', '2020-08-10 10:22:19.073526', '0'),
('55', '999999953', 'uczkvprfgi', 'qyxahewtsy', 'mxftyngbju', '2020-08-10 10:22:19.074042', '0'),
('56', '999999954', 'vfbdenqqpk', 'wvmgnzrjjv', 'uonpvwvnex', '2020-08-10 10:22:19.074557', '0'),
('57', '999999955', 'kihgdbshcz', 'nmnkbektuz', 'nyfbasbglt', '2020-08-10 10:22:19.075070', '0'),
('58', '999999956', 'cvuetmzbra', 'kjqfghagci', 'grnttminez', '2020-08-10 10:22:19.075582', '0'),
('59', '999999957', 'zxkdmfzxfm', 'fpewehohpg', 'pmxfhjvtwh', '2020-08-10 10:22:19.076094', '0'),
('60', '999999958', 'rarqygkvcr', 'xyeoiewycd', 'yleluaooeq', '2020-08-10 10:22:19.076670', '0'),
('61', '999999959', 'gfgfmqzflo', 'mexmzrxjlp', 'gtxwfqdwtg', '2020-08-10 10:22:19.077378', '0'),
('62', '999999960', 'kseltjwznz', 'slmljucsfh', 'vsflwxjgdn', '2020-08-10 10:22:19.077989', '0'),
('63', '999999961', 'dsdojbkafm', 'ztazqoagkn', 'vgzyykexfd', '2020-08-10 10:22:19.078605', '0'),
('64', '999999962', 'arnpfsjfto', 'nmqwzsjbbu', 'wggmovcuzw', '2020-08-10 10:22:19.079181', '0'),
('65', '999999963', 'deafgyidci', 'jwdvnodqtr', 'qoqmookmug', '2020-08-10 10:22:19.079752', '0'),
('66', '999999964', 'ukedlneawf', 'icroekacgo', 'nkwcaivwoj', '2020-08-10 10:22:19.080305', '0'),
('67', '999999965', 'lsqrhwhscn', 'fofewqwzww', 'gkxfvwvsyq', '2020-08-10 10:22:19.080831', '0'),
('68', '999999966', 'cidrzjyevt', 'sckozimuxa', 'dqsatlutqx', '2020-08-10 10:22:19.081361', '0'),
('69', '999999967', 'cvzhhkntqz', 'qtvprbbfwm', 'ennpeiyiqa', '2020-08-10 10:22:19.081874', '0'),
('70', '999999968', 'lkmepgkkct', 'cnsovtvwpp', 'hwyurcjzgo', '2020-08-10 10:22:19.082434', '0'),
('71', '999999969', 'frdputdsff', 'xoswvvdyha', 'cbmnfsqohy', '2020-08-10 10:22:19.082984', '0'),
('72', '999999970', 'gwhixannra', 'owfplojdja', 'qvfgzfwkyu', '2020-08-10 10:22:19.083517', '0'),
('73', '999999971', 'lhvztjldjk', 'dlpjgsxalh', 'zactneyrkg', '2020-08-10 10:22:19.084019', '0'),
('74', '999999972', 'fukcjqyxep', 'czkngqvwwj', 'zvdmtakxoq', '2020-08-10 10:22:19.084521', '0'),
('75', '999999973', 'wjxjgcxmne', 'tvljjchbjc', 'qaokbejjcd', '2020-08-10 10:22:19.085027', '0'),
('76', '999999974', 'aigvrzhger', 'wivisipcch', 'usnwnvpvqy', '2020-08-10 10:22:19.085527', '0'),
('77', '999999975', 'gkgnzumepk', 'dcndfgcaue', 'slsbnncgnl', '2020-08-10 10:22:19.086081', '0'),
('78', '999999976', 'vkbsmmcxdf', 'ytbcnmpzyx', 'wpbcncttuj', '2020-08-10 10:22:19.086640', '0'),
('79', '999999977', 'hxkgyurheu', 'lknwhlyzri', 'oiuhmdvolv', '2020-08-10 10:22:19.087199', '0'),
('80', '999999978', 'bylsnlvghg', 'uhhsimpoij', 'eqgobhpwna', '2020-08-10 10:22:19.087754', '0'),
('81', '999999979', 'qovlleubrr', 'tofqxdiqvb', 'svowstkekr', '2020-08-10 10:22:19.088311', '0'),
('82', '999999980', 'bsjupecifn', 'cmrvypuiqf', 'wuseytjnwt', '2020-08-10 10:22:19.088905', '0'),
('83', '999999981', 'zhgspuplfp', 'pqpcihnndg', 'cswzwgchxe', '2020-08-10 10:22:19.089414', '0'),
('84', '999999982', 'obeamlkmkm', 'vqcuvuuyeo', 'qzthcrfkzs', '2020-08-10 10:22:19.089943', '0'),
('85', '999999983', 'jsaioxwbbw', 'zgrsalxirx', 'bemqqymhrp', '2020-08-10 10:22:19.090446', '0'),
('86', '999999984', 'dmrxhzubsa', 'kgvoseviee', 'dizrnbiazn', '2020-08-10 10:22:19.090962', '0'),
('87', '999999985', 'hysqqornmu', 'carfapayec', 'rvcnhxoako', '2020-08-10 10:22:19.091460', '0'),
('88', '999999986', 'xpczfcxarh', 'ovhmltyuij', 'qqaddmnyvm', '2020-08-10 10:22:19.091970', '0'),
('89', '999999987', 'knzcmooxwn', 'uxllygkcor', 'kodygbkgng', '2020-08-10 10:22:19.092445', '0'),
('90', '999999988', 'bommullvhl', 'xqzcijozmz', 'uvjkckcvep', '2020-08-10 10:22:19.092926', '0'),
('91', '999999989', 'bzqgvwdqln', 'zvzcdrlvcq', 'nfmyjelxwa', '2020-08-10 10:22:19.093413', '0'),
('92', '999999990', 'emutraulzv', 'csypzjycgc', 'btomyuhdhu', '2020-08-10 10:22:19.093875', '0'),
('93', '999999991', 'nniiksvfjz', 'oypwrpvtmi', 'nqfxanohua', '2020-08-10 10:22:19.094396', '0'),
('94', '999999992', 'uvhrxiztjc', 'huoilyjwmx', 'mtfmjfscfw', '2020-08-10 10:22:19.094863', '0'),
('95', '999999993', 'kxczrimbdk', 'yzbymsniey', 'wzzabemmio', '2020-08-10 10:22:19.095389', '0'),
('96', '999999994', 'tkwenjhtny', 'ayoosinmiq', 'ldjxujscjb', '2020-08-10 10:22:19.095950', '0'),
('97', '999999995', 'dkzcpygjez', 'vwwimjfyoo', 'mzwmjgbgqp', '2020-08-10 10:22:19.096461', '0'),
('98', '999999996', 'azbofucvlj', 'uiedxcuhje', 'szuvcqwmqj', '2020-08-10 10:22:19.096975', '0'),
('99', '999999997', 'shamegwbmu', 'ktdavraoot', 'oppcibvjmg', '2020-08-10 10:22:19.097444', '0'),
('100', '999999998', 'objcqrnfik', 'fhuuimukgc', 'aldcgirhan', '2020-08-10 10:22:19.097935', '0'),
('101', '999999999', 'zoygbscrnv', 'hvwjudgqmo', 'fxqbbfwgtq', '2020-08-10 10:22:19.098403', '0'),
('102', '811071503', 'yaandroid', 'Andrei', 'Borodin', '2020-08-10 10:43:44.441631', '1'),
('104', '342140103', 'builovn', 'Никита', 'Буйлов', '2020-08-10 10:49:13.919469', '1');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;