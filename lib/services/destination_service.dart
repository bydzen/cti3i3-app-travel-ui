import 'package:LocaVel/models/destination.dart';

class DestinationService {
  static final List<String> _gallery = [
    'images/destination1.jpg',
    'images/destination2.jpg',
    'images/destination3.jpg',
    'images/destination4.jpg',
  ];

  List<Destination> recommendedDestinations = [
    Destination(
        name: 'Raja Ampat',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '4.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Destination(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Destination(
        name: 'Labuan Bajo',
        image: 'images/destination3.jpg',
        place: 'Nusa Tenggara Timur, Indonesia',
        price: 94600,
        rating: '3.9',
        about:
            'Labuan Bajo sebenarnya adalah sebuah tempat pemancingan ikan kecil yang terletak di ujung paling barat Pulau Flores. Kini, seiring dengan popularitas Taman Nasional Komodo, destinasi ini telah menjadi perwakilan dari banyak destinasi di Nusa Tenggara Timur juga tempat wisata paling indah di Indonesia. Berada dalam kelompok yang sama dengan banyak destinasi lain di Taman Nasional Komodo, Labuan Bajo selalu menjadi tempat memulai, karena di situlah pelabuhan dan bandara berada. Tempat ini menawarkan berbagai keseruan seperti Gua Batu Cermin, Perbukitan Amelia, Gua Rangko, dan air terjun ngarai Cunca Wulang, semuanya menawarkan pemandangan spektakuler yang akan membuat Moms sekeluarga terkejut. Masuki zona Taman Nasional Komodo lebih dalam dan Moms akan menemukan Pantai Pink di Pulau Komodo, salah satu dari tujuh pantai merah muda di seluruh planet ini. Kagumi pemandangan indah dunia lain dan ambil banyak gambar atau bidikan drone sambil menikmati tekstur halus pasir merah muda dan angin laut yang sejuk. Mereka yang ingin mempelajari budaya baru dan menemukan filosofi yang mengubah hidup juga dapat mengunjungi Desa Wae Rebo, sebuah desa kecil dan terpencil di atas dataran tinggi di Pulau Flores. Tempat ini memiliki struktur perumahan unik yang disebut Mbaru Niang dan telah menerima Top Award of Excellence dari UNESCO dalam Penghargaan Warisan Warisan Asia Pasifik UNESCO 2012.',
        gallery: _gallery),
    Destination(
        name: 'Bintan',
        image: 'images/destination4.jpg',
        place: 'Pulau Bintan, Riau',
        price: 127000,
        rating: '1.9',
        about:
            'Kenyamanan dan petualangan belum pernah menyatu secara harmonis dengan banyak keseruan seperti di Pulau Bintan, Provinsi Kepulauan Riau. Sebagai pulau terbesar di Kepulauan Riau, Bintan adalah salah satu tujuan yang paling disukai bagi mereka yang mencari kesenangan dari resor mewah, lapangan golf kelas dunia, dan pemandangan pantai yang menakjubkan. Jika lebih condong ke sisi petualang, Moms dan keluarga dapat mencoba menjelajahi Padang Pasir Busung yang penuh teka-teki, kapal MV Doulos Phos yang terbengkalai, atau Danau Biru Kawal. Jika Moms mencari kemewahan, cobalah menginap di Trikora Beach Club and Resort, The Sanchaya, atau Natra Bintan.',
        gallery: _gallery),
  ];

  List<Destination> topDestinations = [
    Destination(
        name: 'Labuan Bajo',
        image: 'images/destination3.jpg',
        place: 'Nusa Tenggara Timur, Indonesia',
        price: 94600,
        rating: '4.9',
        about:
            'Labuan Bajo sebenarnya adalah sebuah tempat pemancingan ikan kecil yang terletak di ujung paling barat Pulau Flores. Kini, seiring dengan popularitas Taman Nasional Komodo, destinasi ini telah menjadi perwakilan dari banyak destinasi di Nusa Tenggara Timur juga tempat wisata paling indah di Indonesia. Berada dalam kelompok yang sama dengan banyak destinasi lain di Taman Nasional Komodo, Labuan Bajo selalu menjadi tempat memulai, karena di situlah pelabuhan dan bandara berada. Tempat ini menawarkan berbagai keseruan seperti Gua Batu Cermin, Perbukitan Amelia, Gua Rangko, dan air terjun ngarai Cunca Wulang, semuanya menawarkan pemandangan spektakuler yang akan membuat Moms sekeluarga terkejut. Masuki zona Taman Nasional Komodo lebih dalam dan Moms akan menemukan Pantai Pink di Pulau Komodo, salah satu dari tujuh pantai merah muda di seluruh planet ini. Kagumi pemandangan indah dunia lain dan ambil banyak gambar atau bidikan drone sambil menikmati tekstur halus pasir merah muda dan angin laut yang sejuk. Mereka yang ingin mempelajari budaya baru dan menemukan filosofi yang mengubah hidup juga dapat mengunjungi Desa Wae Rebo, sebuah desa kecil dan terpencil di atas dataran tinggi di Pulau Flores. Tempat ini memiliki struktur perumahan unik yang disebut Mbaru Niang dan telah menerima Top Award of Excellence dari UNESCO dalam Penghargaan Warisan Warisan Asia Pasifik UNESCO 2012.',
        gallery: _gallery),
    Destination(
        name: 'Bintan',
        image: 'images/destination4.jpg',
        place: 'Pulau Bintan, Riau',
        price: 127000,
        rating: '1.9',
        about:
            'Kenyamanan dan petualangan belum pernah menyatu secara harmonis dengan banyak keseruan seperti di Pulau Bintan, Provinsi Kepulauan Riau. Sebagai pulau terbesar di Kepulauan Riau, Bintan adalah salah satu tujuan yang paling disukai bagi mereka yang mencari kesenangan dari resor mewah, lapangan golf kelas dunia, dan pemandangan pantai yang menakjubkan. Jika lebih condong ke sisi petualang, Moms dan keluarga dapat mencoba menjelajahi Padang Pasir Busung yang penuh teka-teki, kapal MV Doulos Phos yang terbengkalai, atau Danau Biru Kawal. Jika Moms mencari kemewahan, cobalah menginap di Trikora Beach Club and Resort, The Sanchaya, atau Natra Bintan.',
        gallery: _gallery),
    Destination(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Destination(
        name: 'Raja Ampat',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
  ];

  List<Destination> BookMarkPage = [
    Destination(
        name: 'Raja Amper',
        image: 'images/destination3.jpg',
        place: 'Nusa Tenggara Timur, Indonesia',
        price: 94600,
        rating: '4.9',
        about:
            'Labuan Bajo sebenarnya adalah sebuah tempat pemancingan ikan kecil yang terletak di ujung paling barat Pulau Flores. Kini, seiring dengan popularitas Taman Nasional Komodo, destinasi ini telah menjadi perwakilan dari banyak destinasi di Nusa Tenggara Timur juga tempat wisata paling indah di Indonesia. Berada dalam kelompok yang sama dengan banyak destinasi lain di Taman Nasional Komodo, Labuan Bajo selalu menjadi tempat memulai, karena di situlah pelabuhan dan bandara berada. Tempat ini menawarkan berbagai keseruan seperti Gua Batu Cermin, Perbukitan Amelia, Gua Rangko, dan air terjun ngarai Cunca Wulang, semuanya menawarkan pemandangan spektakuler yang akan membuat Moms sekeluarga terkejut. Masuki zona Taman Nasional Komodo lebih dalam dan Moms akan menemukan Pantai Pink di Pulau Komodo, salah satu dari tujuh pantai merah muda di seluruh planet ini. Kagumi pemandangan indah dunia lain dan ambil banyak gambar atau bidikan drone sambil menikmati tekstur halus pasir merah muda dan angin laut yang sejuk. Mereka yang ingin mempelajari budaya baru dan menemukan filosofi yang mengubah hidup juga dapat mengunjungi Desa Wae Rebo, sebuah desa kecil dan terpencil di atas dataran tinggi di Pulau Flores. Tempat ini memiliki struktur perumahan unik yang disebut Mbaru Niang dan telah menerima Top Award of Excellence dari UNESCO dalam Penghargaan Warisan Warisan Asia Pasifik UNESCO 2012.',
        gallery: _gallery),
    Destination(
        name: 'Bintan',
        image: 'images/destination4.jpg',
        place: 'Pulau Bintan, Riau',
        price: 127000,
        rating: '1.9',
        about:
            'Kenyamanan dan petualangan belum pernah menyatu secara harmonis dengan banyak keseruan seperti di Pulau Bintan, Provinsi Kepulauan Riau. Sebagai pulau terbesar di Kepulauan Riau, Bintan adalah salah satu tujuan yang paling disukai bagi mereka yang mencari kesenangan dari resor mewah, lapangan golf kelas dunia, dan pemandangan pantai yang menakjubkan. Jika lebih condong ke sisi petualang, Moms dan keluarga dapat mencoba menjelajahi Padang Pasir Busung yang penuh teka-teki, kapal MV Doulos Phos yang terbengkalai, atau Danau Biru Kawal. Jika Moms mencari kemewahan, cobalah menginap di Trikora Beach Club and Resort, The Sanchaya, atau Natra Bintan.',
        gallery: _gallery),
    Destination(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Destination(
        name: 'Raja Ampat',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Destination(
        name: 'Raja kkkkkkkk',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Destination(
        name: 'Raja aaaaaaaaaaaaaaaa',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Destination(
        name: 'Raja Amp1111111at',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Destination(
        name: 'Raja 22222',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '3.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
  ];
}
