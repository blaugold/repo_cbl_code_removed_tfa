To reproduce the issue, run the following commands:

```shell
dart pub get
dart compile exe main.dart
./main.exe
```

Output of running `main.exe`:

```
20:23:13.905204| [DB] warning: Database.log.file.config is null, meaning file logging is disabled. Log files required for product support are not being generated.
Unhandled exception:
Attempt to execute code removed by Dart AOT compiler (TFA)
#0      FfiReplicator.create (package:cbl/src/replication/ffi_replicator.dart)
#1      SyncReplicator.create (package:cbl/src/replication/replicator.dart:278)
#2      Replicator.createSync (package:cbl/src/replication/replicator.dart:147)
#3      main (file:///Users/terwesten/dev/repo_cbl_code_removed_tfa/main.dart:14)
<asynchronous suspension>
```
