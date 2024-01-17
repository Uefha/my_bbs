import 'package:flutter/material.dart';
import 'package:my_bbs/data/data_recipes.dart';
import 'package:my_bbs/data/resep.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY BBS       KEPENGURUSAN'),
      ),
      body: ListView.builder(
          itemCount: dataResep.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              reseps: dataResep[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataResep[index].image,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataResep[index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black)),
                        Container(
                          width: 200,
                          height: 50,
                          child: Text(
                            'Visi & Misi : ${dataResep[index].htm}',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ClipOval(
                          child: Material(
                            color: Colors.blue, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: const SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.read_more)),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
