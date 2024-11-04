part of '../fhir_dart.dart';

 /// Contract precursor content
 /// Precusory content developed with a focus and intent of supporting the formation a Contract instance, which may be associated with and transformable into a Contract.
class ContractContentDefinition extends BackboneElement implements FhirResource {
   /// Publication Ownership
   /// A copyright statement relating to Contract precursor content. Copyright statements are generally legal restrictions on the use and publishing of the Contract precursor content.
  final String? copyright;
   /// When published
   /// The date (and optionally time) when the contract was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the contract changes.
  final String? publicationDate;
   /// amended | appended | cancelled | disputed | entered-in-error | executable | executed | negotiable | offered | policy | rejected | renewed | revoked | resolved | terminated.
  final String publicationStatus; // Possible values: 'amended', 'appended', 'cancelled', 'disputed', 'entered-in-error', 'executable', 'executed', 'negotiable', 'offered', 'policy', 'rejected', 'renewed', 'revoked', 'resolved', 'terminated'
   /// Publisher Entity
   /// The  individual or organization that published the Contract precursor content.
  final Reference? publisher;
   /// Detailed Content Type Definition
   /// Detailed Precusory content type.
  final CodeableConcept? subType;
   /// Content structure and use
   /// Precusory content structure and use, i.e., a boilerplate, template, application for a contract such as an insurance policy or benefits under a program, e.g., workers compensation.
  final CodeableConcept type;
  ContractContentDefinition({
    this.copyright,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.publicationDate,
    required this.publicationStatus,
    this.publisher,
    this.subType,
    required this.type,
  });
  
  @override
  factory ContractContentDefinition.fromJson(Map<String, dynamic> json) {
    return ContractContentDefinition(
      copyright: json['copyright'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      publicationDate: json['publicationDate'] as String?,
      publicationStatus: json['publicationStatus'] as String,
      publisher: json['publisher'] != null ? Reference.fromJson(json['publisher'] as Map<String, dynamic>) : null,
      subType: json['subType'] != null ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>) : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'copyright': copyright,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'publicationDate': publicationDate,
      'publicationStatus': publicationStatus,
      'publisher': publisher?.toJson(),
      'subType': subType?.toJson(),
      'type': type.toJson(),
    };
  
  @override
  ContractContentDefinition copyWith({
    String? copyright,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? publicationDate,
    String? publicationStatus,
    Reference? publisher,
    CodeableConcept? subType,
    CodeableConcept? type,
  }) {
    return ContractContentDefinition(
      copyright: copyright ?? this.copyright,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      publicationDate: publicationDate ?? this.publicationDate,
      publicationStatus: publicationStatus ?? this.publicationStatus,
      publisher: publisher ?? this.publisher,
      subType: subType ?? this.subType,
      type: type ?? this.type,
    );
  }
}
