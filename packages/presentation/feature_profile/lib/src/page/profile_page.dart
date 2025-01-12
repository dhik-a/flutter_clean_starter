import 'package:auto_route/annotations.dart';
import 'package:auto_route/src/route/page_route_info.dart';
import 'package:feature_profile/feature_profile.dart';
import 'package:flutter/material.dart';
import 'package:feature_common/feature_common.dart';
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
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Not implemented yet! Sorry!"),
        ),
      ),
    );
  }
}
