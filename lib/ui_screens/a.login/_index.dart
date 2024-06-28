import 'package:flutter/material.dart';
import 'package:nc_001/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../dt_domains/_index.dart';
import '../../xtras/_index.dart';

part 'a.login.data.dart';
part 'b.login.ctrl.dart';
part 'c.login.view.dart';
part 'widgets/a.login.appbar.dart';
part 'widgets/b.login.fab.dart';
part 'widgets/c.login.email.dart';
part 'widgets/d.login.password.dart';
part 'widgets/e.login.submit.dart';
part 'widgets/f.login.or.dart';
part 'widgets/g.login.anonymous.dart';
part 'widgets/h.login.with_google.dart';
part 'widgets/i.login.to_register.dart';

LoginData get _dt => Data.login.st;
LoginCtrl get _ct => Ctrl.login;
AuthProv get _pv => Prov.auth.st;
AuthServ get _sv => Serv.auth;
