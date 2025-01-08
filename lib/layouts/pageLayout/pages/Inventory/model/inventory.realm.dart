// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Inventory extends _Inventory
    with RealmEntity, RealmObjectBase, RealmObject {
  Inventory(
    ObjectId id,
    String name,
    String brandName,
    String category,
    int buyingPrice,
    int sellingPrice,
    int totalQty,
    int sellQty,
    int availableQty,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'brandName', brandName);
    RealmObjectBase.set(this, 'category', category);
    RealmObjectBase.set(this, 'buyingPrice', buyingPrice);
    RealmObjectBase.set(this, 'sellingPrice', sellingPrice);
    RealmObjectBase.set(this, 'totalQty', totalQty);
    RealmObjectBase.set(this, 'sellQty', sellQty);
    RealmObjectBase.set(this, 'availableQty', availableQty);
  }

  Inventory._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get brandName =>
      RealmObjectBase.get<String>(this, 'brandName') as String;
  @override
  set brandName(String value) => RealmObjectBase.set(this, 'brandName', value);

  @override
  String get category =>
      RealmObjectBase.get<String>(this, 'category') as String;
  @override
  set category(String value) => RealmObjectBase.set(this, 'category', value);

  @override
  int get buyingPrice => RealmObjectBase.get<int>(this, 'buyingPrice') as int;
  @override
  set buyingPrice(int value) => RealmObjectBase.set(this, 'buyingPrice', value);

  @override
  int get sellingPrice => RealmObjectBase.get<int>(this, 'sellingPrice') as int;
  @override
  set sellingPrice(int value) =>
      RealmObjectBase.set(this, 'sellingPrice', value);

  @override
  int get totalQty => RealmObjectBase.get<int>(this, 'totalQty') as int;
  @override
  set totalQty(int value) => RealmObjectBase.set(this, 'totalQty', value);

  @override
  int get sellQty => RealmObjectBase.get<int>(this, 'sellQty') as int;
  @override
  set sellQty(int value) => RealmObjectBase.set(this, 'sellQty', value);

  @override
  int get availableQty => RealmObjectBase.get<int>(this, 'availableQty') as int;
  @override
  set availableQty(int value) =>
      RealmObjectBase.set(this, 'availableQty', value);

  @override
  Stream<RealmObjectChanges<Inventory>> get changes =>
      RealmObjectBase.getChanges<Inventory>(this);

  @override
  Stream<RealmObjectChanges<Inventory>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Inventory>(this, keyPaths);

  @override
  Inventory freeze() => RealmObjectBase.freezeObject<Inventory>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'brandName': brandName.toEJson(),
      'category': category.toEJson(),
      'buyingPrice': buyingPrice.toEJson(),
      'sellingPrice': sellingPrice.toEJson(),
      'totalQty': totalQty.toEJson(),
      'sellQty': sellQty.toEJson(),
      'availableQty': availableQty.toEJson(),
    };
  }

  static EJsonValue _toEJson(Inventory value) => value.toEJson();
  static Inventory _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'brandName': EJsonValue brandName,
        'category': EJsonValue category,
        'buyingPrice': EJsonValue buyingPrice,
        'sellingPrice': EJsonValue sellingPrice,
        'totalQty': EJsonValue totalQty,
        'sellQty': EJsonValue sellQty,
        'availableQty': EJsonValue availableQty,
      } =>
        Inventory(
          fromEJson(id),
          fromEJson(name),
          fromEJson(brandName),
          fromEJson(category),
          fromEJson(buyingPrice),
          fromEJson(sellingPrice),
          fromEJson(totalQty),
          fromEJson(sellQty),
          fromEJson(availableQty),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Inventory._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Inventory, 'Inventory', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('brandName', RealmPropertyType.string),
      SchemaProperty('category', RealmPropertyType.string),
      SchemaProperty('buyingPrice', RealmPropertyType.int),
      SchemaProperty('sellingPrice', RealmPropertyType.int),
      SchemaProperty('totalQty', RealmPropertyType.int),
      SchemaProperty('sellQty', RealmPropertyType.int),
      SchemaProperty('availableQty', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
