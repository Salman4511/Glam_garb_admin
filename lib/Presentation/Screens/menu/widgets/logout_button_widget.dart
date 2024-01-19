import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/auth/auth_bloc.dart';
import 'package:glam_garb_admin/Infrastructure/Services/Auth/Auth_repo.dart';
import 'package:glam_garb_admin/Presentation/Screens/Authentication/view/login_page.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class LogoutButtonWidget extends StatelessWidget {
  const LogoutButtonWidget({
    super.key,
    required this.repo,
  });

  final AuthRepo repo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        // color: Colors.red[400],
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.red[400]),
        child: Center(
            child: Text(
          'Logout',
          style: ktextstyleformenu,
        )),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Logout'),
              content: const Text('Are you Sure,You Want to Logout.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('Cancel'),
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.logout!.message != "") {
                      repo.clearAuthId();
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false,
                      );
                    }
                  },
                  builder: (context, state) {
                    return TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.logOut());
                      },
                      child: const Text(
                        'Logout',
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
