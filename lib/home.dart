import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List todoList = [
    {
      "name": "Do this",
      "image": "images/image1.png",
      "description": "Do this do it now!!"
    },
    {
      "name": "Don't do this",
      "image": "images/image1.png",
      "description": "Don't this don't do it now!!"
    },
    {
      "name": "Ok fine do it",
      "image": "images/image1.png",
      "description": "Do this do it now!!"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("TODO List"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("login");
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                  size: 24,
                ))
          ],
        ),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("addnote");
          },
          child: Icon(Icons.add, size: 35, color: Colors.white),
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return Dismissible(
                  key: Key("$index"), child: ListNote(notes: todoList[index]));
            },
          ),
        )));
  }
}

class ListNote extends StatelessWidget {
  final notes;
  ListNote({this.notes});

  @override
  Widget build(BuildContext context) {
    // print('this is notes => ${notes["name"]}');

    return (Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(42, 145, 232, 6).withOpacity(0.7),
        border: Border.all(
            color: const Color.fromARGB(255, 82, 243, 33),
            width: 1,
            style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(107, 196, 225, 110),
            offset: const Offset(
              2.0,
              2.0,
            ),
            blurRadius: 14.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(notes["image"]),
              )),
          Expanded(
            flex: 4,
            child: ListTile(
              title: Text(notes["name"],
                  style: Theme.of(context).textTheme.displayLarge),
              subtitle: Text(notes["description"],
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.displayMedium?.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.displayMedium?.fontWeight,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                      letterSpacing: 1.1)),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
