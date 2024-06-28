part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  signUpWithEmailAndPassword() async {
    await _sv.signInWithEmailAndPassword(_dt.rxEmail.value, _dt.rxPassword.value);
  }

  submit() => _dt.rxForm.submit();
}
