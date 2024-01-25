import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/cateory/category_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category.dart';
import 'package:glam_garb_admin/Domain/response_models/category_model/category_add_model/category_model.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/category/edit_category.dart';

class CategoryCard extends StatefulWidget {
  final String categoryName;
  final bool isActive; // Assuming status is represented by a boolean
  final String id;
  final int catOffer;
  final int minAmount;
  final int maxDiscount;
  final String date;
  final BuildContext parentContext;

  const CategoryCard({
    Key? key,
    required this.isActive,
    required this.categoryName,
    required this.id,
    required this.parentContext,
    required this.catOffer,
    required this.minAmount,
    required this.maxDiscount,
    required this.date,
  }) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          widget.categoryName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          widget.isActive ? 'Active' : 'Inactive',
          style: TextStyle(
            color: widget.isActive ? Colors.green : Colors.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditCategory(
                        initialCategory: Category(
                            categoryName: widget.categoryName,
                            active: widget.isActive,
                            sId: widget.id,
                            categoryOffer: widget.catOffer,
                            minAmount: widget.minAmount,
                            maxDiscount: widget.maxDiscount,
                            expiry: widget.date),
                      ),
                    ));
              },
            ),
            BlocConsumer<CategoryBloc, CategoryState>(
              listener: (context, state) {
                // TODO: implement listener
                if (state.delCategory != null) {
                  if (state.delCategory!.message == 'success') {
                    ScaffoldMessenger.of(widget.parentContext).showSnackBar(
                      const SnackBar(content: Text('Delete Successful!')),
                    );
                  }
                }
              },
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    context.read<CategoryBloc>().add(
                          CategoryEvent.deleteCategory(widget.id),
                        );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
