import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';

part 'favorite_view_model.g.dart';

class FavoriteViewModel = _FavoriteViewModelBase with _$FavoriteViewModel;

abstract class _FavoriteViewModelBase extends BaseViewModel with Store {
  @override
  void setContext(BuildContext context) => viewModelContext = context;
  @override
  void init() {}
}
