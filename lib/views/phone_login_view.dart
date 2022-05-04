import 'package:flutter/material.dart';

import '../configs/size_config.dart';

class PhoneLogin extends StatelessWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.1),
        child: Text(
          'this is a relatively a long sentence for testing only, Happy coding!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 2 * SizeConfig.blockSizeVertical,
          ),
        ),
      ),
    );
  }
}
