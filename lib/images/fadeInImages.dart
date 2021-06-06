import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInCMemory extends StatelessWidget{
  final title = 'Fade in images';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://picsum.photos/250?image=9'
              ),
            )
          ],
        ),
      ),
    );
  }
}


//ToDo Need to fix the asset loading.gif issue in the below class
// class FadeFromAsset extends StatelessWidget{
//   final title = 'Fade in Images';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: title,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//           child: FadeInImage.assetNetwork(
//             placeholder: 'assets/loading.gif',
//             image: 'https://picsum.photos/250?image=9',
//           ),
//         ),
//       ),
//     );
//   }
// }