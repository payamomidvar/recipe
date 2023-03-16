import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final int id;
  final String title;
  final String image;

  const ImagePage({
    required this.id,
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(title, style: Theme.of(context).textTheme.bodySmall),
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close),
            )
          ],
        ),
        body: Center(
          child: Hero(
            tag: id,
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
