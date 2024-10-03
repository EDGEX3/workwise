import 'package:realm/realm.dart';

part 'customer.realm.dart';

@RealmModel()
class _Customer {
  @PrimaryKey()
  late ObjectId id;

  late String name;
  late String farmName;
  late String address;
  late String phoneNumber;
  late String ?whatsappNumber; 
  late String? email;
  late int? accountNumber;
  late String? ifscCode;
  late String? upiId;
  late String? gstNumber;
  late String? panNumber;
  late String type;
}
