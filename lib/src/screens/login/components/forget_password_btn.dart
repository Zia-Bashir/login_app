import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/utils/app_colors.dart';
import 'package:login_app/src/utils/app_text.dart';
import 'package:login_app/src/utils/dimensions.dart';
import 'package:login_app/src/widgets/forget_via_method_widget.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    final isDark = Get.isDarkMode;
    return TextButton(
      onPressed: () {
        forgetBottomSheet(context, size, isDark);
      },
      child: Text(
        "Forget Password?",
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Colors.blue, fontSize: dimensions(15, context)),
      ),
    );
  }

//= --- Bottom Sheet Function
  Future<dynamic> forgetBottomSheet(
      BuildContext context, double size, bool isDark) {
    return Get.bottomSheet(
      Container(
        padding: EdgeInsets.all(dimensions(20, context)),
        height: size * 0.5,
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* -- Texts
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tForgetPasswordTitle,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: dimensions(5, context),
                  ),
                  Text(
                    tForgetPasswordSubTitle,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              ForgetViaMethodWidget(
                onTap: () {},
                isDark: isDark,
                icon: Icons.mail_outline_rounded,
                title: tEmail,
                subTitle: tResetViaEMail,
              ),
              ForgetViaMethodWidget(
                onTap: () {},
                isDark: isDark,
                icon: Icons.mobile_friendly_rounded,
                title: tPhoneNo,
                subTitle: tResetViaPhone,
              ),
              SizedBox(
                height: dimensions(30, context),
              ),
            ]),
      ),
      backgroundColor: isDark ? AppColors.fDarkColor : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(dimensions(30, context)),
          topRight: Radius.circular(dimensions(30, context)),
        ),
      ),
    );
  }
}
