import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global/apple_device_identifier.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;

  const BaseScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (deviceIsApple) {
      return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          
        ),
        child: child,
      );
    } else {
      return Scaffold(
        body: child,
      );
    }
  }
}
