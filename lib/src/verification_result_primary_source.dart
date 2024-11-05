part of '../fhir_dart.dart';

/// Information about the primary source(s) involved in validation.
class VerificationResultPrimarySource extends BackboneElement
    implements FhirResource {
  /// yes | no | undetermined
  /// Ability of the primary source to push updates/alerts (yes; no; undetermined).
  final CodeableConcept? canPushUpdates;

  /// Method for exchanging information with the primary source
  /// Method for communicating with the primary source (manual; API; Push).
  final List<CodeableConcept>? communicationMethod;

  /// specific | any | source
  /// Type of alerts/updates the primary source can send (specific requested changes; any changes; as defined by source).
  final List<CodeableConcept>? pushTypeAvailable;

  /// Type of primary source (License Board; Primary Education; Continuing Education; Postal Service; Relationship owner; Registration Authority; legal source; issuing source; authoritative source).
  final List<CodeableConcept>? type;

  /// When the target was validated against the primary source.
  final String? validationDate;

  /// successful | failed | unknown
  /// Status of the validation of the target against the primary source (successful; failed; unknown).
  final CodeableConcept? validationStatus;

  /// Reference to the primary source.
  final Reference? who;
  VerificationResultPrimarySource({
    this.canPushUpdates,
    this.communicationMethod,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.pushTypeAvailable,
    this.type,
    this.validationDate,
    this.validationStatus,
    this.who,
  });

  @override
  factory VerificationResultPrimarySource.fromJson(Map<String, dynamic> json) {
    return VerificationResultPrimarySource(
      canPushUpdates: json['canPushUpdates'] != null
          ? CodeableConcept.fromJson(
              (json['canPushUpdates'] as Map).cast<String, dynamic>())
          : null,
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      pushTypeAvailable: (json['pushTypeAvailable'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      validationDate: json['validationDate'] as String?,
      validationStatus: json['validationStatus'] != null
          ? CodeableConcept.fromJson(
              (json['validationStatus'] as Map).cast<String, dynamic>())
          : null,
      who: json['who'] != null
          ? Reference.fromJson((json['who'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'canPushUpdates': canPushUpdates?.toJson(),
        'communicationMethod':
            communicationMethod?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'pushTypeAvailable': pushTypeAvailable?.map((e) => e.toJson()).toList(),
        'type': type?.map((e) => e.toJson()).toList(),
        'validationDate': validationDate,
        'validationStatus': validationStatus?.toJson(),
        'who': who?.toJson(),
      };

  @override
  VerificationResultPrimarySource copyWith({
    CodeableConcept? canPushUpdates,
    List<CodeableConcept>? communicationMethod,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? pushTypeAvailable,
    List<CodeableConcept>? type,
    String? validationDate,
    CodeableConcept? validationStatus,
    Reference? who,
  }) {
    return VerificationResultPrimarySource(
      canPushUpdates: canPushUpdates ?? this.canPushUpdates,
      communicationMethod: communicationMethod ?? this.communicationMethod,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      pushTypeAvailable: pushTypeAvailable ?? this.pushTypeAvailable,
      type: type ?? this.type,
      validationDate: validationDate ?? this.validationDate,
      validationStatus: validationStatus ?? this.validationStatus,
      who: who ?? this.who,
    );
  }
}
