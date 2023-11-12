
import 'package:flutter/material.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(child: Text('What would like to find ?', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for the cities ?",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          prefixIcon: Icon(Icons.search,color: Colors.grey,)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Destinations",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem('images/canada.jpg', "Canada"),
                        makeItem('images/greece.jpg', "Greece"),
                        makeItem('images/Italy.jpg', "Italy"),
                        makeItem('images/united-states.jpg', "America"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Popular",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem('images/united-states.jpg', "America"),
                        makeItem('images/Italy.jpg', "Italy"),
                        makeItem('images/greece.jpg', "Greece"),
                        makeItem('images/canada.jpg', "Canada"),

                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
Widget makeItem(image,title){
  return AspectRatio(aspectRatio: 1/1,
  child: Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      
      //color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      )
    ),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]
        )
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    ),
  ),
  );
}