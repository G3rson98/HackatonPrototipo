import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';


void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [   
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES'),              
      ],
      title: 'Material App',
      // home: HomePage()
      routes: getApplicationRoutes(),// esta funcion devuelve las rutas

      onGenerateRoute: ( RouteSettings settings ){
        print('rutaLlamada: ${settings.name}');
        return MaterialPageRoute(builder:(BuildContext context)=>AlertPage());
      },
    );
  }
}