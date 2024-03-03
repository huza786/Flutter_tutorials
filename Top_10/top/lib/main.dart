import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.green,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.green,
                  child: const Material(
                    child: ListTile(
                      title: Text('data'),
                      leading: Icon(Icons.email),
                      trailing: Icon(Icons.ac_unit_sharp),
                      tileColor: Colors.red,
                    ),
                  ),
                )),
          ),
          appBar: AppBar(
            title: Text('Apex School System'),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.gamepad))],
          ),
        ));
  }
}
  /*TextFormField(
                initialValue: 'name',
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  prefixIcon: Icon(
                    Icons.near_me,
                    color: Colors.green,
                  ),
                  hintText: 'name',
                  helperText: 'Type what people call you',
                  suffixIcon: Icon(Icons.accessible_outlined),
                ),
                validator: (value) {},
              ),
              
              
              
              *Rich text widget
   *  RichText(
                  text: TextSpan(
            text: "Don't have an account? ",
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      color: Colors.deepOrangeAccent))
            ],
          ))
   */




/*TEXTFORMFIELD
TextFormField(
          enabled:true,
            cursorColor: Colors.deepPurpleAccent,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                filled :true,
                fillColor: Colors.grey.withOpacity(.3),

                labelText: 'Phone number',
                hintText: 'Phone number',
                hintStyle: TextStyle(color: Colors.green,
                )),
          )*/
//circular avataar
/* Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromARGB(255, 255, 195, 64),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color.fromARGB(255, 248, 74, 39),
                  )
                ],
              ),
            ), */
//container and expanded widget
 /*
  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex:1,
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.rotationX(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 83, 82),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.indigo,
                                blurRadius: 20,
                                spreadRadius: 20,
                              )
                            ]),
                        child: const Center(child: Text("hUZAIFA")),
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.rotationX(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 83, 82),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.indigo,
                                blurRadius: 20,
                                spreadRadius: 20,
                              )
                            ]),
                        child: const Center(child: Text("hUZAIFA")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.rotationX(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 83, 82),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.indigo,
                                blurRadius: 20,
                                spreadRadius: 20,
                              )
                            ]),
                        child: const Center(child: Text("hUZAIFA")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.rotationX(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 83, 82),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.indigo,
                                blurRadius: 20,
                                spreadRadius: 20,
                              )
                            ]),
                        child: const Center(child: Text("hUZAIFA")),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        alignment: Alignment.centerLeft,
                        transform: Matrix4.rotationX(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 83, 82),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.indigo,
                                blurRadius: 20,
                                spreadRadius: 20,
                              )
                            ]),
                        child: const Center(child: Text("hUZAIFA")),
                      ),
                    ),
                  ),
                ]),*/ 
