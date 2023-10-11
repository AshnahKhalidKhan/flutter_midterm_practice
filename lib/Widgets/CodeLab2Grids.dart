import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CodeLab2Grids extends StatefulWidget
{
  const CodeLab2Grids({super.key});

  @override
  State<CodeLab2Grids> createState() => _CodeLab2GridsState();
}

class _CodeLab2GridsState extends State<CodeLab2Grids>
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
        title: Text('SHRINE'),
        actions: 
        [
          IconButton
          (
            onPressed: () {}, 
            icon: Icon(Icons.search),
          ),
          IconButton
          (
            onPressed: () {}, 
            icon: Icon(Icons.tune),
          ),
        ],
      ),
      body: GridView.count
      (
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: 
        [
          Card
          (
            clipBehavior: Clip.antiAlias,
            child: Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>
              [
                AspectRatio
                (
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset('lib/Assets/logo.jpg'),
                ),
                Padding
                (
                  padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Text('Title'),
                      const SizedBox(height: 8.0),
                      Text('Secondary Text'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}