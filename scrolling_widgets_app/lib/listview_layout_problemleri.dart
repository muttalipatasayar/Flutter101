import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Layout Problemeri'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text('basladi'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal, // yatayda kaydirmak icin kullanilir
                shrinkWrap:
                    true, // icindeku cocugun yuksekligi kadar yer kaplar // shrinkWrap true ise listview cocuklarinin yuksekligi kadar yer kaplar. false ise container kadar yer kaplar
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                ],
              ),
            ),
            Text('biiti'),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }

  Column columnIcindeListe() {
    return Column(
      children: [
        Text('basladi'),
        Text('bitti'),
      ],
    );
  }
}
