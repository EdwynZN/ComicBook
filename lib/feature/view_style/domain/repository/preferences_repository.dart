import 'package:comic_book/feature/view_style/domain/view_style_type.dart';
import 'package:shared_preferences/shared_preferences.dart';

interface class ViewStyleRepository {
  final SharedPreferences _preferences;
  static const String _viewKey = 'view';

  ViewStyleRepository(this._preferences);

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
