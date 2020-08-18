import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("Drawer Header"),
          //   decoration: BoxDecoration(
          //     color: Colors.purple,
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Sarmad Parvez"),
            accountEmail: Text("saramdparvez92@gmail.com"),
            //   currentAccountPicture: Image.network(
            //       'https://images.unsplash.com/photo-1527538079466-b6297ad15363?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1527538079466-b6297ad15363?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Sarmad Parvez"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("sarmadparvez92@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
