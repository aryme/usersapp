import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:usersapp/authentification/values/values.dart';
import 'package:usersapp/authentification/widgets/clipShadowPath.dart';
import 'package:usersapp/authentification/widgets/custom_button.dart';
import 'package:usersapp/authentification/widgets/custom_shape_clippers.dart';
import 'package:usersapp/authentification/widgets/custom_text_form_field.dart';
import 'package:usersapp/authentification/widgets/spaces.dart';
import 'package:usersapp/screens/homepage.dart';

class LoginScreen4 extends StatefulWidget {

  @override
  _LoginScreen4State createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Container(
            child: Stack(
              children: <Widget>[
                ClipShadowPath(
                  clipper: LoginDesign4ShapeClipper(),
                  shadow: Shadow(blurRadius: 24, color: AppColors.blue),
                  child: Container(
                    height: heightOfScreen * 0.4,
                    width: widthOfScreen,
                    color: AppColors.blue,
                    child: Container(
                      margin: EdgeInsets.only(left: Sizes.MARGIN_24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: heightOfScreen * 0.1,
                          ),
                          Text(
                            StringConst.WELCOME_BACK,
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontSize: Sizes.TEXT_SIZE_20,
                              color: AppColors.white,
                            ),
                          ),
                          Text(
                            StringConst.LOG_IN_5,
                            style: theme.textTheme.headlineLarge?.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
        const SizedBox(height: 55,),
        CustomTextFormField(
          textInputType: TextInputType.text,
          labelText: StringConst.EMAIL_ADDRESS,
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
          labelText: StringConst.PASSWORD,
          obscured: true,
          hasSuffixIcon: true,
          suffixIcon: Icon(
            FeatherIcons.lock,
            color: AppColors.blackShade10,
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
        SpaceH12(),
        Row(
          children: <Widget>[
          
            Spacer(flex: 1),
            Text(
              StringConst.FORGOT_PASSWORD,
              style: theme.textTheme.titleSmall?.copyWith(
               color: AppColors.blue,
                fontSize: Sizes.TEXT_SIZE_14,
              ),
            ),
          ],
        ),
        SpaceW60(),
        SizedBox(height: 50,),
        Container(
          width: Sizes.WIDTH_180,
          decoration: Decorations.customBoxDecoration(blurRadius: 10),
          child: CustomButton(
            title: StringConst.LOG_IN,
            elevation: Sizes.ELEVATION_8,
            textStyle: theme.textTheme.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
            color: AppColors.blue,
            height: Sizes.HEIGHT_40,
            onPressed: () {

              Get.to(MyHomePage());
            },
          ),
        )
      ],
    );
  }
}
