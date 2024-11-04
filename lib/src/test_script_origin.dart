part of '../fhir_dart.dart';

/// An abstract server representing a client or sender in a message exchange
/// An abstract server used in operations within this test script in the origin element.
/// The purpose of this element is to define the profile of an origin element used elsewhere in the script.  Test engines could then use the origin-profile mapping to offer a filtered list of test systems that can serve as the sender for the interaction.
class TestScriptOrigin extends BackboneElement implements FhirResource {
  /// The index of the abstract origin server starting at 1
  /// Abstract name given to an origin server in this test script.  The name is provided as a number starting at 1.
  /// A given origin index (e.g. 1) can appear only once in the list (e.g. Origin 1 cannot be specified twice ... once as FormFiller and again as FormProcessor within the same script as that could get confusing during test configuration).
  /// Different origin indices could play the same actor in the same test script (e.g. You could have two different test systems acting as Form-Filler).
  /// The origin indices provided elsewhere in the test script must be one of these origin indices.
  final int index;

  /// FHIR-Client | FHIR-SDC-FormFiller
  /// The type of origin profile the test system supports.
  /// Must be a "sender"/"client" profile.
  final Coding profile;
  TestScriptOrigin({
    super.fhirExtension,
    super.id,
    required this.index,
    super.modifierExtension,
    required this.profile,
  });

  @override
  factory TestScriptOrigin.fromJson(Map<String, dynamic> json) {
    return TestScriptOrigin(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      index: json['index'] as int,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: Coding.fromJson(json['profile'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'index': index,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'profile': profile.toJson(),
      };

  @override
  TestScriptOrigin copyWith({
    List<Extension>? fhirExtension,
    String? id,
    int? index,
    List<Extension>? modifierExtension,
    Coding? profile,
  }) {
    return TestScriptOrigin(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      index: index ?? this.index,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      profile: profile ?? this.profile,
    );
  }
}
