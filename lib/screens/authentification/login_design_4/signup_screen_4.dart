import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:usersapp/template/values/values.dart';
import 'package:usersapp/template/widgets/custom_button.dart';

import 'package:usersapp/template/widgets/custom_text_form_field.dart';
import 'package:usersapp/template/widgets/spaces.dart';

class SignUpScreen4 extends StatefulWidget {
  @override
  _SignUpScreen4State createState() => _SignUpScreen4State();
}

class _SignUpScreen4State extends State<SignUpScreen4> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          child: Container(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assest/images/1t.png',
                  width: 500,
                  height: 230,
                ),
                ListView(
                  padding: EdgeInsets.all(Sizes.PADDING_0),
                  children: <Widget>[
                    SizedBox(
                      height: heightOfScreen * 0.45,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: Sizes.MARGIN_20),
                      child: _buildForm(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    ThemeData theme = Theme.of(context);
    return Column(
      children: <Widget>[
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: 'user_name'.tr,
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: 'email_address'.tr,
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        SpaceH20(),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: 'password'.tr,
          obscured: true,
          hasSuffixIcon: true,
          suffixIcon: Icon(
            FeatherIcons.lock,
            color: AppColors.linkedInBlue,
          ),
          border: Borders.customOutlineInputBorder(),
          enabledBorder: Borders.customOutlineInputBorder(),
          focusedBorder: Borders.customOutlineInputBorder(
            color: AppColors.violetShade200,
          ),
          labelStyle: Styles.customTextStyle(),
          hintTextStyle: Styles.customTextStyle(),
          textStyle: Styles.customTextStyle(),
        ),
        SpaceH20(),
        Container(
          width: Sizes.WIDTH_180,
          decoration: Decorations.customBoxDecoration(blurRadius: 10),
          child: CustomButton(
            title: 'sign_up'.tr,
            elevation: Sizes.ELEVATION_12,
            textStyle: theme.textTheme.titleSmall?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
            color: AppColors.linkedInBlue,
            height: Sizes.HEIGHT_40,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
