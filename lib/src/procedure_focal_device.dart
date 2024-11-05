part of '../fhir_dart.dart';

/// Manipulated, implanted, or removed device
/// A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.
class ProcedureFocalDevice extends BackboneElement implements FhirResource {
  /// Kind of change to device
  /// The kind of change that happened to the device during the procedure.
  final CodeableConcept? action;

  /// Device that was changed
  /// The device that was manipulated (changed) during the procedure.
  final Reference manipulated;
  ProcedureFocalDevice({
    this.action,
    super.fhirExtension,
    super.id,
    required this.manipulated,
    super.modifierExtension,
  });

  @override
  factory ProcedureFocalDevice.fromJson(Map<String, dynamic> json) {
    return ProcedureFocalDevice(
      action: json['action'] != null
          ? CodeableConcept.fromJson(
              (json['action'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      manipulated: Reference.fromJson(
          (json['manipulated'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'action': action?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'manipulated': manipulated.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ProcedureFocalDevice copyWith({
    CodeableConcept? action,
    List<Extension>? fhirExtension,
    String? id,
    Reference? manipulated,
    List<Extension>? modifierExtension,
  }) {
    return ProcedureFocalDevice(
      action: action ?? this.action,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      manipulated: manipulated ?? this.manipulated,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
