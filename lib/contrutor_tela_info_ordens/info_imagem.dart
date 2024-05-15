import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infoConstrutor extends StatelessWidget {
  final int index;
  final String image;
  final String description;
  final String specie;
  final int numimage;
  final int tag;

  const infoConstrutor({
    Key key,
    this.specie,
    this.description,
    this.image,
    this.index,
    this.numimage,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: Container(
        child: ClipOval(
          child: Image.network(
            image,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress) {
              return progress == null ? child : new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
