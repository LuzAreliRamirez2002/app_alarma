import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CupertinoSwitch',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:MyHomePage(),
    );
  }

}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  bool state = false;
  String ruta_imagen = "imagenes/FocoON.jpg";
  String ruta_imagen2 = "imagenes/FocoOFF.jpg";

  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      backgroundColor: Colors.black,
      navigationBar:CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: ()
            { },
            color: CupertinoColors.label,
          ),
          middle: Text("AlarUnoFire"),
          backgroundColor: Colors.blue,
      ),
      child:Material(
        child: Container(
            margin: EdgeInsets.only(top:120, left: 50, right: 20),
            width: double.infinity,
            child:Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.5,
              child: Text("Bluetooth", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.20,
                        child: CupertinoSwitch(
                          value:state,
                          onChanged: (value){
                            state = value;
                            setState(() {
                            },
                            );
                          },                              thumbColor: CupertinoColors.destructiveRed,
                          activeColor: CupertinoColors.activeBlue,


                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  color: CupertinoColors.systemGrey5,
                ),
                SizedBox(
                    height:40
                ),
                Text(state == true? "Bluetooth turned on": "Bluetooth turned off",
                  style:TextStyle(
                      fontWeight: FontWeight.bold,
                      color: state == true? CupertinoColors.secondaryLabel : CupertinoColors.activeOrange
                  ),
                ),
                SizedBox(
                    height:40
                ),
                Image.asset(ruta_imagen2),
                SizedBox(
                    height:40
                ),
                RaisedButton(
                  child: Text("OFF"),
                  color: Colors.red,
                  padding: EdgeInsets.all(20),
                  onPressed: ()=>setState(() {
                    ruta_imagen2 = "imagenes/FocoOFF.jpg";
                  }),
                ),
                SizedBox(
                    height:40
                ),
                RaisedButton(
                  child: Text("ON"),
                  color: Colors.green,
                  padding: EdgeInsets.all(20),
                  onPressed: ()=>setState(() {
                    ruta_imagen2 = "imagenes/FocoON.jpg";
                  }),
                ),
              ],
            )
      ),
      ),
    );
  }
}