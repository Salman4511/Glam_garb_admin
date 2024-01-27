import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String description;
  final String id;
  final String imageUrl;

  const ProductCard({
    Key? key,
    required this.name,
    required this.description,
    required this.id,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var baseUrl = 'http://10.0.2.2:3000/admin/assets/imgs/products/';

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: InkWell(
        // onTap: () {
        //   // Handle tap event
        // },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // You can customize the height and aspect ratio of the image container
           
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(baseUrl + imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          description,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          // Handle edit button press
                          // You may want to navigate to the edit screen
                        }, label: Text('Edit'),
                      ),
                      ElevatedButton.icon(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete button press
                          // You may want to show a confirmation dialog
                        }, label: Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
