import 'package:flutter/material.dart';
import 'package:note_app/presentation/notes/notes_screen.dart';

class AddEditNoteScreen extends StatelessWidget {
  const AddEditNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFAB91),
      body: ListView(
        padding: EdgeInsets.only(top: 50),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(''),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(width: 2.5, color: Colors.white)),
                    minimumSize: MaterialStateProperty.all(Size(50, 50)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        CircleBorder()),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFE7ED9B)),
                  ),
                ),
                MaterialButton(
                  height: 50,
                  shape: CircleBorder(
                      side: BorderSide(width: 3.0, color: Colors.white)),
                  elevation: 8.0,
                  color: Color(0xFFE7ED9B),
                  onPressed: () {},
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(''),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(width: 2.5, color: Colors.white)),
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder()),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFFFAB91),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(''),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(width: 2.5, color: Colors.white)),
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder()),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFCF94DA),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(''),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(width: 2.5, color: Colors.white)),
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder()),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFF81DEEA),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(''),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(width: 2.5, color: Colors.white)),
                      minimumSize: MaterialStateProperty.all(Size(50, 50)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder()),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFF48FB1),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'content',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const NotesScreen()),
          // );
        },
        child: const Icon(Icons.save),
        backgroundColor: const Color(0xFF25CBA5),
      ),
    );
  }
}
