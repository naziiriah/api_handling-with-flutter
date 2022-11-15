// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:practice_5/model/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Posts>? post;
  bool isLoaded = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() {
    // post = await ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: const Text('he'),
          );
        },
      ),
    );
  }
}
