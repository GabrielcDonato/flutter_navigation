import 'package:flutter/material.dart';
import 'package:flutter_navegacoes/navigation/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: 'page1'),
                //     builder: (context) => Page1(),
                //   ),
                //   ModalRoute.withName('page2'),
                // );
                //removendo todas as paginas
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                  (route) => route.isFirst,
                );
              },
              child: Text("Navigation use Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/page1',
                  ModalRoute.withName('/page2'),
                );
              },
              child: Text("Navigation using Named"),
            )
          ],
        ),
      ),
    );
  }
}
