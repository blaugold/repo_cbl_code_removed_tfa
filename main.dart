import 'package:cbl/cbl.dart';
import 'package:cbl_dart/cbl_dart.dart';

void main() async {
  await CouchbaseLiteDart.init(edition: Edition.enterprise);

  final db = Database.openSync('db');

  final replicatorConfiguration = ReplicatorConfiguration(
    target: UrlEndpoint(Uri.parse('ws://localhost:4984/db')),
  )..addCollection(db.defaultCollection);

  final replicator = await Replicator.createSync(replicatorConfiguration);

  await replicator.close();
  await db.close();
}
