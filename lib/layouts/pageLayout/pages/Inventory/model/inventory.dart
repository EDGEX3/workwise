import 'package:realm/realm.dart';

part 'inventory.realm.dart';

@RealmModel()
class _Inventory {
  @PrimaryKey()
  late ObjectId id;

  late String name;
  late String brandName;
  late String category;
  late int buyingPrice;
  late int sellingPrice;
  late int totalQty;
  late int sellQty;
  late int availableQty;
}
