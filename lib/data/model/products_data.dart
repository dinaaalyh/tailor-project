import 'package:tailor_project/utils/assets.gen.dart';

class Product {
  final int id;
  final String name;
  final String description;
  final AssetGenImage image;
  final int price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });
}

class ProductCategory {
  final String title;
  final List<Product> products;

  ProductCategory({
    required this.title,
    required this.products,
  });
}

final List<ProductCategory> ProductCategories = [
  ProductCategory(
    title: 'Designer Collection',
    products: [
      Product(
        id: 1,
        name: 'Outer Rompi Batik Kombinasi Motif Mega Mendung',
        description: 'Vest batik bermotif megamendung khas Cirebon ini bisa Anda pilih untuk outfit liburan dan hang out. Tidak seperti vest lainnya, Batik Trusmi memberikan potongan yang lebih unik dengan menambahkan tali samping. Alhasil, model vest ini terlihat menyerupai kimono sekaligus double breasted vest dari depan. Warnanya yang merah menyala tentu membuat OOTD Anda lebih ceria.',
        image: Assets.images.desCol1,
        price: 355000,
      ),
      Product(
        id: 2,
        name: 'Jesse Outer 3N ｜ T0993',
        description: 'Blazer dari Nonarara menggunakan corak batik motif tiga negeri. Tampak warna merah dari batik Lasem, biru dari Pekalongan, dan cokelat sogan dari batik Solo. Perpaduan motif batik ini memberikan kesan klasik yang kuat, tetapi Anda tetap dapat memadukannya dengan pakaian modern.',
        image: Assets.images.desCol2,
        price: 325000,
      ),
      Product(
        id: 3,
        name: 'Cape Blazer',
        description: 'Blazer batik model cape ini akan memberi Anda tampilan yang elegan. Pilihan warna dan corak batik dari blazer ini pun sangat variatif dan menarik.',
        image: Assets.images.desCol3,
        price: 400000,
      ),
      Product(
        id: 4,
        name: 'Myesha ｜ 4601/4602',
        description: 'Jika Anda ingin terlihat lebih tinggi dan langsing, produk ini patut dicoba. Desain open front dengan garis vertikal memberi ilusi tubuh terlihat lebih jenjang.',
        image: Assets.images.desCol4,
        price: 479500,
      ),
      Product(
        id: 5,
        name: 'Blazer PA Wahyu Tumurun Sogan',
        description: 'Blazer batik motif klasik adalah pilihan tepat untuk Anda. Blazer dari Batik Semar menggunakan motif sogan dengan warna cokelat tua.',
        image: Assets.images.desCol5,
        price: 645000,
      ),
    ],
  ),
  ProductCategory(
    title: 'Top Trends',
    products: [
      Product(
        id: 6,
        name: 'Kemeja Oversize Wanita Lengan Panjang Satin ｜ 00653',
        description: 'Kemeja berbahan satin yang licin dan elegan. Kombinasikan dengan celana kain berwarna kontras untuk tampilan formal.',
        image: Assets.images.topTrends1,
        price: 400000,
      ),
      Product(
        id: 7,
        name: 'Quinn Outer Shirt',
        description: 'Outer shirt dengan variasi kancing besar dan tekstur khas linen. Bisa dipakai sebagai kemeja atau outer.',
        image: Assets.images.topTrends2,
        price: 120000,
      ),
      Product(
        id: 8,
        name: 'Kemeja Crop Sizu',
        description: 'Model cropped cocok untuk Anda yang suka tampil fashionable. Potongan slim fit membuat tampilan energik.',
        image: Assets.images.topTrends3,
        price: 210000,
      ),
      Product(
        id: 9,
        name: 'Seori Tops',
        description: 'Kemeja hitam dengan model lengan puff yang memberi kesan manis dan modis.',
        image: Assets.images.topTrends4,
        price: 499000,
      ),
      Product(
        id: 10,
        name: 'Aria Crop Shirt',
        description: 'Busana santai berbahan lembut dan adem, cocok untuk hangout bersama teman-teman.',
        image: Assets.images.topTrends5,
        price: 149000,
      ),
    ],
  ),
  ProductCategory(
    title: 'Gamis',
    products: [
      Product(
        id: 11,
        name: 'Meena Lace Abaya',
        description: 'Terbuat dari bahan Arabian woolpeach yang lembut disentuh dan nyaman dipakai sepanjang hari. Teksturnya tebal, tetapi tetap ringan dan flowy sehingga memberikan kesan jatuh yang anggun saat dikenakan. Detail renda pada lengan menambahkan sentuhan manis tanpa menghilangkan nuansa syar’i. Cocok untuk Anda yang bertubuh tinggi, dengan potongan yang memanjang dan tidak menerawang.',
        image: Assets.images.gamis1,
        price: 276900,
      ),
      Product(
        id: 12,
        name: 'Hanida Abaya Set',
        description: 'Terbuat dari bahan santorini yang lembut, jatuh, menyerap keringat, dan memberi efek kilau elegan. Didesain dengan khimar panjang yang menutup punggung dan dada, ideal untuk ibadah umrah atau haji. Detail cincin dan tali jari di bagian tangan menambah keanggunan tanpa mengganggu gerakan wudu. Potongan longgar dan ritsleting depan menjadikannya nyaman untuk tubuh tinggi dan plus size, serta busui friendly.',
        image: Assets.images.gamis2,
        price: 318900,
      ),
      Product(
        id: 13,
        name: 'Clemira Dress',
        description: 'Didesain dari bahan madame yang lembut, tidak menerawang, ringan, dan jatuh dengan indah. Detail rok berbahan sapto lace menciptakan kesan mewah, tetapi tidak berlebihan. Pita di sisi pinggang menambahkan aksen manis yang mempercantik siluet pemakainya. Dilengkapi ritsleting depan yang praktis dan kancing wudu friendly, memudahkan untuk beribadah bahkan saat acara wisuda.',
        image: Assets.images.gamis3,
        price: 335000,
      ),
      Product(
        id: 14,
        name: 'Gamis Camilla',
        description: 'Menggunakan bahan supercrepe yang ringan, tidak menerawang, dan nyaman untuk aktivitas harian. Menggunakan bahan supercrepe yang ringan, tidak menerawang, dan nyaman untuk aktivitas harian. Detail pita di bagian pinggang menambahkan aksen manis yang mempercantik penampilan. Didesain busui friendly dan ideal untuk postur pendek atau mungil agar tetap terlihat proporsional.',
        image: Assets.images.gamis4,
        price: 145000,
      ),
      Product(
        id: 15,
        name: 'Long Dress Gamis Border L Monogram Satin',
        description: 'Terbuat dari bahan satin yang ringan, flowy, dan memancarkan kesan elegan saat dikenakan. Paduan motif monogram dan border sisi menciptakan tampilan dinamis tanpa kesan berlebihan. Desain basic yang simpel membuatnya nyaman dipakai untuk berbagai acara, dari kasual hingga formal. Lengan manset wudu friendly, memberikan kemudahan beribadah tanpa perlu repot berganti busana.',
        image: Assets.images.gamis5,
        price: 389000,
      ),
    ],
  ),
  ProductCategory(
    title: 'Baju',
    products: [
      Product(
        id: 16,
        name: 'Outer Blouse Slit Back Self Tie Wrap Crop Top',
        description: 'Jika Anda suka dengan tampilan seksi dan feminin, blus yang satu ini adalah pilihan yang ideal. Dengan model slit di bagian belakang, area punggung Anda akan menonjol dengan sempurna. Ditambah lagi, aksen pitanya akan menambah manis penampilan Anda.',
        image: Assets.images.baju1,
        price: 125000,
      ),
      Product(
        id: 17,
        name: 'Crop Top Oversize Tee T-Shirt',
        description: 'Kaus ini terbuat dari katun combed yang sejuk dan nyaman. Anda bisa memakainya untuk berolahraga atau sekadar hang out santai bersama teman. Ada tiga macam warna berbeda yang bisa Anda pilih, yaitu putih, hitam, charcoal, navy, dan, tosca. Semua warnanya cocok dipadukan dengan bawahan warna apa pun, lho!',
        image: Assets.images.baju2,
        price: 171143,
      ),
      Product(
        id: 18,
        name: 'Korean Crop Top Blouse',
        description: 'Memiliki dua tali serut di bagian sisi kanan dan kiri, Anda bisa menyesuaikan panjang baju ini sesuai keinginan Anda. Selain itu, blus crop top dengan model long sleeves ini tersedia dalam enam pilihan ukuran. Baik Anda yang berbadan mungil maupun besar dan berisi, pasti bisa tampil cantik memakainya!',
        image: Assets.images.baju3,
        price: 76000,
      ),
      Product(
        id: 19,
        name: 'Crop Blouse Outer 2in1',
        description: 'Bagi Anda yang menginginkan outfit formal tanpa perlu repot mencari perpaduan atasan dan bawahan, pertimbangkanlah blus berikut ini. Tiff Crop Blouse Outer dapat dipakai untuk dua model. Anda bisa menggunakannya sebagai atasan atau dijadikan sebagai outer. Tampilannya yang menyerupai blazer terlihat formal sekaligus memberikan kesan modis. Anda bebas memadukannya dengan chino, celana kain, ataupun rok sepan. Dengan atasan ini, Anda bisa mendapatkan office look yang rapi serta keren. Model crop top ini juga tidak terlalu pendek dan cukup tebal, cocok untuk pengguna hijab.',
        image: Assets.images.baju4,
        price: 105000,
      ),
      Product(
        id: 20,
        name: 'Malibu Shirt Kemeja Crop Top',
        description: 'Sedang mencari crop top untuk ke kampus, tetapi tak ingin potongannya terlalu pendek atau modelnya terlalu seksi? Jika iya, mungkin Anda bisa melirik model yang satu ini. Kemeja ini mengusung potongan boxy cut yang cenderung besar dan lebar. Anda pun akan terlihat rapi saat memakainya. Meski memiliki model boxy cut, Anda tidak akan terlihat bulky. Hal ini karena bajunya berdesain loose fit dengan bahan rayon sehingga kainnya jatuh. Dengan memakai kemeja ini, Anda akan mendapatkan penampilan chic dan trendi.',
        image: Assets.images.baju5,
        price: 179998,
      ),
    ],
  ),
  ProductCategory(
    title: 'Celana',
    products: [
      Product(
        id: 21,
        name: 'Jeans Wanita Model Cutbray Highwaist',
        description: 'Desain celana jeans wanita cutbray dengan aksen retro cocok untuk gaya kasual hingga semiformal. Warna biru klasik berkesan vintage menambah karakter pada tampilan harian Anda. Model highwaist mempertegas siluet pinggang dan memberi kesan kaki lebih jenjang. Bahan stretch yang nyaman mengikuti bentuk tubuh, ideal untuk aktivitas seharian.',
        image: Assets.images.celana1,
        price: 190000,
      ),
      Product(
        id: 22,
        name: 'Kulot Highwaist Jeans Relax',
        description: 'Model kulot highwaist tanpa kantong depan memberi kesan clean dan siluet tubuh lebih jenjang. Tipe wide leg cocok untuk Anda yang menyukai celana jeans wanita longgar bergaya street style. Ideal bagi pencinta gaya basic yang ingin tampil santai tanpa kehilangan sentuhan trendi.',
        image: Assets.images.celana2,
        price: 189500,
      ),
      Product(
        id: 23,
        name: 'Skinny Highwaist Celana Panjang Soft Jeans Petunia',
        description: 'Desain skinny highwaist mengikuti lekuk tubuh, menciptakan siluet ramping dan proporsional. Dibuat dari bahan katun stretch premium yang tebal, lembut, dan tetap adem saat dipakai. Cocok untuk wanita aktif yang menginginkan kenyamanan sekaligus kesan elegan. Ideal dikenakan sepanjang hari untuk aktivitas santai maupun tampil lebih rapi di luar rumah.',
        image: Assets.images.celana3,
        price: 174900,
      ),
      Product(
        id: 24,
        name: 'Celana Hamil Jeans Denim Strech Jumbo',
        description: 'Didesain khusus dengan waistband elastis yang menopang perut untuk mengurangi nyeri punggung dan panggul. Terbuat dari bahan denim stretch tebal dan lembut dengan sensasi sejuk saat dikenakan. Dilengkapi pengait kancing dan karet pinggang tambahan untuk menyesuaikan ukuran secara fleksibel. Ideal untuk ibu hamil yang aktif, dari trimester awal hingga pascamelahirkan tanpa rasa sesak.',
        image: Assets.images.celana4,
        price: 149000,
      ),
      Product(
        id: 25,
        name: 'Naia Pants',
        description: 'Potongan loose dari pinggang hingga kaki memberi ruang gerak leluasa tanpa rasa sesak. Terbuat dari 100% katun 12 oz yang kuat, tetapi tetap lembut dan breathable untuk dipakai harian. Cocok untuk Anda dengan tinggi 165 cm ke atas dan ingin celana panjang yang jatuh pas. Desain highwaist membentuk siluet tubuh lebih proporsional dan tetap terlihat stylish',
        image: Assets.images.celana5,
        price: 134215,
      ),
    ],
  ),
];
