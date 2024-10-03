// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Customer extends _Customer
    with RealmEntity, RealmObjectBase, RealmObject {
  Customer(
    ObjectId id,
    String name,
    String farmName,
    String address,
    String phoneNumber,
    String type, {
    String? whatsappNumber,
    String? email,
    int? accountNumber,
    String? ifscCode,
    String? upiId,
    String? gstNumber,
    String? panNumber,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'farmName', farmName);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'phoneNumber', phoneNumber);
    RealmObjectBase.set(this, 'whatsappNumber', whatsappNumber);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'accountNumber', accountNumber);
    RealmObjectBase.set(this, 'ifscCode', ifscCode);
    RealmObjectBase.set(this, 'upiId', upiId);
    RealmObjectBase.set(this, 'gstNumber', gstNumber);
    RealmObjectBase.set(this, 'panNumber', panNumber);
    RealmObjectBase.set(this, 'type', type);
  }

  Customer._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get farmName =>
      RealmObjectBase.get<String>(this, 'farmName') as String;
  @override
  set farmName(String value) => RealmObjectBase.set(this, 'farmName', value);

  @override
  String get address => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  String get phoneNumber =>
      RealmObjectBase.get<String>(this, 'phoneNumber') as String;
  @override
  set phoneNumber(String value) =>
      RealmObjectBase.set(this, 'phoneNumber', value);

  @override
  String? get whatsappNumber =>
      RealmObjectBase.get<String>(this, 'whatsappNumber') as String?;
  @override
  set whatsappNumber(String? value) =>
      RealmObjectBase.set(this, 'whatsappNumber', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  int? get accountNumber =>
      RealmObjectBase.get<int>(this, 'accountNumber') as int?;
  @override
  set accountNumber(int? value) =>
      RealmObjectBase.set(this, 'accountNumber', value);

  @override
  String? get ifscCode =>
      RealmObjectBase.get<String>(this, 'ifscCode') as String?;
  @override
  set ifscCode(String? value) => RealmObjectBase.set(this, 'ifscCode', value);

  @override
  String? get upiId => RealmObjectBase.get<String>(this, 'upiId') as String?;
  @override
  set upiId(String? value) => RealmObjectBase.set(this, 'upiId', value);

  @override
  String? get gstNumber =>
      RealmObjectBase.get<String>(this, 'gstNumber') as String?;
  @override
  set gstNumber(String? value) => RealmObjectBase.set(this, 'gstNumber', value);

  @override
  String? get panNumber =>
      RealmObjectBase.get<String>(this, 'panNumber') as String?;
  @override
  set panNumber(String? value) => RealmObjectBase.set(this, 'panNumber', value);

  @override
  String get type => RealmObjectBase.get<String>(this, 'type') as String;
  @override
  set type(String value) => RealmObjectBase.set(this, 'type', value);

  @override
  Stream<RealmObjectChanges<Customer>> get changes =>
      RealmObjectBase.getChanges<Customer>(this);

  @override
  Stream<RealmObjectChanges<Customer>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Customer>(this, keyPaths);

  @override
  Customer freeze() => RealmObjectBase.freezeObject<Customer>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'farmName': farmName.toEJson(),
      'address': address.toEJson(),
      'phoneNumber': phoneNumber.toEJson(),
      'whatsappNumber': whatsappNumber.toEJson(),
      'email': email.toEJson(),
      'accountNumber': accountNumber.toEJson(),
      'ifscCode': ifscCode.toEJson(),
      'upiId': upiId.toEJson(),
      'gstNumber': gstNumber.toEJson(),
      'panNumber': panNumber.toEJson(),
      'type': type.toEJson(),
    };
  }

  static EJsonValue _toEJson(Customer value) => value.toEJson();
  static Customer _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'farmName': EJsonValue farmName,
        'address': EJsonValue address,
        'phoneNumber': EJsonValue phoneNumber,
        'type': EJsonValue type,
      } =>
        Customer(
          fromEJson(id),
          fromEJson(name),
          fromEJson(farmName),
          fromEJson(address),
          fromEJson(phoneNumber),
          fromEJson(type),
          whatsappNumber: fromEJson(ejson['whatsappNumber']),
          email: fromEJson(ejson['email']),
          accountNumber: fromEJson(ejson['accountNumber']),
          ifscCode: fromEJson(ejson['ifscCode']),
          upiId: fromEJson(ejson['upiId']),
          gstNumber: fromEJson(ejson['gstNumber']),
          panNumber: fromEJson(ejson['panNumber']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Customer._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Customer, 'Customer', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('farmName', RealmPropertyType.string),
      SchemaProperty('address', RealmPropertyType.string),
      SchemaProperty('phoneNumber', RealmPropertyType.string),
      SchemaProperty('whatsappNumber', RealmPropertyType.string,
          optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('accountNumber', RealmPropertyType.int, optional: true),
      SchemaProperty('ifscCode', RealmPropertyType.string, optional: true),
      SchemaProperty('upiId', RealmPropertyType.string, optional: true),
      SchemaProperty('gstNumber', RealmPropertyType.string, optional: true),
      SchemaProperty('panNumber', RealmPropertyType.string, optional: true),
      SchemaProperty('type', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
