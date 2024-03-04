import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/user/user_bloc.dart';
import 'package:glam_garb_admin/Domain/response_models/users_model/user_get_model/user_get_model.dart';
import 'package:glam_garb_admin/Infrastructure/Services/users/users_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/menu/view/users/widgets/user_tile_widget.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  UserRepo repo = UserRepo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kblackcolor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  kheight60,
                  BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      return FutureBuilder<UserGetModel>(
                        future: repo.getUser(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                                child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data?.users == null) {
                            return const Text('No categories found.');
                          } else {
                            final user = snapshot.data!.users!;
                            return ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: user.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigate or do something with the selected category
                                },
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 8,
                                    ),
                                    child: UserCardWidget(
                                        isBlocked:
                                            user[index].isBlocked ?? false,
                                        name: user[index].name ?? "",
                                        id: user[index].id ?? '',
                                        parentContext: context,
                                        email: user[index].email ?? "",
                                        phone: user[index].phone ?? 0)),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: kBackBtn,
                    ),
                    Text(
                      'Users List',
                      style: ktextStyleForAppBar,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
