import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:noteui/models/note_models.dart';


class NoteDisplay extends StatelessWidget {
  const NoteDisplay({
    Key key,
    @required this.note, 
  }): super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    final DateFormat _dateFormatter = DateFormat('dd:MMM');
    final DateFormat _timeFormatter = DateFormat('h:mm');
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Color(0xFFF5F7FB),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              Text(
                _timeFormatter.format(note.dateTime),
                style: TextStyle(color: Color(0xFFAFB4C6), fontSize: 18.0, fontWeight: FontWeight.w500),
              ),

            ],
          ),
          SizedBox(height: 15.0,),
          Text(
            note.content,
            style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _dateFormatter.format(note.dateTime),
                style: TextStyle(color: Color(0xFFAFB4C6), fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFF417BFB),
                  borderRadius: BorderRadius.circular(15.0),         
                ),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}