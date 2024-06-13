// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

class MemeFinder extends StatefulWidget {
  @override
  _MemeFinderState createState() => _MemeFinderState();
}

class _MemeFinderState extends State<MemeFinder> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _memes = [];
  bool _isLoading = false;

  Future<void> _fetchMemes(String query) async {
    setState(() {
      _isLoading = true;
    });

    final response =
        await http.get(Uri.parse('https://api.imgflip.com/get_memes'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final memes = data['data']['memes'] as List<dynamic>;
      final filteredMemes = memes
          .where((meme) =>
              meme['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();

      setState(() {
        _memes = filteredMemes;
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      throw Exception('Failed to load memes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search Memes',
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _fetchMemes(_searchController.text);
                },
              ),
            ),
          ),
        ),
        _isLoading
            ? CircularProgressIndicator()
            : Expanded(
                child: ListView.builder(
                  itemCount: _memes.length,
                  itemBuilder: (context, index) {
                    final meme = _memes[index];
                    return Card(
                      child: ListTile(
                        leading: Image.network(meme['url']),
                        title: Text(meme['name']),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meme Finder',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meme Finder'),
        ),
        body: MemeFinder(),
      ),
    );
  }
}
