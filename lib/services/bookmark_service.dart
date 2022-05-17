import 'package:LocaVel/models/bookmark.dart';

class BookmarkService {
  static final List<String> _gallery = [
    'images/destination1.jpg',
    'images/destination2.jpg',
    'images/destination3.jpg',
    'images/destination4.jpg',
  ];

  List<Bookmark> bookmarkedDestination = [
    Bookmark(
        name: 'Raja Ampat',
        image: 'images/destination1.jpg',
        place: 'Raja Ampat, Papua Barat',
        price: 115000,
        rating: '4.9',
        about:
            'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        gallery: _gallery),
    Bookmark(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Bookmark(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Bookmark(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Bookmark(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
    Bookmark(
        name: 'Bali',
        image: 'images/destination2.jpg',
        place: 'Bali, Indonesia',
        price: 75000,
        rating: '2.9',
        about:
            'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        gallery: _gallery),
  ];
}
