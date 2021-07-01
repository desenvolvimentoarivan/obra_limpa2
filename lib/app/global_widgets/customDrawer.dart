import 'package:getwidget/getwidget.dart';
import 'package:ionicons/ionicons.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GFDrawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GFDrawerHeader(
            closeButton: Text(''),
            decoration: BoxDecoration(
              color: Color(0xF5F5F8),
            ),
            currentAccountPicture: GFAvatar(
              backgroundColor: Colors.transparent,
              shape: GFAvatarShape.standard,
              radius: 80.0,
              child: Image.asset('assets/imagens/logoAppBar.png'),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Arivan Júnior',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'desenvolvimento.arivan@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Ionicons.home_outline),
            title: Text('Início'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Ionicons.clipboard_outline),
            title: Text('Lista'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Ionicons.list_outline),
            title: Text('Histórico'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Ionicons.exit_outline),
            title: Text('Sair'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
