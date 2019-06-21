import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainRoute(),
  ));
}

class MainRoute extends StatelessWidget {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning App'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [ 
              Text(''),
              RaisedButton(
                // row wise routing
                child: Text('Navigations'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationRoute()),
                  );
                }),
              RaisedButton(
                child: Text('Layouts'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutRoute()),
                  );
                }),
                RaisedButton(
                child: Text('Data passing'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataRoute()),
                  );
                })
            ]
          )
        )
        )
      );
  }
}

class LayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Tutorial"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [ 
              Text(''),
              RaisedButton(
                // row wise routing
                child: Text('Row'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RowLayoutRoute()),
                  );
                }),
              RaisedButton(
                child: Text('Column'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ColumnLayoutRoute()),
                  );
                }),
                RaisedButton(
                child: Text('List View'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutRoute()),
                  );
                }),
                RaisedButton(
                child: Text('Grid View'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutRoute()),
                  );
                })
            ]
          )
        )
      )
    );
  }
}

class RowLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Layout "),
      ),
      body: Center(
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [ 
              RaisedButton(
                child: Text('Row 1'),
              ),
              RaisedButton(
                child: Text('Row 2'),
              ),
              RaisedButton(
                child: Text('Row 3'),
              ),
            ]
          )
        )
      )
    );
  }
}

class ColumnLayoutRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Layout "),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [ 
              RaisedButton(
                child: Text('Column 1'),
              ),
              RaisedButton(
                child: Text('Column 2'),
              ),
              RaisedButton(
                child: Text('Column 3'),
              ),
              RaisedButton(
                child: Text('Column 4'),
              ),
            ]
          )
        )
      )
    );
  }
}

class DataRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Tutorial"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class NavigationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Tutorial"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


// for alignment refer