import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/user/user_bloc.dart';
import 'package:glam_garb_admin/Shared/constants/constants.dart';

class UserCardWidget extends StatefulWidget {
  final String name;
  final bool isBlocked; // Assuming status is represented by a boolean
  final String id;
  final String email;
  final int phone;

  final BuildContext parentContext;

  const UserCardWidget({
    Key? key,
    required this.isBlocked,
    required this.name,
    required this.id,
    required this.parentContext,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: baseColor.shade100,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          widget.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          widget.email,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocConsumer<UserBloc, UserState>(
              listener: (context, state) {
                // TODO: implement listener

                if (state.blockUser!.message == 'User status changed') {
                  ScaffoldMessenger.of(widget.parentContext).showSnackBar(
                    const SnackBar(
                      content: Text('Updated Successfully!'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                return ElevatedButton.icon(
                  label: widget.isBlocked
                      ? Text(
                          "Unblock",
                          style: ktextstyleformenu,
                        )
                      : Text(
                          "Block",
                          style: ktextstyleformenu,
                        ),
                  icon: const Icon(
                    Icons.block,
                    color: kwhite,
                  ),
                  onPressed: () {
                    context.read<UserBloc>().add(
                          UserEvent.blockUsers(widget.id),
                        );
                  },
                  style: ButtonStyle(
                    backgroundColor: widget.isBlocked
                        ? const MaterialStatePropertyAll(Colors.red)
                        : const MaterialStatePropertyAll(Colors.green),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
