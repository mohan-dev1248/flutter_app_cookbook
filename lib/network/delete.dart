import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

class Album {
  final int? id;
  final String? title;

  Album({this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}


Future<Album> deleteAlbum(String id) async{
  final http.Response response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8'
    }
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON. After deleting,
    // you'll get an empty JSON `{}` response.
    // Don't return `null`, otherwise `snapshot.hasData`
    // will always return false on `FutureBuilder`.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a "200 OK response",
    // then throw an exception.
    throw Exception('Failed to delete album.');
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load album');
  }
}

class DeleteAlbum extends StatefulWidget{

  DeleteAlbum({Key? key}): super(key: key);

  @override
  _DeleteAlbumState createState() => _DeleteAlbumState();
}

class _DeleteAlbumState extends State<DeleteAlbum>{
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();

    _futureAlbum = fetchAlbum();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delete Data example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Delete Data example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: _futureAlbum,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('${snapshot.data?.title ?? 'Deleted'}'),
                        ElevatedButton(
                          child: Text('Delete Data'),
                          onPressed: () {
                            setState(() {
                              _futureAlbum =
                                  deleteAlbum(snapshot.data!.id.toString());
                            });
                          },
                        ),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                }
                return CircularProgressIndicator();
              }
          ),
        ),
      ),
    );
  }
}