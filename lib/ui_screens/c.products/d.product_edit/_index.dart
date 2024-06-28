import 'package:flutter/material.dart';
import 'package:nc_001/ui_widgets/spaces/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_edit.data.dart';
part 'b.product_edit.ctrl.dart';
part 'c.product_edit.view.dart';
part 'widgets/a.product_edit.appbar.dart';
part 'widgets/b.product_edit.fab.dart';
part 'widgets/c.product_edit.name.dart';
part 'widgets/d.product_edit.description.dart';
part 'widgets/e.product_edit.price.dart';
part 'widgets/f.product_edit.quantity.dart';
part 'widgets/g.product_edit.submit.dart';

ProductEditData get _dt => Data.productEdit.st;
ProductEditCtrl get _ct => Ctrl.productEdit;

ProductServ get _sv => Serv.product;
ProductProv get _pv => Prov.product.st;
