import 'package:flutter/material.dart';
import 'package:pokedex/config/view/mesagge.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        _Regions(size: size, name: 'kanto', url: 'lib/config/assets/kanto.png'),
        _Regions(size: size, name: 'Jhoto', url: 'lib/config/assets/johto.png'),
        _Regions(size: size, name: 'hoenn', url: 'lib/config/assets/hoenn.webp'),
        _Regions(size: size, name: 'sinnoh', url: 'lib/config/assets/sinnoh.webp')
      ]
      );
  }
}

class _Regions extends StatelessWidget {

  final Size size;
  final String name;
  final String url;
  
  const _Regions({
    required this.size, required this.name, required this.url,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Mesagge()),
            );
      },
      child: Card(
      color: Colors.amber,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset(url,
              width: size.width * 1,
              height: size.width * 0.4,
              fit: BoxFit.cover
              ),
              Text(
                '$name 0 / 150',
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  backgroundColor: Colors.amber,
                  ),
              ),
            ],
          )),
        ),
    );
  }
}

