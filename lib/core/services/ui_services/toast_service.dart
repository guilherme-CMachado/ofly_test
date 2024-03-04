import 'package:flutter/material.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

class ToastService {
  void showSucessToastMessage(BuildContext context) {
    FlutterToastr.show("Usuário criado com sucesso", context);
  }
}
