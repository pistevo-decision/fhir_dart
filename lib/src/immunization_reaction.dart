part of '../fhir_dart.dart';

/// Details of a reaction that follows immunization
/// Categorical data indicating that an adverse event is associated in time to an immunization.
/// A reaction may be an indication of an allergy or intolerance and, if this is determined to be the case, it should be recorded as a new AllergyIntolerance resource instance as most systems will not query against past Immunization.reaction elements.
class ImmunizationReaction extends BackboneElement implements FhirResource {
  /// When reaction started
  /// Date of reaction to the immunization.
  final String? date;

  /// Additional information on reaction
  /// Details of the reaction.
  final Reference? detail;

  /// Indicates self-reported reaction
  /// Self-reported indicator.
  final bool? reported;
  ImmunizationReaction({
    this.date,
    this.detail,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reported,
  });

  @override
  factory ImmunizationReaction.fromJson(Map<String, dynamic> json) {
    return ImmunizationReaction(
      date: json['date'] as String?,
      detail: json['detail'] != null
          ? Reference.fromJson((json['detail'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reported: json['reported'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'date': date,
        'detail': detail?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'reported': reported,
      };

  @override
  ImmunizationReaction copyWith({
    String? date,
    Reference? detail,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? reported,
  }) {
    return ImmunizationReaction(
      date: date ?? this.date,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reported: reported ?? this.reported,
    );
  }
}
