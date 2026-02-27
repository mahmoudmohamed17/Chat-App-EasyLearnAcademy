import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<bool> {
  ThemeCubit() : super(false);

  void changeTheme() {
    emit(!state);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return json['is_dark'] as bool;
  }

  @override
  Map<String, dynamic>? toJson(state) {
    return {'is_dark': state};
  }
}
