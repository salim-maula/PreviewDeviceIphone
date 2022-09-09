import 'package:flutter/material.dart';
import 'package:kampus_merdeka_ui/screen/cupertino/alert_dialog.dart';
import 'package:kampus_merdeka_ui/screen/list_page.dart';
import 'package:kampus_merdeka_ui/screen/list_page_dinamis.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page"),
        leading: const Icon(
          Icons.menu,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const ListPage(),
                  ),
                );
              },
              child:const Text('List Page'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const ListPageDinamis(),
                  ),
                );
              },
              child:const Text('List Page Dinamis'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>const AlertDialogOne(),
                  ),
                );
              },
              child:const Text('List Page Dinamis'),
            ),
          ],
        ),
      ),
    );
  }
}
