import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Form(
              child: Column(
                children: [
                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Title",
                            icon: Icon(Icons.title, color: Colors.grey),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.solid))),
                        maxLines: 1,
                        maxLength: 20,
                        keyboardType: TextInputType.text,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Description",
                            icon: Icon(Icons.description, color: Colors.grey),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.solid))),
                        maxLines: 3,
                        maxLength: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return showModalBottom();
                                });
                          },
                          style: ButtonStyle(
                            alignment: Alignment.center,
                          ),
                          child: Container(
                              color: Colors.amber,
                              child: Icon(
                                Icons.image,
                                color: Colors.white,
                              ))),
                    ],
                  ),
                  SizedBox(height: 70),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(alignment: Alignment.center),
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Add Note",
                              style: Theme.of(context).textTheme.displayLarge,
                            ))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  showModalBottom() {
    return (Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 60),
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.collections_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        SizedBox(
          width: 35,
        ),
        InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.browse_gallery_outlined,
                size: 80,
                color: Colors.grey,
              ),
              Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ]),
    ));
  }
}
