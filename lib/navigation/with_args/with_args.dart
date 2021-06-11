import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_cookbook/navigation/with_args/screen_arguments.dart';

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = 'passArguments';

  final String title;
  final String message;

  const PassArgumentsScreen(
      {Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ExtractArgumentsScreen.routeName,
                      arguments: ScreenArguments('Extract Arguments Screen',
                          'This message is extracted in the build method'));
                },
                child: Text('To Screen that take args')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PassArgumentsScreen.routeName,
                      arguments: ScreenArguments(
                        'Accept Arguments Screen',
                        'This message is extracted in the onGenerateRoute function.',
                      ));
                },
                child: Text('Navigate to a named that accepts arguments')
            )
          ],
        ),
      ),
    );
  }
}

class RoutesWithArgs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen()
      },
      onGenerateRoute: (settings) {Navigate to a named that accepts arguments
        if(settings.name == PassArgumentsScreen.routeName){
          final args = settings.arguments as ScreenArguments;

          return MaterialPageRoute(
              builder: (context) {
                return PassArgumentsScreen(title: args.title, message: args.message);
              },
          );
        }
        return null;
      },
      home: MainRoute(),
    );
  }
}
