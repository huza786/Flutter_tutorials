import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              ),
            ]),
            title: const Text(
              'Whatsapp',
              style: TextStyle(color: Colors.white),
            )),
        body: TabBarView(children: <Widget>[
          ListView.builder(
            itemBuilder: (context, index) {
              return const ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/7207758/pexels-photo-7207758.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        ),
                      )),
                ),
                title: Text('Person'),
                subtitle: Text('Some message'),
                trailing: Text('01-02-12'),
              );
            },
            itemCount: 8,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Expanded(
                    child: ClipOval(
                      child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: Image(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          )),
                    ),
                  ),
                ),
                title: Text('Person'),
                subtitle: Text('2 minutes ago'),
              );
            },
            itemCount: 8,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ClipOval(
                    child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Image(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                  ),
                ),
                title: Text('Person'),
                subtitle: Row(
                  children: [Icon(Icons.call_end), Text('11:57:pm')],
                ),
                trailing: Icon(Icons.video_call),
              );
            },
            itemCount: 8,
          ),
        ]),
      ),
    );
  }
}
