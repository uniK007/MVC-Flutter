import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

class DataModel {
  DataModel({
    required this.oTtApp,
    required this.ottAppBar,
    required this.ottBottomNavigationBar,
    required this.ottListTile,
    required this.ottElevatedButton,
    required this.ottTextButton,
    required this.ottTextInputDecoration,
    required this.ottText,
    required this.ottTabBar,
    required this.isActive,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final OTtApp oTtApp;
  final OttAppBar ottAppBar;
  final OttBottomNavigationBar ottBottomNavigationBar;
  final OttListTile ottListTile;
  final OttElevatedButton ottElevatedButton;
  final OttTextButton ottTextButton;
  final OttTextInputDecoration ottTextInputDecoration;
  final OttText ottText;
  final OttTabBar ottTabBar;
  final bool isActive;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      oTtApp: OTtApp.fromJson(
        json["oTTApp"],
      ),
      ottAppBar: OttAppBar.fromJson(
        json["ottAppBar"],
      ),
      ottBottomNavigationBar: OttBottomNavigationBar.fromJson(
        json["ottBottomNavigationBar"],
      ),
      ottListTile: OttListTile.fromJson(
        json["ottListTile"],
      ),
      ottElevatedButton: OttElevatedButton.fromJson(
        json["ottElevatedButton"],
      ),
      ottTextButton: OttTextButton.fromJson(
        json["ottTextButton"],
      ),
      ottTextInputDecoration: OttTextInputDecoration.fromJson(
        json["ottTextInputDecoration"],
      ),
      ottText: OttText.fromJson(
        json["ottText"],
      ),
      ottTabBar: OttTabBar.fromJson(
        json["ottTabBar"],
      ),
      isActive: json["is_active"],
      id: json["_id"],
      createdAt: DateTime.parse(
        json["created_at"],
      ),
      updatedAt: DateTime.parse(
        json["updated_at"],
      ),
      v: json["__v"],
    );
  }
}

class OTtApp {
  OTtApp({
    required this.ottAppBackgroundColor,
  });

  final String ottAppBackgroundColor;

  factory OTtApp.fromJson(Map<String, dynamic> json) {
    return OTtApp(
      ottAppBackgroundColor: json["ottAppBackgroundColor"],
    );
  }
}

class OttAppBar {
  OttAppBar({
    required this.ottIconColor,
    required this.ottTextColor,
    required this.ottBackgroundColor,
  });

  final String ottIconColor;
  final String ottTextColor;
  final String ottBackgroundColor;

  factory OttAppBar.fromJson(Map<String, dynamic> json) {
    return OttAppBar(
      ottIconColor: json["ottIconColor"],
      ottTextColor: json["ottTextColor"],
      ottBackgroundColor: json["ottBackgroundColor"],
    );
  }
}

class OttBottomNavigationBar {
  OttBottomNavigationBar({
    required this.ottSelectedTextColor,
    required this.ottUnSelectedTextColor,
    required this.ottBackgroundColor,
  });

  final String ottSelectedTextColor;
  final String ottUnSelectedTextColor;
  final String ottBackgroundColor;

  factory OttBottomNavigationBar.fromJson(Map<String, dynamic> json) {
    return OttBottomNavigationBar(
      ottSelectedTextColor: json["ottSelectedTextColor"],
      ottUnSelectedTextColor: json["ottUnSelectedTextColor"],
      ottBackgroundColor: json["ottBackgroundColor"],
    );
  }
}

class OttElevatedButton {
  OttElevatedButton({
    required this.ottBackgroundColor,
    required this.ottTextColor,
  });

  final String ottBackgroundColor;
  final String ottTextColor;

  factory OttElevatedButton.fromJson(Map<String, dynamic> json) {
    return OttElevatedButton(
      ottBackgroundColor: json["ottBackgroundColor"],
      ottTextColor: json["ottTextColor"],
    );
  }
}

class OttListTile {
  OttListTile({
    required this.ottIconColor,
    required this.ottTextColor,
  });

  final String ottIconColor;
  final String ottTextColor;

  factory OttListTile.fromJson(Map<String, dynamic> json) {
    return OttListTile(
      ottIconColor: json["ottIconColor"],
      ottTextColor: json["ottTextColor"],
    );
  }
}

class OttTabBar {
  OttTabBar({
    required this.ottTextColor,
    required this.ottIndicatorUnderLineColor,
  });

  final String ottTextColor;
  final String ottIndicatorUnderLineColor;

  factory OttTabBar.fromJson(Map<String, dynamic> json) {
    return OttTabBar(
      ottTextColor: json["ottTextColor"],
      ottIndicatorUnderLineColor: json["ottIndicatorUnderLineColor"],
    );
  }
}

class OttText {
  OttText({
    required this.ottWholeAppTextColor,
  });

  final String ottWholeAppTextColor;

  factory OttText.fromJson(Map<String, dynamic> json) {
    return OttText(
      ottWholeAppTextColor: json["ottWholeAppTextColor"],
    );
  }
}

class OttTextButton {
  OttTextButton({
    required this.ottTextColor,
  });

  final String ottTextColor;

  factory OttTextButton.fromJson(Map<String, dynamic> json) {
    return OttTextButton(
      ottTextColor: json["ottTextColor"],
    );
  }
}

class OttTextInputDecoration {
  OttTextInputDecoration({
    required this.ottIconColor,
    required this.ottHintColor,
    required this.ottLabelTextColor,
  });

  final String ottIconColor;
  final String ottHintColor;
  final String ottLabelTextColor;

  factory OttTextInputDecoration.fromJson(Map<String, dynamic> json) {
    return OttTextInputDecoration(
      ottIconColor: json["ottIconColor"],
      ottHintColor: json["ottHintColor"],
      ottLabelTextColor: json["ottLabelTextColor"],
    );
  }
}
