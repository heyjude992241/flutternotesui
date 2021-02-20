import 'package:flutter/material.dart';
import 'package:noteui/models/note_models.dart';
import 'components/note_display.dart';
import 'components/profile_bar.dart';

class NotesScreen extends StatefulWidget{
  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> with SingleTickerProviderStateMixin{
  int _selectedCategoryIndex = 0;
  TabController _tabController;
  
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 40.0,),
          ProfileBar(),
          SizedBox(height: 40.0,),
          Container(
            height: 280.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length + 1,
              itemBuilder: (context, index){
                if(index == 0) return SizedBox(width: 20.0);
                return _buildCategoryCard(
                  index-1, 
                  categories.keys.toList()[index-1], 
                  categories.values.toList()[index-1]
                );
              },
            ),
          ),
          buildTabBar(),
          SizedBox(height: 20.0,),
            NoteDisplay(note: notes[0]),
            SizedBox(height: 20.0,),
            NoteDisplay(note: notes[1],)
        ],
      ),
    );
  }

  Padding buildTabBar() {
    return Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xFFAFB4C6),
            indicatorColor: Color(0xFF417BFB),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Notes',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                )
              ),
              Tab(
                child: Text(
                  'Important',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                )
              ),
              Tab(
                child: Text(
                  'Performed',
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                )
              )
            ],
          ),
        );
  }

  Widget _buildCategoryCard(int index, String title, int count) {
    
    return GestureDetector(
      onTap: (){
        setState((){
          _selectedCategoryIndex = index;
        });
        print("Index: $_selectedCategoryIndex");
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        height: 240,
        width: 175.0,
        decoration: BoxDecoration(
          color: _selectedCategoryIndex == index ? Color(0xFF417BFB) : Color(0xFFF5F7FB),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [_selectedCategoryIndex == index 
            ? BoxShadow(color:  Colors.black26, offset: Offset(0, 2), blurRadius: 10.0)
            : BoxShadow(color: Colors.transparent)]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                title, 
                style: TextStyle(
                  color: _selectedCategoryIndex == index ? Colors.white: Color(0xFFAFB4C6),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: _selectedCategoryIndex == index ? 
                    Colors.white: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold
                )
              )
            ),
            
          ]
        ),
      ),
    );
  }
}

