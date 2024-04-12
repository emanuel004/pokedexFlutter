import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        _Regions(size: size, name: 'Jhoto')
      ]
      );
  }
}

class _Regions extends StatelessWidget {

  final Size size;
  final String name;
  
  const _Regions({
    required this.size, required this.name,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
    color: Colors.amber,
    child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset('lib/config/assets/johto.png',
            width: size.width * 1,
            height: size.width * 0.4,
               fit: BoxFit.cover),
            Text(
              '$name 0 / 150',
              overflow: TextOverflow.fade,
              style: const TextStyle(
                backgroundColor: Colors.amber,
                ),
            ),
          ],
        )),
      );
  }
}
