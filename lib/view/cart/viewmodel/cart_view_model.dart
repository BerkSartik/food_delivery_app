import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';

part 'cart_view_model.g.dart';

class CartViewModel = _CartViewModelBase with _$CartViewModel;

abstract class _CartViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {}
}
