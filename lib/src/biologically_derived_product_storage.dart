part of '../fhir_dart.dart';

/// Product storage.
class BiologicallyDerivedProductStorage extends BackboneElement
    implements FhirResource {
  /// Description of storage.
  final String? description;

  /// Storage timeperiod.
  final Period? duration;

  /// Temperature scale used.
  final String? scale; // Possible values: 'farenheit', 'celsius', 'kelvin'
  /// Storage temperature.
  final num? temperature;
  BiologicallyDerivedProductStorage({
    this.description,
    this.duration,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.scale,
    this.temperature,
  });

  @override
  factory BiologicallyDerivedProductStorage.fromJson(
      Map<String, dynamic> json) {
    return BiologicallyDerivedProductStorage(
      description: json['description'] as String?,
      duration: json['duration'] != null
          ? Period.fromJson((json['duration'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      scale: json['scale'] as String?,
      temperature: json['temperature'] as num?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'duration': duration?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'scale': scale,
        'temperature': temperature,
      };

  @override
  BiologicallyDerivedProductStorage copyWith({
    String? description,
    Period? duration,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? scale,
    num? temperature,
  }) {
    return BiologicallyDerivedProductStorage(
      description: description ?? this.description,
      duration: duration ?? this.duration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      scale: scale ?? this.scale,
      temperature: temperature ?? this.temperature,
    );
  }
}
