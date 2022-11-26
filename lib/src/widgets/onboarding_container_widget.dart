import 'package:flutter/Material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/src/models/onboarding_model.dart';

import '../utils/dimensions.dart';

class OnBoardingContainerWidget extends StatelessWidget {
  const OnBoardingContainerWidget({
    Key? key,
    required this.model,
  }) : super(key: key);
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: model.bgColor,
      padding: EdgeInsets.all(dimensions(30, context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            model.img,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(fontSize: dimensions(25, context)),
              ),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: dimensions(16, context),
                    ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterTitle,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontSize: dimensions(16, context)),
          ),
          SizedBox(
            height: dimensions(100, context),
          ),
        ],
      ),
    );
  }
}
