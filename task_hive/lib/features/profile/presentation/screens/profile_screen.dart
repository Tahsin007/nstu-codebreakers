import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/navigation/routes.dart';
import '../../../../core/services/auth_service/auth_service.dart';
import '../../../auth/domain/entity/user_entity.dart';
import '../../../../core/di/di.dart';

class ProfileScreen extends StatelessWidget {
  final UserEntity? userData;
  const ProfileScreen({super.key, this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/blank-grey-scale-profile-picture-placeholder-suitable-representing-user-avatar-contact-generic-style-short-hair-335067558.jpg',
                ),
              ),
              const SizedBox(height: 16),
              Text(
                userData?.name ?? 'User Name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                userData?.email ?? 'user@example.com',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () async {
                  await getIt<AuthService>().getAuthClient().signOut();
                  context.go(MyRoutes.signInRoute);
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
