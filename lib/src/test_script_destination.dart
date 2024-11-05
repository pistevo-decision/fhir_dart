part of '../fhir_dart.dart';

/// An abstract server representing a destination or receiver in a message exchange
/// An abstract server used in operations within this test script in the destination element.
/// The purpose of this element is to define the profile of a destination element used elsewhere in the script.  Test engines could then use the destination-profile mapping to offer a filtered list of test systems that can serve as the receiver for the interaction.
class TestScriptDestination extends BackboneElement implements FhirResource {
  /// The index of the abstract destination server starting at 1
  /// Abstract name given to a destination server in this test script.  The name is provided as a number starting at 1.
  /// A given destination index (e.g. 1) can appear only once in the list (e.g. Destination 1 cannot be specified twice ... once as Form-Manager and again as Form-Processor within the same script as that could get confusing during test configuration).
  /// Different destination indices could play the same actor in the same test script (e.g. You could have two different test systems acting as Form-Manager).
  /// The destination indices provided elsewhere in the test script must be one of these destination indices.
  final int index;

  /// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor
  /// The type of destination profile the test system supports.
  /// Must be a "receiver"/"server" profile.
  final Coding profile;
  TestScriptDestination({
    super.fhirExtension,
    super.id,
    required this.index,
    super.modifierExtension,
    required this.profile,
  });

  @override
  factory TestScriptDestination.fromJson(Map<String, dynamic> json) {
    return TestScriptDestination(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      index: json['index'] as int,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      profile:
          Coding.fromJson((json['profile'] as Map).cast<String, dynamic>()),
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
  TestScriptDestination copyWith({
    List<Extension>? fhirExtension,
    String? id,
    int? index,
    List<Extension>? modifierExtension,
    Coding? profile,
  }) {
    return TestScriptDestination(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      index: index ?? this.index,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      profile: profile ?? this.profile,
    );
  }
}
