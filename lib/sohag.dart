import 'package:flutter/material.dart';

class sohag extends StatelessWidget {
  const sohag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Colors.green,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Slivers App Bar"),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  ),
                  ListTile(
                    title: Text("Title"),
                    subtitle: Text("SUbtile"),
                  )
                ]
                )
            )

          ],
        ),

      ),
    );
  }
}
