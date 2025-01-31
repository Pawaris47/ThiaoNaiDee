import 'package:flutter/material.dart';

import 'package:ThiaoNaiDee/color.dart';

class CustomAppTheme{

  ThemeData _themeData;

  CustomAppTheme(){
    this._themeData = _buildFormAppTheme();
  }

  ThemeData get data{
    return _themeData;
  }

  ThemeData _buildFormAppTheme(){

    final ThemeData base = ThemeData.light();

    return base.copyWith(
      accentColor:  mRegistrationBlack,
      primaryColor: mRegistrationBlack,
      scaffoldBackgroundColor: mFormWhite,
      cardColor: mFormWhite,
      errorColor: mFormErrorRed,
      textTheme: _buildFormAppTextTheme(base.textTheme),
      primaryTextTheme: _buildFormAppTextTheme(base.textTheme),
      accentTextTheme: _buildFormAppTextTheme(base.textTheme),
      primaryIconTheme: base.iconTheme.copyWith(color: mRegistrationBlack),
      unselectedWidgetColor: mRegistrationBlack,
    );

  }

  TextTheme _buildFormAppTextTheme(TextTheme base)
  {
    return base.copyWith(

      // ignore: deprecated_member_use
      headline: base.headline.copyWith(
        fontFamily: 'Cookie',
        fontSize: 36.0,
        color: mRegistrationBlack,
      ),
      // ignore: deprecated_member_use
      title: base.title.copyWith(
        fontFamily: 'DINOT',
        fontSize: 18.0,
        color: mRegistrationBlack,
      ),

      // ignore: deprecated_member_use
      subtitle: base.subtitle.copyWith(
        fontFamily: 'DINOT',
        fontSize: 14.0,
        color: mRegistrationBlack,
      ),

      caption: base.caption.copyWith(
        fontFamily: 'DancingsScript',
        fontSize: 50.0,
        color: mRegistrationBlack,
      ),

      // ignore: deprecated_member_use
      display1: base.display1.copyWith(
        fontFamily: 'DancingsScript',
        fontSize: 14.0,
        color: mRegistrationBlack,
      ),

      button: base.button.copyWith(
        fontFamily: 'DancingsScript',
        fontSize: 14.0,
        color: mFormWhite,
      ),

    );

  }
}