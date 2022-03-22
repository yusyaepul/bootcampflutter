import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({ Key? key }) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Achmad Hilmy Firdaus"),
            currentAccountPicture: 
              CircleAvatar(backgroundImage: AssetImage("assets/img/a.jpg")),
            accountEmail: Text("achmad.hilmy@sanbercode.com"),
            ),
            DrawerListTile(
              iconData: Icons.group,
              title: "NewGroup",
              onTilePress: () {},
            ),
            DrawerListTile(
              iconData: Icons.lock,
              title: "New Secret Group",
              onTilePress: () {},
            ),
            DrawerListTile(
              iconData: Icons.notifications,
              title: "New Channel Chat",
              onTilePress: () {},
            ),
            DrawerListTile(
              iconData: Icons.contacts,
              title: "Contacts",
              onTilePress: () {},
            ),
            DrawerListTile(
              iconData: Icons.bookmark_border,
              title: "Saved Message",
              onTilePress: () {},
            ),
            DrawerListTile(
              iconData: Icons.phone,
              title: "Calls",
              onTilePress: () {},
            ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePress;

  const DrawerListTile(
    {Key? key, this.iconData, this.title, this.onTilePress}
  ) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: onTilePress,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}