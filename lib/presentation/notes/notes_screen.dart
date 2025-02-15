import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/presentation/add_edit_note/add_edit_note_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xBE63E3C8),
        title: const Text(
          'My Note App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'SB Agro',
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        children: [
          GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 2.0 / 1.5,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              folderStack(),
              folderStack(),
              folderStack(),
              folderStack(),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              fileStack(),
              fileStack(),
              fileStack(),
              fileStack(),
              fileStack(),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditNoteScreen()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFF25CBA5),
      ),
    );
  }

  Stack folderStack() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('img/roseBudfolder.png'),
            // width: 100,
            fit: BoxFit.fill,
          ),
        ),
        // Positioned(top: 20, left: 20, child: Text('노트 제목')),
        Container(
          alignment: Alignment.center,
          child: Text('폴더 이름'),
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: Icon(Icons.delete),
        ),
      ],
    );
  }

  Container fileStack() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFFE7ED9B),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '파일 제목',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '내용',
                style: TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
