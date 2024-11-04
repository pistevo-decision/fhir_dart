import 'package:fhir_dart/fhir_dart.dart';
import 'json_examples.dart';

void main() {
  final Account accountWithGurantor = Account.fromJson(
    accountWithGurantorMap,
  );

  print(accountWithGurantor.runtimeType); // Account
  print(accountWithGurantor.id); // the id of the account (e.g. 'ewg')

  print(accountWithGurantor.toJson()); // json object (Map<String, dynamic>)

  final Account accountWithGurantorCopy = accountWithGurantor.copyWith(
    id: 'newId',
  );

  print(accountWithGurantorCopy.id); // newId
}
