import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/brand/brand_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/brand_model/brand_add_model/brand_model.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/brand/edit_brand.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class BrandCard extends StatelessWidget {
  final double width;
  final String bName;
  final String image;
  final String id;
  const BrandCard({
    Key? key, // Add this line
    required this.width,
    required this.bName,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var baseurl = 'http://10.0.2.2:3000/admin/assets/imgs/brands/cropped/';
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          width: width,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(baseurl + image))),
        ),
        Positioned(
          left: 7,
          top: 146,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.white.withOpacity(0.8)),
            // color: Colors.amber,
            width: 180,
            height: 50,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  kheight,
                  Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      bName,
                      style: textstyle1,
                    ),
                  ])
                ]),
          ),
        ),
        Positioned(
          right: 10,
          child: Container(
            height: 50,
            width: 98,
            // color: Colors.amber,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(30)),
                color: Colors.black.withOpacity(0.8)),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: kwhite,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditBrand(
                            initialBrand:
                                Brand(brandName: bName, image: image, sId: id),
                          ),
                        ));
                  },
                ),
                BlocConsumer<BrandBloc, BrandState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: kwhite,
                      ),
                      onPressed: () {
                        context.read<BrandBloc>().add(
                              BrandEvent.deleteBrand(id),
                            );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
