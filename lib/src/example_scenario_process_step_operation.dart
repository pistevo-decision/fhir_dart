part of '../fhir_dart.dart';

/// Each interaction or action.
class ExampleScenarioProcessStepOperation extends BackboneElement
    implements FhirResource {
  /// A comment to be inserted in the diagram.
  final String? description;

  /// Who starts the transaction.
  final String? initiator;

  /// Whether the initiator is deactivated right after the transaction.
  final bool? initiatorActive;

  /// The human-friendly name of the interaction.
  final String? name;

  /// The sequential number of the interaction, e.g. 1.2.5.
  final String number;

  /// Who receives the transaction.
  final String? receiver;

  /// Whether the receiver is deactivated right after the transaction.
  final bool? receiverActive;

  /// Each resource instance used by the initiator.
  final ExampleScenarioInstanceContainedInstance? request;

  /// Each resource instance used by the responder.
  final ExampleScenarioInstanceContainedInstance? response;

  /// The type of operation - CRUD.
  final String? type;
  ExampleScenarioProcessStepOperation({
    this.description,
    super.fhirExtension,
    super.id,
    this.initiator,
    this.initiatorActive,
    super.modifierExtension,
    this.name,
    required this.number,
    this.receiver,
    this.receiverActive,
    this.request,
    this.response,
    this.type,
  });

  @override
  factory ExampleScenarioProcessStepOperation.fromJson(
      Map<String, dynamic> json) {
    return ExampleScenarioProcessStepOperation(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      initiator: json['initiator'] as String?,
      initiatorActive: json['initiatorActive'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      number: json['number'] as String,
      receiver: json['receiver'] as String?,
      receiverActive: json['receiverActive'] as bool?,
      request: json['request'] != null
          ? ExampleScenarioInstanceContainedInstance.fromJson(
              (json['request'] as Map).cast<String, dynamic>())
          : null,
      response: json['response'] != null
          ? ExampleScenarioInstanceContainedInstance.fromJson(
              (json['response'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'initiator': initiator,
        'initiatorActive': initiatorActive,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'number': number,
        'receiver': receiver,
        'receiverActive': receiverActive,
        'request': request?.toJson(),
        'response': response?.toJson(),
        'type': type,
      };

  @override
  ExampleScenarioProcessStepOperation copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    String? initiator,
    bool? initiatorActive,
    List<Extension>? modifierExtension,
    String? name,
    String? number,
    String? receiver,
    bool? receiverActive,
    ExampleScenarioInstanceContainedInstance? request,
    ExampleScenarioInstanceContainedInstance? response,
    String? type,
  }) {
    return ExampleScenarioProcessStepOperation(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      initiator: initiator ?? this.initiator,
      initiatorActive: initiatorActive ?? this.initiatorActive,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      number: number ?? this.number,
      receiver: receiver ?? this.receiver,
      receiverActive: receiverActive ?? this.receiverActive,
      request: request ?? this.request,
      response: response ?? this.response,
      type: type ?? this.type,
    );
  }
}
