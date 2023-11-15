import 'package:flutter_bloc/flutter_bloc.dart';

class IsKgCubit extends Cubit<bool> {
  IsKgCubit() : super(false);

  void change(bool value) {
    emit(value);
  }
}
