import 'package:flutter/material.dart';
import 'package:flutter_navegacoes/navigation/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: "page4"),
                    builder: (context) => Page4(),
                  ),
                );
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: "page4"),
                //     builder: (context) => Page4(),
                //   ),
                // );
              },
              child: Text("Navigation use Page"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Navigation using Named"),
            )
          ],
        ),
      ),
    );
  }
}
