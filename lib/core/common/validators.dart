class Validator {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email não pode estar vazio';
    } else if (!value.contains('@') || !value.contains('.com')) {
      return 'Email deve conter @ e .com';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Senha não pode estar vazia';
    } else if (value.length < 6) {
      return 'A senha deve ter no mínimo 6 caracteres';
    }
    return null;
  }

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nome Completo não pode estar vazio';
    }
    return null;
  }
}
