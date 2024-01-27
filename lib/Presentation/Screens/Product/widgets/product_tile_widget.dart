import 'package:flutter/material.dart';


class ProductTile extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  
  const ProductTile({Key? key, required this.name, required this.description, required this.imageUrl,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            NetworkImage(imageUrl), 
      ),
      title: Text(name),
      subtitle: Text(description),
      onTap: () {
       
      },
    );
  }
}
