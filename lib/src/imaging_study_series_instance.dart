part of '../fhir_dart.dart';

/// A single SOP instance from the series
/// A single SOP instance within the series, e.g. an image, or presentation state.
class ImagingStudySeriesInstance extends BackboneElement
    implements FhirResource {
  /// The number of this instance in the series
  /// The number of instance in the series.
  final int? number;

  /// DICOM class type
  /// DICOM instance  type.
  final Coding sopClass;

  /// Description of instance
  /// The description of the instance.
  /// Particularly for post-acquisition analytic objects, such as SR, presentation states, value mapping, etc.
  final String? title;

  /// DICOM SOP Instance UID
  /// The DICOM SOP Instance UID for this image or other DICOM content.
  /// See  [DICOM PS3.3 C.12.1](http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.12.html#sect_C.12.1).
  final String uid;
  ImagingStudySeriesInstance({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.number,
    required this.sopClass,
    this.title,
    required this.uid,
  });

  @override
  factory ImagingStudySeriesInstance.fromJson(Map<String, dynamic> json) {
    return ImagingStudySeriesInstance(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      number: json['number'] as int?,
      sopClass:
          Coding.fromJson((json['sopClass'] as Map).cast<String, dynamic>()),
      title: json['title'] as String?,
      uid: json['uid'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'number': number,
        'sopClass': sopClass.toJson(),
        'title': title,
        'uid': uid,
      };

  @override
  ImagingStudySeriesInstance copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    int? number,
    Coding? sopClass,
    String? title,
    String? uid,
  }) {
    return ImagingStudySeriesInstance(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      sopClass: sopClass ?? this.sopClass,
      title: title ?? this.title,
      uid: uid ?? this.uid,
    );
  }
}
