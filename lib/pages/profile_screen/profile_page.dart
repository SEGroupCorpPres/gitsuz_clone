import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/repositories/auth_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        authRepository: RepositoryProvider.of<AuthRepository>(context),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () => context.read<AuthBloc>().add(SignOutRequested()),
              icon: Icon(FeatherIcons.logOut),
            ),
          ],
          // bottom: TabBar(
          //   tabs: [
          //
          //   ],
          // ),
        ),
        // body: TabBarView(
        //   children: [
        //
        //   ],
        // ),
      ),
    );
  }
}
