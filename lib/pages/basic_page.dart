import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class BasicPage extends StatelessWidget {

  final styleTitle = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText()
        ],
      )
    );
  }

  Widget _createImage(){
    return Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
    );
  }

  Widget _createTitle(){
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago con un puente', style: styleTitle),
                SizedBox(height: 7.0),
                Text('Un lago en Alemania', style: styleSubTitle)
              ],
            ),
          ),

          Icon(Icons.star, color: Colors.red, size: 30.0,),
          Text('41', style: TextStyle( fontSize: 20.0))

        ],
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle( fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _createText() {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
      child: Text(
          lipsum.createParagraph(),
          textAlign: TextAlign.justify,
      ),
    );
  }

}
