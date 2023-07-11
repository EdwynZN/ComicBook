import 'package:comic_book/bloc/view_style/state/view_style_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

interface class Preferences {
  final SharedPreferences _preferences;
  static const String _viewKey = 'view';

  Preferences(this._preferences);

  ViewStyle get viewStyle {
    final index = _preferences.getInt(_viewKey);
    if (index != null) {
      return ViewStyle.values[index];
    }
    /// Default value
    return ViewStyle.list;
  }

  Future<void> saveViewStyle(ViewStyle view) async {
    final index = view.index;
    await _preferences.setInt(_viewKey, index);
  }
}
