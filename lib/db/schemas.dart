import 'package:realm/realm.dart';
import 'package:workwise/layouts/pageLayout/pages/Customers/model/customer.dart';
import 'package:workwise/layouts/pageLayout/pages/Inventory/model/inventory.dart';

final List<SchemaObject> schemas = [Customer.schema,Inventory.schema];
final int schemaVersion = 2;
