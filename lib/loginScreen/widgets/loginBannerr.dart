import 'package:flutter/material.dart';
import 'package:ksrtc_app/loginScreen/widgets/loginBannerColor.dart';

class TopStackWelcomeWidget extends StatelessWidget {
  const TopStackWelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2 / 0.6,
      child: CustomPaint(
        painter: WelcomeBanner(),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: const FittedBox(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const FittedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
