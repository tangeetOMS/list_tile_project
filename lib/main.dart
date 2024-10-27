import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  @override

  List<String> friendList=['Tamim','Shariar','Tangeet','Rakib','Sadu','Tanu','Banu','Saku','Rayhan','Golab','Jobbar','Gobbar','Lahi'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Box'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Scrollbar(
        thickness: 9,
        child: ListView.builder(
            itemCount: friendList.length,
            itemBuilder: (context,index) {
              return ListTile(
                title: Text(friendList[index]),
                subtitle: Text('Sim1'),
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  radius: 19,
                ),
                titleTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                trailing: Icon(Icons.arrow_forward,color: Colors.green,),
                onTap: (){},
              );
            }
        ),
      ),
    );
  }
}
