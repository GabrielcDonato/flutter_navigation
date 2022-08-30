import 'package:flutter/material.dart';
import 'package:flutter_navegacoes/navigation_params/details.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     settings: const RouteSettings(
                //       name: "Detalhe",
                //       arguments: {
                //         'id': 10,
                //         // 'id': null,
                //       },
                //     ),
                //     builder: (c) => Details(),
                //   ),
                // );
                Navigator.of(context).pushNamed(
                  '/details',
                  arguments: {
                    'id': 150,
                  },
                );
              },
              child: Text('Details'),
            ),
          ],
        ),
      ),
    );
  }
}
