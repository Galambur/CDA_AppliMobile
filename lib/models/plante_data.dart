import "package:jardindesplantes/models/plante.dart";
import "package:jardindesplantes/models/plante_type_enum.dart";

class PlanteData {
  static List<Plante> buildList() {
    List<Plante> list = [];
    list.add(Plante(1, "Micocoulier de Provence", "Le Micocoulier de Provence ou Micocoulier du Midi (Celtis australis) est une essence subtropicale et de climat tempéré doux. Il appartient à la famille des Cannabaceae (anciennement aux Ulmaceae). Son fruit est comestible et son bois était réputé pour de nombreux usages. C\"est une espèce en déclin en Europe. ", "assets/images/arbres/micoulier_de_provence.png", PlantType.Arbre));
    list.add(Plante(2, "Chêne à feuille de Châtaignier", "Le Quercus acutissima est un chêne dont le feuillage est particulier. En effet, les feuilles sont ciselées et ressemblent à celles du châtaignier. D\"ailleurs, il a pour noms communs Chêne à dents de scie, Chêne feuilles châtaignier, Chêne du Japon. Idéal pour les parcs, les cimetières, ce chêne se plante en isolé", "assets/images/arbres/chene_a_feuilles_de_chataigner.png", PlantType.Arbre);
    list.add(Plante(3, "Cyprès de Lambert", "Le cyprès de Lambert ou cyprès de Monterey (Cupressus macrocarpa) est une espèce d\"arbre de la famille des Cupressacées, endémique de la côte centrale de la Californie. C\"est un arbre sempervirent, de grande taille, qui devient souvent irrégulier et tabulaire sous l\"effet des vents forts qui caractérisent son aire d\"origine. Il peut pousser jusqu\"à 25 mètres de hauteur1 et son tronc peut atteindre un diamètre plus de 2 mètres ou plus (un spécimen en Bretagne nord, à Plestin-les-Grèves, mesure un peu plus de 4 m de diamètre, 13 m de circonférence2). ", "assets/images/arbres/cypres_de_lambert.png", PlantType.Arbre));
    list.add(Plante(4, "Cèdre de Goa", "Cedrus, le Cèdre, est un genre de conifères de la famille des Pinacées, originaire du Moyen-Orient, d'Afrique du Nord et de l'Himalaya, acclimaté en Europe, comprenant des espèces d'arbres majestueux, à bois odorant, à cime conique ou étalée, très utilisées pour l'ornementation des parcs. Les branches de cette essence sont étalées horizontalement et en plans superposés. Le mot « cèdre » vient du latin cedrus, issu lui-même du grec, qui désignait aussi bien le genévrier cade. Le cèdre (Cedrus libani) est l'arbre symbole du Liban et sa silhouette figure sur le drapeau de ce pays. Le Maroc et l’Algérie possèdent la principale cédraie (Cedrus atlantica) du bassin méditerranéen, sur 134 000 hectares. En Guyane française, le terme « cèdre » recouvre un sens botanique très différent, tandis qu'au Canada, ce mot désigne souvent les thuyas. ", "assets/images/arbres/cedre_de_goa.png", PlantType.Arbre)); Selon la légende, c'est à cet arbre que Judas se serait pendu après avoir trahi Jésus Christ. ", "assets/images/arbres/arbre_de_judee.png", PlantType.Arbre));

    list.add(Plante(6, "Érable palmé", "L’Érable palmé (Acer palmatum), ou Érable japonais lisse, est une espèce indigène en Chine, en Corée, au Japon et à Taiwan1. Il appartient à la famille des Sapindaceae et à la section Palmata de la classification des érables. Cette espèce d’arbre est souvent plantée dans les jardins pour ses formes et ses couleurs variées. Son nom vernaculaire érable japonais lisse, provient de la forme caractéristique fortement découpée de ses feuilles et de l'origine géographique de sa classification par le naturaliste suédois, Carl Peter Thunberg lors d'un voyage au Japon", "assets/images/arbustes/erable_palme.png", PlantType.Arbuste));
    list.add(Plante(7, "Mauve en arbre", "Hibiscus syriacus, l'Hybiscus de Syrie, plus communément nommé Hibiscus, Ketmie ou Althéa, est une espèce d'arbustes de la famille des Malvacées. Contrairement à ce que laisse supposer son nom, l'espèce est native de Chine et Taïwan. Il est très largement cultivée comme plante ornementale dans les jardins et a été introduit un peu partout dans le monde, notamment en Europe via la Syrie, et peut devenir envahissant dans certains pays. ", "assets/images/arbustes/mauve_en_arbre.png", PlantType.Arbuste));
    list.add(Plante(8, "Framboisier rouge", "Le Framboisier rouge ou la Ronce du mont Ida (Rubus idaeus L., 1753) est une espèce d'arbrisseaux de la famille des Rosacées (tribu des Rubae), couramment cultivée pour leurs petits fruits, les framboises. ", "assets/images/arbustes/framboisier_rouge.png", PlantType.Arbuste));
    list.add(Plante(9, "Laurier rose", "Le Laurier-rose (Nerium oleander) est une espèce d'arbustes ou de petits arbres de la famille des Apocynacées. Cette espèce est présente sur les deux rives de la mer Méditerranée mais de façon plus éparse sur la rive nord. Il s'agit de la seule espèce du genre Nerium. Cette plante est parfois appelée Oléandre et plus rarement Rosage, Nérion ou Lauraine1. Arbre ornemental très répandu dans le pourtour méditerranéen, pratique car résistant à la sécheresse et à la taille, il forme haies et taillis dans les jardins des particuliers, dans les parcs ou à proximité des édifices publics. Toutes les parties de la plante contiennent de l'oléandrine, un hétéroside cardiotonique, dont l'ingestion est fatale à faible dose ; en effet, quelques feuilles peuvent tuer un adulte2,3. L'intoxication est très résistante aux traitements4 et est sévère : troubles cardiaques graves, vomissements, douleurs abdominales, et mort par arrêt cardio-circulatoire5,6,7. D'autres glycosides y sont également présents en petite quantité. ", "assets/images/arbustes/laurier_rose.png", PlantType.Arbuste));
    list.add(Plante(10, "Myrtille arbustive", "Vaccinium corymbosum (ou Vaccinium constablaei), est une espèce d’arbustes de la famille des Ericaceae, originaire d'Amérique du Nord2. Elle est connue en français sous les noms de Myrtille arbustive, Grande Myrtille, Myrtille américaine, en Europe francophone et Bleuet en corymbes, Bleuet géant3, Bleuet au Canada francophone. ", "assets/images/arbustes/myrtille_arbustive.png", PlantType.Arbuste));

    list.add(Plante(11, "Jonquille", "Jonquille est en français un nom vernaculaire qui désigne plusieurs plantes, généralement du genre Narcissus.     Dans le calendrier républicain, le Jonquille était le nom attribué au 8e jour du mois de germinal4.Bleu jonquille désigne la couleur jaune dans les bataillons de chasseurs à pied ou alpins.5 La jonquille est la fleur emblématique de la fête des grands-mères, qui a lieu en France au mois de mars, sous l'impulsion d'une marque de café dans les années 1980-1990.[réf. nécessaire] Dans le langage des fleurs, la jonquille symbolise la langueur d'amour ou le désir6. La jonquille est l'un des symboles du Pays de Galles7. Au Canada, la jonquille est devenue le symbole de la Société canadienne du cancer8.", "assets/images/fleurs/jonquille.png", PlantType.Fleur));
    list.add(Plante(12, "Rose", "La rose est la fleur du rosier, arbuste du genre Rosa et de la famille des Rosaceae. La rose des jardins se caractérise avant tout par la multiplication de ses pétales imbriqués, qui lui donne sa forme caractéristique. Appréciée pour sa beauté et sa senteur, elle est célébrée depuis l’Antiquité par de nombreux poètes et écrivains ainsi que par des peintres, pour son parfum et pour ses couleurs qui vont du blanc pur au pourpre foncé, en passant par le jaune et toutes les nuances intermédiaires. Elle est présente dans presque tous les jardins et dans de nombreux bouquets. Elle est devenue la « reine des fleurs » dans le monde occidental — la pivoine lui disputant ce titre en Chine. La rose est l’une des plantes les plus cultivées au monde et elle occupe la première place dans le marché des fleurs. Mais on oublie souvent que les rosiers sont aussi des plantes sauvages (le plus connu en Europe est l’églantier) aux fleurs simples à cinq pétales, qui sont devenus à la mode, pour leur aspect plus naturel, depuis quelques décennies sous le nom de « roses botaniques ». Les rosiers cultivés sont le résultat de plusieurs millénaires de transformations, d’abord empiriques puis, dès la fin du XVIIIe siècle, méthodiques, en particulier par l’hybridation. Les variétés sont innombrables, on estime à plus de trois mille le nombre de cultivars disponibles actuellement dans le monde1. L’existence des roses remonte à bien avant l’antiquité, preuve en sont les fossiles retrouvés dans l’Ouest américain et datés de plus de quarante millions d’années. ", "assets/images/fleurs/rose.png", PlantType.Fleur));
    list.add(Plante(13, "Pensée", "La Pensée sauvage ou Pensée tricolore (Viola tricolor) est une espèce de plantes herbacées, commune dans toute l'Europe, de la famille des Violaceae. Elle est recherchée pour la délicatesse de sa fleur. C'est l'ancêtre de la pensée cultivée. Le terme de pensée est antérieur au début de la culture des pensées. C'était une dénomination alternative, qui renvoyait à la signification symbolique de la violette, d’après le langage des fleurs. ", "assets/images/fleurs/pensee.png", PlantType.Fleur));
    list.add(Plante(14, "Lavande", "Lavandula (les lavandes) est un genre de plantes de la famille des Lamiaceae1,2. Ce sont des arbrisseaux dicotylédones, à fleurs le plus souvent mauves ou violettes disposées en épis, dont la plupart des espèces très odorantes, sont largement utilisées dans toutes les branches de la parfumerie, en particulier le lavandin (Lavandula ×intermedia). Elles poussent surtout sur les sols calcaires secs et ensoleillés, à l'exception de Lavandula stoechas, qui préfère les sols siliceux. Toutes les lavandes sont des plantes mellifères, c'est-à-dire très recherchées par les abeilles. ", "assets/images/fleurs/lavande.png", PlantType.Fleur));
    list.add(Plante(15, "Tulipe", "Les tulipes forment un genre (Tulipa) de plantes herbacées de la famille des Liliacées, qui compte une centaine d'espèces originaires des régions tempérées chaudes de l'Ancien Monde. Plusieurs espèces sont largement cultivées comme plantes ornementales et ont donné lieu à la création de plusieurs milliers de variétés. Diagramme floral des tulipes (O: 6T,6E,(3C)). Il existe environ 75 espèces, réparties en quatre sous-genres. Le nom tulipe provient du turc tülbend (lâle), c'est-à-dire « plante-turban »", "assets/images/fleurs/tulipe.png", PlantType.Fleur));

    list.add(Plante(16, "Persil", "Le persil (Petroselinum crispum) (prononciation /pɛʁ.si/1,2,3,4 ou /pɛʁ.sil/3,4,5) est une espèce de plante herbacée de la famille des Apiacées (Ombellifères) et du genre Petroselinum. Le persil est couramment utilisé en cuisine pour ses feuilles très divisées, et en Europe centrale pour sa racine pivot. C'est également une plante médicinale. Nom scientifique : Petroselinum crispum (Mill.) Fuss (syn. : Petroselinum sativum). Noms vernaculaires : persil, persil cultivé, persil odorant, persin ; allemand : Petersilie ; anglais : parsley, persel ; italien : prezzemolo, petrosello. ", "assets/images/herbes/persil.png", PlantType.Herbe));
    list.add(Plante(17, "Ciboulette", "La ciboulette ou civette (Allium schoenoprasum L.) est une plante aromatique de la famille des Amaryllidacées (anciennement Liliacées ou Alliacées), cultivée pour ses feuilles souvent utilisées comme condiment. Autres noms vernaculaires : appétit (poitevin), branlette, brelette, chiboulette. Dans d'autres langues, allemand : Schnittlauch, anglais : chives, espagnol : cebollino, italien : erba cipollina. La ciboulette fait partie des plantes dont la culture est recommandée dans les domaines royaux par Charlemagne dans le capitulaire De Villis (fin du VIIIe ou début du IXe siècle). ", "assets/images/herbes/ciboulette.png", PlantType.Herbe));
    list.add(Plante(18, "Estragon", "L’Estragon, Artemisia dracunculus, est une espèce de plantes herbacées vivaces semi-persistantes de la famille des Astéracées (Composées) que l'on rencontre dans la plupart des pays d'Eurasie et d'Amérique du Nord. Cette plante à usage condimentaire est couramment cultivée pour ses feuilles parfumées. On l'utilise également pour ses propriétés médicinales. ", "assets/images/herbes/estragon.png", PlantType.Herbe));
    list.add(Plante(19, "Cerfeuil commun", "Le Cerfeuil commun (Anthriscus cerefolium (L.) Hoffm.) est une plante herbacée de la famille des Apiacées (ombellifères), probablement originaire de Russie, cultivée comme plante condimentaire pour ses feuilles au goût légèrement anisé. Nom commun : cerfeuil cultivé, cerfeuil des jardins, herbe aiguillée. Il ne faut pas confondre cette espèce avec la plante appelée Cerfeuil anisé, Cerfeuil d'Espagne ou Cerfeuil musqué (Myrrhis odorata). Il ne faut pas non plus la confondre avec le cerfeuil tubéreux (Chaerophyllum bulbosum), cultivé pour ses racines mais dont les feuilles sont toxiques. ", "assets/images/herbes/cerfeuil_commun.png", PlantType.Herbe));
    list.add(Plante(20, "Basilic", "Le Basilic ou Basilic romain (Ocimum basilicum L.) est une espèce de plantes herbacées thérophytes de la famille des Lamiacées (labiacées, labiées), cultivée comme plante aromatique et condimentaire. La plante est parfois appelée Basilic commun, Basilic aux sauces, Herbe royale1 ou Grand Basilic. Le Basilic commun est largement employé dans la cuisine italienne, d'autres variétés de basilic sont répandues dans certaines cuisines asiatiques : Taïwan, Thaïlande, Viêt Nam, Cambodge et Laos. Cette plante a eu plusieurs synonymes scientifiques dont Ocimum basilicum var. glabratum Benth, Ocimum basilicum var. majus Benth. Le mot basilic peut parfois désigner d'autres espèces appartenant au genre Ocimum dont le basilic citron (Ocimum canum L .), le basilic de Ceylan (Ocimum gratissimum) ou encore le basilic sacré (Ocimum sanctum L .) ", "assets/images/herbes/basilic.png", PlantType.Herbe));
    return list;
  }
}