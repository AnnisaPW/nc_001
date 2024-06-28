import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_input.data.dart';
part 'b.product_input.ctrl.dart';
part 'c.product_input.view.dart';
part 'widgets/a.product_input.appbar.dart';
part 'widgets/b.product_input.fab.dart';
part 'widgets/c.product_input.charlie.dart';
part 'widgets/d.product_input.delta.dart';
part 'widgets/e.product_input.echo.dart';

ProductInputData get _dt => Data.productInput.st;
ProductInputCtrl get _ct => Ctrl.productInput;
ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
