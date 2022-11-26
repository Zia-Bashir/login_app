import 'package:flutter/Material.dart';
import 'package:login_app/src/utils/dimensions.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(fontSize: dimensions(28, context)),
        ),
        Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontSize: dimensions(16, context)),
        ),
      ],
    );
  }
}
