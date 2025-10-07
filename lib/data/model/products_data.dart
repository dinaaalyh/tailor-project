import 'package:tailor_project/utils/assets.gen.dart';

class Product {
  final String name;
  final String description;
  final AssetGenImage image;
  final String price;

  Product({
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
        name: 'Outer Rompi Batik Kombinasi Motif Mega Mendung',
        description: 'Vest batik bermotif megamendung khas Cirebon ini bisa Anda pilih untuk outfit liburan dan hang out. Tidak seperti vest lainnya, Batik Trusmi memberikan potongan yang lebih unik dengan menambahkan tali samping. Alhasil, model vest ini terlihat menyerupai kimono sekaligus double breasted vest dari depan. Warnanya yang merah menyala tentu membuat OOTD Anda lebih ceria.',
        image: Assets.images.desCol1,
        price: 'Rp355.000',
      ),
      Product(
        name: 'Jesse Outer 3N ｜ T0993',
        description: 'Blazer dari Nonarara menggunakan corak batik motif tiga negeri. Tampak warna merah dari batik Lasem, biru dari Pekalongan, dan cokelat sogan dari batik Solo. Perpaduan motif batik ini memberikan kesan klasik yang kuat, tetapi Anda tetap dapat memadukannya dengan pakaian modern, seperti jumpsuit putih. Lapisan tricot membuat blazer terlihat lebih kokoh dan menonjol saat dikenakan. Untuk dipakai ke kantor atau berjalan-jalan di mal setelah jam kerja, pakaian ini bisa jadi outfit yang tepat. Terusan formal juga terlihat elegan jika dipadukan dengan outer ini.',
        image: Assets.images.desCol2,
        price: 'Rp325.000',
      ),
      Product(
        name: 'Cape Blazer',
        description: 'Blazer batik model cape ini akan memberi Anda tampilan yang elegan. Anda bisa terlihat feminin sekaligus berwibawa hanya dengan menggunakan blazer ini. Selain itu, pilihan warna dan corak batik dari blazer ini pun sangat variatif dan menarik. Tidak heran produk ini digemari kaum milenial, ya. Desainnya fleksibel cocok digunakan ke berbagai acara, baik kasual maupun acara formal sekalipun.',
        image: Assets.images.desCol3,
        price: 'Rp400.000',
      ),
      Product(
        name: 'Myesha ｜ 4601/4602',
        description: 'Jika Anda ingin terlihat lebih tinggi dan langsing, produk ini patut dicoba. Pasalnya, blazer ini menggunakan desain open front dengan garis vertikal yang mempertegas kelim blazer bagian depan. Garis vertikal tersebut memberi ilusi tubuh jadi terlihat lebih jenjang. Corak batiknya merupakan motif kombinasi. Motif di bagian atas dan bawah yang berbeda tampak menarik. Pilihan warnanya pun tidak terlalu mencolok sehingga mudah dipadukan dengan atasan monokrom. Selain untuk acara formal, Anda juga pasti terlihat modis dalam suasana kasual, deh!',
        image: Assets.images.desCol4,
        price: 'Rp479.500',
      ),
      Product(
        name: 'Blazer PA Wahyu Tumurun Sogan',
        description: 'Bosan memakai blazer polos biasa saat ke kantor? Blazer batik motif klasik adalah pilihan tepat untuk Anda. Blazer dari Batik Semar menggunakan motif sogan dengan warna cokelat tua. Motif batik ini akan membuat Anda tampil lebih karismatik saat kegiatan kantor dan acara formal. Anda dapat memadukannya dengan outfit serbahitam ataupun warna krem dan cokelat yang netral.',
        image: Assets.images.desCol5,
        price: '645.000',
      ),
    ],
  ),
  ProductCategory(
    title: 'Top Trends',
    products: [
      Product(
        name: 'Kemeja Oversize Wanita Lengan Panjang Satin ｜ 00653',
        description: 'Siapa bilang kemeja hitam polos hanya bisa memberikan tampilan yang biasa? Kemeja ini bisa jadi salah satu pengecualian. Tekstur kemeja berbahan satin ini licin sehingga jatuh saat dikenakan. Selain itu, kilau satinnya dapat membuat Anda terlihat elegan. Kombinasikan saja dengan celana kain berwarna kontras, lalu kenakan high heels Anda untuk menghasilkan tampilan formal.',
        image: Assets.images.topTrends1,
        price: '400.000',
      ),
      Product(
        name: 'Quinn Outer Shirt',
        description: 'Produk berikut barangkali pas untuk Anda yang mudah bosan dengan satu tampilan saja. Pasalnya, produk dari MSMO ini dapat Anda kenakan sebagai kemeja biasa dan bisa juga sebagai outer. Dengan variasi kancing besar berwarna kontras dan tekstur khas linen yang jelas, outer shirt ini jauh dari kata plain. Dengan dua gaya yang dapat dipilih, mix and match saat memilih outfit tentu lebih asyik!',
        image: Assets.images.topTrends2,
        price: '120.000',
      ),
      Product(
        name: 'Kemeja Crop Sizu',
        description: 'Dengan model cropped, kemeja ini akan cocok untuk Anda yang hobi mix and match outfit dan terbiasa tampil fashionable. Model crop-nya memberikan highlight pada bagian torso Anda. Potongannya yang slim fit akan membuat Anda tampil lebih energik. Padukan kemeja ini dengan celana highwaist, lalu jadikan sebagai outfit hangout dan kegiatan santai Anda bersama teman-teman.',
        image: Assets.images.topTrends3,
        price: '210.000',
      ),
      Product(
        name: 'Seori Tops',
        description: 'Siapa bilang kemeja hitam selalu terkesan suram? Benhill menawarkan kemeja hitam dengan model lengan puff yang memberi kesan manis. Lengan bermodel mengembang ini menjadi solusi bagi Anda yang ingin membuat tubuh yang kurus tampak lebih berisi. Selain itu, lengan puff mampu memberikan kesan modis, serta menjadi aksen unik untuk meramaikan visual Anda. Bagian bawah kemeja ini pun didesain melebar sehingga membuat gerak tubuh Anda makin leluasa.',
        image: Assets.images.topTrends4,
        price: '499.000',
      ),
      Product(
        name: 'Aria Crop Shirt',
        description: 'Momen bersantai atau hang out tentu lebih baik menggunakan busana yang simpel dan nyaman dikenakan. Busana tersebut juga wajib bernuansa santai supaya sesuai dengan vibes momen tersebut. Nah, Anda bisa memilih Aria Crop Shirt sebagai opsi baju nongkrong bersama teman-teman. Dengan model oversized dan bahan kain lembut serta adem, Anda akan betah berlama-lama mengenakannya. Terutama bagi Anda yang aktif, pakaian yang mendukung kemudahan bergerak akan sangat dibutuhkan.',
        image: Assets.images.topTrends5,
        price: '149.000',
      ),
    ],
  ),
  ProductCategory(
    title: 'Gamis',
    products: [
      Product(
        name: 'Gamis Polos',
        description: 'Gamis polos dengan bahan adem dan nyaman dipakai.',
        image: Assets.images.product9,
        price: '645.000',
      ),
      Product(
        name: 'Gamis Modern',
        description: 'Desain elegan untuk acara formal.',
        image: Assets.images.product9,
        price: '645.000',
      ),
      Product(
        name: 'Gamis Polos',
        description: 'Gamis polos dengan bahan adem dan nyaman dipakai.',
        image: Assets.images.product9,
        price: '645.000',
      ),
      Product(
        name: 'Gamis Modern',
        description: 'Desain elegan untuk acara formal.',
        image: Assets.images.product9,
        price: '645.000',
      ),
      Product(
        name: 'Gamis Modern',
        description: 'Desain elegan untuk acara formal.',
        image: Assets.images.product9,
        price: '645.000',
      ),
    ],
  ),
  ProductCategory(
    title: 'Atasan',
    products: [
      Product(
        name: 'Blouse Wanita',
        description: 'Blouse cantik untuk tampilan santai.',
        image: Assets.images.product9,
        price: '645.000',
      ),
      Product(
        name: 'Kemeja Pria',
        description: 'Kemeja elegan untuk tampilan formal.',
        image: Assets.images.product9,
        price: '645.000',
      ),
    ],
  ),
  ProductCategory(
    title: 'Celana',
    products: [
      Product(
        name: 'Celana Jeans',
        description: 'Celana jeans yang nyaman dan stylish.',
        image: Assets.images.celana1,
        price: 'Rp250.000',
      ),
      Product(
        name: 'Celana Kulot',
        description: 'Kulot ringan cocok untuk kegiatan harian.',
        image: Assets.images.celana2,
        price: 'Rp200.000',
      ),
    ],
  ),
];
