import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MainRoute(),
  ));
}

class MainRoute extends StatelessWidget {
  // final int count = 0;
  // MainRoute({Key key, @required count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Learning App'),
        ),
        body: Center(
            child: Container(
                child: Column(children: [
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
          // RaisedButton(
          //     child: Text('Data passing'),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => DataRoute(),
          //           ));
          //     })
        ]))));
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
                child: Column(children: [
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
                  MaterialPageRoute(
                    builder: (context) => ListViewScreen(
                          todos: List.generate(
                            20,
                            (i) => Todo(
                                  'List $i',
                                  'A description of what needs to be done for List $i',
                                ),
                          ),
                        ),
                  ),
                );
              }),
          RaisedButton(
              child: Text('Grid View'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewScreen(
                            todos: List.generate(
                              20,
                              (i) => Todo(
                                    'List $i',
                                    'A description of what needs to be done for List $i',
                                  ),
                            ),
                          )),
                );
              })
        ]))));
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
            ]))));
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
                child: Column(children: [
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
        ]))));
  }
}

class DataRoute extends StatelessWidget {
  // int count;

  // DataRoute({Key key, @required this.count}) : super(key: key);

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
          child: Text('Go Back'),
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

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class ListViewScreen extends StatelessWidget {
  final List<Todo> todos;

  ListViewScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class GridViewScreen extends StatelessWidget {
  final List<Todo> todos;
  GridViewScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Grid View",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View Screen"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(todos.length, (index) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(todo: todos[index]),
                      ),
                    );
                  },
                  child: Text(todos[index].title),
                ),
                Text(
                  todos[index].title,
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo.
  final Todo todo;

  // In the constructor, require a Todo.
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
        appBar: AppBar(
          title: Text(todo.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(todo.description),
        ));
  }
}
// for alignment refer
