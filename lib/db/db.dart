import 'package:realm/realm.dart';

class RealmDB {
  late final Realm _realm;

  LocalConfiguration _setRealmConfig(
      {required int schemaVersion, required List<SchemaObject> schemas}) {
    return Configuration.local(schemas, schemaVersion: schemaVersion);
  }

  void setConfig(
      {required int schemaVersion, required List<SchemaObject> schemas}) {
    try {
      final config =
          _setRealmConfig(schemaVersion: schemaVersion, schemas: schemas);
      _realm = Realm(config);
      print('Realm database configured at: ${config.path}');
    } catch (e) {
      print('Error configuring Realm database: $e');
    }
  }

  void insertOrUpdate<T extends RealmObject>(T schema) {
    _realm.write(() {
      _realm.add(schema, update: true);
    });
  }

  void delete<T extends RealmObject>(T object) {
    _realm.write(() {
      _realm.delete<T>(object);
    });
  }

  List<T> getAll<T extends RealmObject>() {
    return _realm.all<T>().toList();
  }

  void close() {
    _realm.close();
  }
}

final RealmDB db = RealmDB();
