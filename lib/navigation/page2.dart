import 'package:flutter/material.dart';
import 'package:flutter_navegacoes/navigation/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  static final String routeName = '/page2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: "page3"),
                    builder: (context) => Page3(),
                  ),
                );
              },
              child: Text("Navigation use Page"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.of(context).pop();
              },
              child: Text("Pop"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/page3");
              },
              child: Text("Navigation using Named"),
            )
          ],
        ),
      ),
    );
  }
}
