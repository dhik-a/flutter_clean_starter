import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/page_route_info.dart';
import 'package:domain_profile/domain_profile.dart';
import 'package:feature_profile/feature_profile.dart';
import 'package:feature_profile/src/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:feature_common/feature_common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRouteProvider)
class ProfileRouteProviderImpl implements ProfileRouteProvider {
  @override
  PageRouteInfo route() {
    return ProfileRoute();
  }
}

@RoutePage()
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          GetIt.I.get<ProfileBloc>()..add(ProfileEvent.fetchProfile()),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocSelector<ProfileBloc, ProfileState, UserProfile>(
                selector: (state) => state.userProfile,
                builder: (context, state) {
                  return Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListTile(
                        leading: Image.network(
                          "https://avatar.iran.liara.run/public/11",
                        ),
                        title: Text(
                          state.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        title: Text(
                          state.email,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(),
                      Text(
                        state.bio,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
