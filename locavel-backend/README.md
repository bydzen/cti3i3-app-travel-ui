# LocaVel - API Usage
Usage of endpoints API LocaVel App.

## Root Page
Root endpoint

### Get Root

- [Get Root](#get-root)

  GET /

Response:

```JSON
{
  "message": "Welcome to LocaVel API"
}
```

## Wisata
Endpoint for retrieving data Wisata.

### Get Wisata

- [Get Wisata](#get-wisata)

  GET /wisata

Response:

```JSON
[
  {
    "id": 1,
    "nama": "Raja Ampat",
    "tempat": "Raja Ampat, Papua Barat",
    "harga": 115000,
    "konten": "Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.",
    "rating": 4.9,
    "gambar": "rajaampat.jpg"
  }
    ...
]
```

### Get Wisata by Id

- [Get Wisata by Id](#get-wisata-by-id)

  GET /wisata/:id
  
Request:

params: `id` it can be `1`, `2`, ...

Response:

```JSON
{
  "id": 1,
  "nama": "Raja Ampat",
  "tempat": "Raja Ampat, Papua Barat",
  "harga": 115000,
  "konten": "Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.",
  "rating": 4.9,
  "gambar": "rajaampat.jpg"
}
```
