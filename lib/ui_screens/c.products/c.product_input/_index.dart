import 'package:flutter/material.dart';
import 'package:nc_001/ui_widgets/spaces/_index.dart';
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
part 'widgets/c.product_input.name.dart';
part 'widgets/d.product_input.description.dart';
part 'widgets/e.product_input.price.dart';
part 'widgets/f.product_input.quantity.dart';
part 'widgets/g.product_input.submit.dart';

ProductInputData get _dt => Data.productInput.st;
ProductInputCtrl get _ct => Ctrl.productInput;
ProductProv get _pv => Prov.product.st;
ProductServ get _sv => Serv.product;
