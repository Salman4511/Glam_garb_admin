import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glam_garb_admin/Application/banner/banner_bloc.dart';
import 'package:glam_garb_admin/Application/coupon/coupon_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/banner_model/banner_get_model/banner.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/banner/edit_banner_screen.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class BannerCardWidget extends StatefulWidget {
  final String mainHead;
  final String id;
  final String subHead1;
  final String subHead2;
  final String subHead3;
  final String status;
  final BuildContext parentContext;
  final String description;
  final String imageUrl;

  const BannerCardWidget({
    Key? key,
    required this.mainHead,
    required this.id,
    required this.parentContext,
    required this.subHead1,
    required this.subHead2,
    required this.subHead3,
    required this.status,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<BannerCardWidget> createState() => _BannerCardWidgetState();
}

class _BannerCardWidgetState extends State<BannerCardWidget> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'https://www.elegancestores.online/admin/assets/imgs/banner/';
    return Card(
        color: baseColor.shade100,
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (BuildContext context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditBannerScreen(
                            initialBanner: Banners(
                          id: widget.id,
                          description: widget.description,
                          status: widget.status == 'true' ? true : false,
                          h1: widget.subHead1,
                          h2: widget.subHead2,
                          h3: widget.subHead3,
                          p1: widget.mainHead,
                          image: baseUrl + widget.imageUrl,
                        )),
                      ));
                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'Edit',
              ),
              BlocConsumer<BannerBloc, BannerState>(
                listener: (context, state) {
                  // TODO: implement listener
                  if (state.delBanner != null) {
                    if (state.delBanner!.message == "Banner deleted") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Banner deleted')));
                    }
                  }
                },
                builder: (context, state) {
                  return SlidableAction(
                    onPressed: (BuildContext context) {
                      context.read<BannerBloc>().add(
                            BannerEvent.deleteBanner(widget.id),
                          );
                    },
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  );
                },
              )
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(15),
            leading: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(baseUrl + widget.imageUrl),
              )),
            ),
            title: Text(
              widget.mainHead,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              widget.description,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              widget.status.toString(),
              style: TextStyle(
                  fontSize: 16,
                  color: widget.status == 'true' ? Colors.green : Colors.red),
            ),
          ),
        ));
  }
}
