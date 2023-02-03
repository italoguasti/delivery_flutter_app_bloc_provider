import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailController extends Cubit<int> {
  ProductDetailController() : super(1);

  late final bool _hasOrder;

  void initial(int amout, bool hasOrder) {
    _hasOrder = hasOrder;
    emit(amout);
  }

  void increment() => emit(state + 1);
  void decrement() {
    if (state > (_hasOrder ? 0 : 1)) {
      emit(state - 1);
    }
  }
}
