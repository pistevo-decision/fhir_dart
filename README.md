# FHIR_Dart Package

This package provides full support for all FHIR (Fast Healthcare Interoperability Resources) R4 resources in Dart, enabling seamless parsing, manipulation, and serialization of FHIR data. It is ideal for healthcare applications requiring interoperability with FHIR-compliant systems.

## Features

- Parse any FHIR R4 JSON resource into a Dart object.
- Serialize Dart objects back into JSON.
- Supports all FHIR R4 resources.
- deep copy of FHIR objects.

## Getting started

To start using this package, add `fhir_dart` to your `pubspec.yaml` dependencies:

```yaml
dependencies:
  fhir_dart: ^0.1.2
```

## Usage

```dart
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

```
