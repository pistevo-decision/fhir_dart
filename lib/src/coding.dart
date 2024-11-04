part of '../fhir_dart.dart';

 /// Codes may be defined very casually in enumerations or code lists, up to very formal definitions such as SNOMED CT - see the HL7 v3 Core Principles for more information.
 /// Base StructureDefinition for Coding Type: A reference to a code defined by a terminology system.
 /// References to codes are very common in healthcare models.
class Coding extends Element implements FhirResource {
   /// Symbol in syntax defined by the system
   /// A symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).
  final String? code;
   /// Representation defined by the system
   /// A representation of the meaning of the code in the system, following the rules of the system.
  final String? display;
   /// Identity of the terminology system
   /// The identification of the code system that defines the meaning of the symbol in the code.
   /// The URI may be an OID (urn:oid:...) or a UUID (urn:uuid:...).  OIDs and UUIDs SHALL be references to the HL7 OID registry. Otherwise, the URI should come from HL7's list of FHIR defined special URIs or it should reference to some definition that establishes the system clearly and unambiguously.
  final String? system;
   /// If this coding was chosen directly by the user
   /// Indicates that this coding was chosen by a user directly - e.g. off a pick list of available items (codes or displays).
   /// Amongst a set of alternatives, a directly chosen code is the most appropriate starting point for new translations. There is some ambiguity about what exactly 'directly chosen' implies, and trading partner agreement may be needed to clarify the use of this element and its consequences more completely.
  final bool? userSelected;
   /// Version of the system - if relevant
   /// The version of the code system which was used when choosing this code. Note that a well-maintained code system does not need the version reported, because the meaning of codes is consistent across versions. However this cannot consistently be assured, and when the meaning is not guaranteed to be consistent, the version SHOULD be exchanged.
   /// Where the terminology does not clearly define what string should be used to identify code system versions, the recommendation is to use the date (expressed in FHIR date format) on which that version was officially published as the version date.
  final String? version;
  Coding({
    this.code,
    this.display,
    super.fhirExtension,
    super.id,
    this.system,
    this.userSelected,
    this.version,
  });
  
  @override
  factory Coding.fromJson(Map<String, dynamic> json) {
    return Coding(
      code: json['code'] as String?,
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      system: json['system'] as String?,
      userSelected: json['userSelected'] as bool?,
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'display': display,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'system': system,
      'userSelected': userSelected,
      'version': version,
    };
  
  @override
  Coding copyWith({
    String? code,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    String? system,
    bool? userSelected,
    String? version,
  }) {
    return Coding(
      code: code ?? this.code,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      system: system ?? this.system,
      userSelected: userSelected ?? this.userSelected,
      version: version ?? this.version,
    );
  }
}
