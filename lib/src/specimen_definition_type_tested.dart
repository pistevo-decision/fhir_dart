part of '../fhir_dart.dart';

/// Specimen in container intended for testing by lab
/// Specimen conditioned in a container as expected by the testing laboratory.
class SpecimenDefinitionTypeTested extends BackboneElement
    implements FhirResource {
  /// The specimen's container.
  final SpecimenDefinitionTypeTestedContainer? container;

  /// Specimen handling before testing
  /// Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing process.
  final List<SpecimenDefinitionTypeTestedHandling>? handling;

  /// Primary or secondary specimen
  /// Primary of secondary specimen.
  final bool? isDerived;

  /// preferred | alternate
  /// The preference for this type of conditioned specimen.
  final String preference; // Possible values: 'preferred', 'alternate'
  /// Rejection criterion
  /// Criterion for rejection of the specimen in its container by the laboratory.
  final List<CodeableConcept>? rejectionCriterion;

  /// Specimen requirements
  /// Requirements for delivery and special handling of this kind of conditioned specimen.
  final String? requirement;

  /// Specimen retention time
  /// The usual time that a specimen of this kind is retained after the ordered tests are completed, for the purpose of additional testing.
  final Duration? retentionTime;

  /// Type of intended specimen
  /// The kind of specimen conditioned for testing expected by lab.
  final CodeableConcept? type;
  SpecimenDefinitionTypeTested({
    this.container,
    super.fhirExtension,
    this.handling,
    super.id,
    this.isDerived,
    super.modifierExtension,
    required this.preference,
    this.rejectionCriterion,
    this.requirement,
    this.retentionTime,
    this.type,
  });

  @override
  factory SpecimenDefinitionTypeTested.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTested(
      container: json['container'] != null
          ? SpecimenDefinitionTypeTestedContainer.fromJson(
              json['container'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      handling: (json['handling'] as List<dynamic>?)
          ?.map((e) => SpecimenDefinitionTypeTestedHandling.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      isDerived: json['isDerived'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      preference: json['preference'] as String,
      rejectionCriterion: (json['rejectionCriterion'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      requirement: json['requirement'] as String?,
      retentionTime: json['retentionTime'] != null
          ? Duration.fromJson(json['retentionTime'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'container': container?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'handling': handling?.map((e) => e.toJson()).toList(),
        'id': id,
        'isDerived': isDerived,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'preference': preference,
        'rejectionCriterion':
            rejectionCriterion?.map((e) => e.toJson()).toList(),
        'requirement': requirement,
        'retentionTime': retentionTime?.toJson(),
        'type': type?.toJson(),
      };

  @override
  SpecimenDefinitionTypeTested copyWith({
    SpecimenDefinitionTypeTestedContainer? container,
    List<Extension>? fhirExtension,
    List<SpecimenDefinitionTypeTestedHandling>? handling,
    String? id,
    bool? isDerived,
    List<Extension>? modifierExtension,
    String? preference,
    List<CodeableConcept>? rejectionCriterion,
    String? requirement,
    Duration? retentionTime,
    CodeableConcept? type,
  }) {
    return SpecimenDefinitionTypeTested(
      container: container ?? this.container,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      handling: handling ?? this.handling,
      id: id ?? this.id,
      isDerived: isDerived ?? this.isDerived,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preference: preference ?? this.preference,
      rejectionCriterion: rejectionCriterion ?? this.rejectionCriterion,
      requirement: requirement ?? this.requirement,
      retentionTime: retentionTime ?? this.retentionTime,
      type: type ?? this.type,
    );
  }
}
