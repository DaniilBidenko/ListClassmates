import 'package:flutter/material.dart';
import 'package:homework_two/classmates_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
   MyApp({super.key});


@override 
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 7,
          ),
          itemCount: ClassmatesData.classData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
              child: Container(
                color : Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: 
                        Text(
                          '${ClassmatesData.classData[index].name}'
                      ),
                      ),
                      Flexible(
                        child: 
                          Text(
                            '${ClassmatesData.classData[index].age.toString()}'
                        )
                        ),
                   Expanded(
                    child: 
                    Container(
                      width: 10,
                      height: 500,
                      color: Colors.red,
                      child: Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        '${ClassmatesData.classData[index].description}'
                      ),
                    )
                    )
                  ],
                ),
              ),
              );
          },
      ),
    ),
  );
}
}