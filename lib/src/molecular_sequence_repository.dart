part of '../fhir_dart.dart';

/// External repository which contains detailed report related with observedSeq in this resource
/// Configurations of the external repository. The repository shall store target's observedSeq or records related with target's observedSeq.
class MolecularSequenceRepository extends BackboneElement
    implements FhirResource {
  /// Id of the dataset that used to call for dataset in repository
  /// Id of the variant in this external repository. The server will understand how to use this id to call for more info about datasets in external repository.
  final String? datasetId;

  /// Repository's name
  /// URI of an external repository which contains further details about the genetics data.
  final String? name;

  /// Id of the read in this external repository.
  final String? readsetId;

  /// Click and see / RESTful API / Need login to see / RESTful API with authentication / Other ways to see resource.
  final String
      type; // Possible values: 'directlink', 'openapi', 'login', 'oauth', 'other'
  /// URI of the repository
  /// URI of an external repository which contains further details about the genetics data.
  final String? url;

  /// Id of the variantset that used to call for variantset in repository
  /// Id of the variantset in this external repository. The server will understand how to use this id to call for more info about variantsets in external repository.
  final String? variantsetId;
  MolecularSequenceRepository({
    this.datasetId,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    this.readsetId,
    required this.type,
    this.url,
    this.variantsetId,
  });

  @override
  factory MolecularSequenceRepository.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceRepository(
      datasetId: json['datasetId'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      readsetId: json['readsetId'] as String?,
      type: json['type'] as String,
      url: json['url'] as String?,
      variantsetId: json['variantsetId'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'datasetId': datasetId,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'readsetId': readsetId,
        'type': type,
        'url': url,
        'variantsetId': variantsetId,
      };

  @override
  MolecularSequenceRepository copyWith({
    String? datasetId,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    String? readsetId,
    String? type,
    String? url,
    String? variantsetId,
  }) {
    return MolecularSequenceRepository(
      datasetId: datasetId ?? this.datasetId,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      readsetId: readsetId ?? this.readsetId,
      type: type ?? this.type,
      url: url ?? this.url,
      variantsetId: variantsetId ?? this.variantsetId,
    );
  }
}
