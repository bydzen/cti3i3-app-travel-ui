require('dotenv').config();

const express = require('express');
const app = express();
const jwt = require('jsonwebtoken');
const http = require('http');

app.use(express.json());

// Create data array of wisata
const wisata = [
    {
        id: 1,
        nama: 'Raja Ampat',
        tempat: 'Raja Ampat, Papua Barat',
        harga: 115000,
        konten: 'Pecinta wisata bahari dan akuatik pasti tidak asing dengan destinasi yang satu ini.Bisa dibilang ini adalah surge murni yang terletak di Papua Barat. Secara harfiah berarti Empat Raja, Raja Ampat adalah sebuah kepulauan yang terdiri lebih dari 1.500 pulau kecil, ngarai, yang mengelilingi empat pulau utama yaitu Waigeo, Batanta, Salwati, dan Misool. Bagi pecinta bawah laut, tempat wisata paling indah seperti Raja Ampat menawarkan beberapa pengalaman bahari terbaik di dunia. Wilayah Kepulauan Raja Ampat yang mencakup 9,8 juta hektar daratan dan lautan, merupakan rumah bagi 540 jenis karang, lebih dari 1.000 jenis ikan karang, dan 700 jenis moluska. Ini menjadikannya habitat perairan paling beragam untuk terumbu karang dan biota bawah laut dunia. Selain menjelajahi permukaan air, Moms dan Dads juga bisa menyelam lebih dalam dan menyelami alam bawah laut dunia lain. Tentunya, ini akan menjadi pengalaman tak terlupakan juga untuk Si Kecil.',
        rating: 4.9,
        gambar: 'rajaampat.jpg',
    },
    {
        id: 2,
        nama: 'Bali',
        tempat: 'Bali, Indonesia',
        harga: 75000,
        konten: 'Walaupun sering disebut namanya, Bali tetap menjadi tujuan wisata terfavorit di Indonesia. Dikenal juga dengan sebutan pulau Dewata, suasana tropisnya yang mempesona akan langsung menyambut Moms dan Dads begitu menginjakkan kaki di pulau ini. Pantai-pantai yang masih asli, gunung-gunung yang megah, kuil-kuil yang suci, seni yang begitu indah, berbagai kuliner yang lezat, dan masih banyak permata tersembunyi lainnya menunggu di Bali. Ada beberapa tempat populer yang selalu ramai dikunjungi wisatawan, seperti Hutan Monyet Ubud, Pura Uluwatu, atau Pantai Kuta. Namun, Moms juga bisa pergi ke Pura Tirta Empul, yaitu sebuah pura air Hindu Bali yang terletak dekat dengan kota Tampaksiring, Gianyar, Bali.Kompleks candi terdiri dari bangunan pemandian atau yang oleh penduduk setempat disebut juga petirtaan, berasal dari akar kata tirta yang berarti air suci. Umat Hindu Bali sering mengunjungi tempat ini untuk ritual penyucian, karena diyakini tempat pemandian ini mengalirkan mata air suci. Jika mencari tempat yang lebih indah untuk berfoto, Tanah Lot akan menjadi pilihan yang sempurna. Secara harfiah berarti “tanah di atas laut”, Tanah Lot menghadirkan citra pura Bali (pura) yang berdiri tinggi di atas batu karang, menghadap ke laut lepas yang luas dengan deburan ombak dan latar belakang warna sinematik langit.',
        rating: 4.8,
        gambar: 'bali.jpg',
    },
    {
        id: 3,
        nama: 'Labuan Bajo',
        tempat: 'Nusa Tenggara Timur, Indonesia',
        harga: 94600,
        konten: 'Labuan Bajo sebenarnya adalah sebuah tempat pemancingan ikan kecil yang terletak di ujung paling barat Pulau Flores. Kini, seiring dengan popularitas Taman Nasional Komodo, destinasi ini telah menjadi perwakilan dari banyak destinasi di Nusa Tenggara Timur juga tempat wisata paling indah di Indonesia. Berada dalam kelompok yang sama dengan banyak destinasi lain di Taman Nasional Komodo, Labuan Bajo selalu menjadi tempat memulai, karena di situlah pelabuhan dan bandara berada. Tempat ini menawarkan berbagai keseruan seperti Gua Batu Cermin, Perbukitan Amelia, Gua Rangko, dan air terjun ngarai Cunca Wulang, semuanya menawarkan pemandangan spektakuler yang akan membuat Moms sekeluarga terkejut. Masuki zona Taman Nasional Komodo lebih dalam dan Moms akan menemukan Pantai Pink di Pulau Komodo, salah satu dari tujuh pantai merah muda di seluruh planet ini. Kagumi pemandangan indah dunia lain dan ambil banyak gambar atau bidikan drone sambil menikmati tekstur halus pasir merah muda dan angin laut yang sejuk. Mereka yang ingin mempelajari budaya baru dan menemukan filosofi yang mengubah hidup juga dapat mengunjungi Desa Wae Rebo, sebuah desa kecil dan terpencil di atas dataran tinggi di Pulau Flores. Tempat ini memiliki struktur perumahan unik yang disebut Mbaru Niang dan telah menerima Top Award of Excellence dari UNESCO dalam Penghargaan Warisan Warisan Asia Pasifik UNESCO 2012.',
        rating: 3.9,
        gambar: 'labuanbajo.jpg',
    },
    {
        id: 4,
        nama: 'Bintan',
        tempat: 'Pulau Bintan, Riau',
        harga: 127000,
        konten: 'Kenyamanan dan petualangan belum pernah menyatu secara harmonis dengan banyak keseruan seperti di Pulau Bintan, Provinsi Kepulauan Riau. Sebagai pulau terbesar di Kepulauan Riau, Bintan adalah salah satu tujuan yang paling disukai bagi mereka yang mencari kesenangan dari resor mewah, lapangan golf kelas dunia, dan pemandangan pantai yang menakjubkan. Jika lebih condong ke sisi petualang, Moms dan keluarga dapat mencoba menjelajahi Padang Pasir Busung yang penuh teka-teki, kapal MV Doulos Phos yang terbengkalai, atau Danau Biru Kawal. Jika Moms mencari kemewahan, cobalah menginap di Trikora Beach Club and Resort, The Sanchaya, atau Natra Bintan.',
        rating: 4.2,
        gambar: 'bintan.jpg',
    },
];

// Create data array for user
const user = [
    {
        id: 1,
        nama: 'Local Travel',
        email: 'admin@locavel.com',
        asal: 'DKI Jakarta',
    },
    {
        id: 2,
        nama: 'Sultan Kautsar',
        email: 'sultankautsar@locavel.com',
        asal: 'Magelang, Jawa Tengah',
    },
];

// Middleware
// App port
app.set('port', process.env.PORT || 3000);

// Trust proxy
app.set('trust proxy', true);

let refreshTokens = [];

app.post('/token', (req, res) => {
    const refreshToken = req.body.token;
    if (refreshToken == null) return res.sendStatus(401);
    if (!refreshTokens.includes(refreshToken)) return res.sendStatus(403);
    jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET, (err, user) => {
        if (err) return res.sendStatus(403);
        const accessToken = generateAccessToken({ name: user.id });
        res.json({ accessToken: accessToken });
    });
});

app.delete('/logout', (req, res) => {
    refreshTokens = refreshTokens.filter((token) => token !== req.body.token);
    res.sendStatus(204);
});

app.post('/login', (req, res) => {
    // Authenticate User
    const id = req.body.id;
    const user = { user: id };

    const accessToken = generateAccessToken(user);
    const refreshToken = jwt.sign(user, process.env.REFRESH_TOKEN_SECRET);
    refreshTokens.push(refreshToken);
    res.json({ accessToken: accessToken, refreshToken: refreshToken });
});

function generateAccessToken(user) {
    return jwt.sign(user, process.env.ACCESS_TOKEN_SECRET, {
        expiresIn: '30s',
    });
}

// Root path
app.get('/', (_req, res) => {
    res.json({
        message: 'Welcome to LocaVel API',
    });
});

// Get user by id
app.get('/user/:id', authenticateToken, (req, res) => {
    const id = req.params.id;
    const result = user.find((user) => user.id === parseInt(id));
    if (!result) {
        return res.status(404).json({
            message: 'User not found',
        });
    }
    res.json(result);
});

// Get wisata from array
app.get('/wisata', authenticateToken, (_req, res) => {
    res.json(wisata);
});

// Get wisata by id
app.get('/wisata/:id', authenticateToken, (req, res) => {
    const id = req.params.id;
    const result = wisata.find((wisata) => wisata.id === parseInt(id));
    if (!result) {
        res.status(404).json({
            message: 'Wisata not found',
        });
    }
    res.json(result);
});

// Authenticate the JWT token
function authenticateToken(req, res, next) {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return res.sendStatus(401);

    jwt.verify(token, process.env.ACCESS_TOKEN_SECRET, (err, user) => {
        console.log(err);
        if (err) return res.sendStatus(403);
        req.user = user;
        next();
    });
}

// Creating the server
http.createServer(app).listen(app.get('port'), function () {
    console.log('Listening to ' + app.get('port'));
});
