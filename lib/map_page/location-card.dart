import 'package:flutter/material.dart';
import '../location_page/LocationPage.dart';

class LocationCard extends StatelessWidget {
  final String name;
  final String description;

  LocationCard(this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.fromLTRB(20,20,20,20),
        child: Column(
        children: <Widget>[
          GestureDetector(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/location.png', height: 70, width: 70),
                Padding(padding: const EdgeInsets.only(top: 20.0),
                  child: Text("   " + name, 
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ), 
          ), 
          GestureDetector(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 20.0),
                  child: Text(description, 
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ), 
          ), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationPage()),
                      );
                    },
                    child: Padding(padding: const EdgeInsets.only(top: 20.0, right: 40.0),
                      child: Text(
                        "Explore",
                        style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic), 
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                      context,
                      //TODO will push to BookmarkPage and add location to bookmarks
                      MaterialPageRoute(builder: (context) => LocationPage()),
                      );
                    },
                    child: Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Bookmark",
                        style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ], 
      ),
    );
  }
}