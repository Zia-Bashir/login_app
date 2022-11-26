import 'package:flutter/Material.dart';
import 'package:login_app/src/utils/dimensions.dart';

class ForgetViaMethodWidget extends StatelessWidget {
  const ForgetViaMethodWidget({
    Key? key,
    required this.isDark,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final bool isDark;
  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: dimensions(20, context),
          left: dimensions(20, context),
          bottom: dimensions(20, context),
        ),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: isDark ? Colors.black : Colors.grey.shade100,
            borderRadius: BorderRadius.circular(dimensions(10, context))),
        child: Row(
          children: [
            Icon(
              icon,
              size: dimensions(60, context),
            ),
            SizedBox(
              width: dimensions(10, context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: dimensions(5, context),
                ),
                Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: dimensions(16, context)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
