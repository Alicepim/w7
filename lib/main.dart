import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Mr. Wongsakorn Yomjinda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '6414421023',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Text(
            'Next to',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Im proud of myself for being a smart person.'
        'Im smart person and learn new things quickly'
        'Im creative person and always come up with new ideas.'
        'Im kind person and help others.'
        'Im happy person and enjoy life',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work07'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://scontent.fbkk21-1.fna.fbcdn.net/v/t39.30808-6/240006923_1929956713855995_209068281260360824_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeEYbQC2t6GGZ4OCGDnjrY0piPFcHJhv9CWI8VwcmG_0JeBSoYCL2Inp3IUS4_eEC2k3lqL8mXQFqBNcAes7FIUu&_nc_ohc=oKLxcbm8kwgAX_i-xFY&_nc_ht=scontent.fbkk21-1.fna&_nc_e2o=f&oh=00_AfD35YFtyWUucQ4guK3oIugEJ58sKVqhJqVvL6AwY54cuQ&oe=6521E522',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              ('https://scontent.fbkk21-1.fna.fbcdn.net/v/t39.30808-6/236983172_1924322801086053_8128993644495645450_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeGoBSD1brwrjSLJjJzkW-Z039DRh33G1hPf0NGHfcbWEwl-wSJv2DSYk0A0ZK8XZ0dEuBK8P7-fU9Xpd-TE_w3V&_nc_ohc=XiDo-Es2no8AX_qwXK_&_nc_ht=scontent.fbkk21-1.fna&_nc_e2o=f&oh=00_AfDynFSqzYBwJeendTWBy2lg_5XOD7ffCXo3MuriX9EyQA&oe=65232E9C'),
              width: 400,
              height: 400,
            ),
            const Text(
              'นายวงศกร ยมจินดา',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridListScreen()),
                );
              },
              child: const Text('Grid List'),
            ),
          ],
        ),
      ),
    );
  }
}

class GridListScreen extends StatelessWidget {
  const GridListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://www.harpersbazaararabia.com/public/images/2019/04/09/Untitled-design-(1)_1.png${index + 1}.jpg',
                    width: 500,
                    height: 500,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Box ${index + 1}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
