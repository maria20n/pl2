import 'package:flutter/material.dart';

import '../font.dart';

class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();
}

final items = ['Hair','Body','Skin'];
String _value;

 /*DropdownMenuItem <String> buildMenuItem (String item) =>
    DropdownMenuItem(
      value : item,
      child: Text (
        item,
        style: TextStyle(fontSize: 20, color: Colors.black54),
      ),
    );*/

class _CategoryState extends State<Category> {
  String dropdownValue = 'Hair';

  @override
  Widget build(BuildContext context) {
    return 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SizedBox(width:10),
          Text('Category : ',
          style: TextStyle(fontSize: 20,
          color: Colors.black54
          ),),
          SizedBox(width:10),
          Container(
            width: 70,
            height: 70,
            child: DropdownButton<String>(
              isExpanded: true,
              itemHeight: 70,

                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black54),
                underline: Container(
                  height: 2,
                  color: Colors.white,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>['Hair', 'Skin', 'Body']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
              
                    child: Text(value,style: TextStyle(fontSize: 20),),
                  );
                }).toList(),
              ),
          ),
        ],
      );
    
  
  }
  
  
   
  
}