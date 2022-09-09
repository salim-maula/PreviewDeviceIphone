import 'package:flutter/material.dart';

class ListPageDinamis extends StatefulWidget {
  const ListPageDinamis({Key? key}) : super(key: key);

  @override
  State<ListPageDinamis> createState() => _ListPageDinamisState();
}

class _ListPageDinamisState extends State<ListPageDinamis> {
  final List _fruits = [
    'semangka',
    'nanas',
    'melon',
    'jeruk',
    'pepaya',
  ];

  void addItem() {
    _fruits.add('buah');
    setState(() {});
  }

  void deleteItem(int idxItem) {
    _fruits.removeAt(idxItem);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page Dinamis"),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          separatorBuilder: ((context, index) =>const Divider(
                height: 1,
                indent: 16,
                endIndent: 16,
                color: Colors.black,
              )),
          itemCount: _fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("${index+1}"),
              ),
              title: Text(_fruits[index]),
              trailing:  IconButton(
                icon:const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () => deleteItem(index),
              ),
            );
          },
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (() => addItem()),
        child: Icon(Icons.add),
      ),

    );

    
  }
}
