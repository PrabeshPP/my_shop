import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
    slivers: <Widget>[
      //2
      SliverAppBar(
        pinned: true,
        backgroundColor: Colors.red,
        expandedHeight: size.height*0.2,
        flexibleSpace: const FlexibleSpaceBar(
          title: Text("Category List", textScaleFactor: 1.5),
            
        ),
      ),
      //3
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, int index) {
            return ListTile(
              leading: Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Placeholder()),
              title: Text('Place ${index + 1}', textScaleFactor: 2),
            );
          },
          childCount: 20,
        ),
      ),
    ],
  ),
    );
  }
}
