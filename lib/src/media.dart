part of '../fhir_dart.dart';

/// A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by direct reference.
class Media extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Media';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Procedure that caused this media to be created
  /// A procedure that is fulfilled in whole or in part by the creation of this media.
  final List<Reference>? basedOn;

  /// Observed body part
  /// Indicates the site on the subject's body where the observation was made (i.e. the target site).
  /// Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component.
  /// If the use case requires BodySite to be handled as a separate resource (e.g. to identify and track separately) then use the standard extension[ bodySite](extension-bodysite.html).
  final CodeableConcept? bodySite;

  /// Actual Media - reference or data
  /// The actual content of the media - inline or by direct reference to the media source file.
  /// Recommended content types: image/jpeg, image/png, image/tiff, video/mpeg, audio/mp4, application/dicom. Application/dicom can contain the transfer syntax as a parameter.  For media that covers a period of time (video/sound), the content.creationTime is the end time. Creation time is used for tracking, organizing versions and searching.
  final Attachment content;

  /// When Media was collected
  /// The date and time(s) at which the media was collected.
  final String? createdDateTime;

  /// When Media was collected
  /// The date and time(s) at which the media was collected.
  final Period? createdPeriod;

  /// Observing Device
  /// The device used to collect the media.
  /// An extension should be used if further typing of the device is needed.  Secondary devices used to support collecting a media can be represented using either extension or through the Observation.related element.
  final Reference? device;

  /// Name of the device/manufacturer
  /// The name of the device / manufacturer of the device  that was used to make the recording.
  final String? deviceName;

  /// Length in seconds (audio / video)
  /// The duration of the recording in seconds - for audio and video.
  /// The duration might differ from occurrencePeriod if recording was paused.
  final num? duration;

  /// Encounter associated with media
  /// The encounter that establishes the context for this media.
  /// This will typically be the encounter the media occurred within.
  final Reference? encounter;

  /// Number of frames if > 1 (photo)
  /// The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required.
  /// if the number of frames is not supplied, the value may be unknown. Applications should not assume that there is only one frame unless it is explicitly stated.
  final int? frames;

  /// Height of the image in pixels (photo/video).
  final int? height;

  /// Identifier(s) for the image
  /// Identifiers associated with the image - these may include identifiers for the image itself, identifiers for the context of its collection (e.g. series ids) and context ids such as accession numbers or other workflow identifiers.
  /// The identifier label and use can be used to determine what kind of identifier it is.
  final List<Identifier>? identifier;

  /// Date/Time this version was made available
  /// The date and time this version of the media was made available to providers, typically after having been reviewed.
  /// It may be the same as the [`lastUpdated` ](resource-definitions.html#Meta.lastUpdated) time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that does not require the new version to be reviewed and verified again.
  final String? issued;

  /// The type of acquisition equipment/process
  /// Details of the type of the media - usually, how it was acquired (what type of device). If images sourced from a DICOM system, are wrapped in a Media resource, then this is the modality.
  final CodeableConcept? modality;

  /// Comments made about the media by the performer, subject or other participants.
  /// Not to be used for observations, conclusions, etc. Instead use an [Observation](observation.html) based on the Media/ImagingStudy resource.
  final List<Annotation>? note;

  /// The person who generated the image
  /// The person who administered the collection of the image.
  final Reference? fhirOperator;

  /// Part of referenced event
  /// A larger event of which this particular event is a component or step.
  /// Not to be used to link an event to an Encounter - use Media.encounter for that.
  /// [The allowed reference resources may be adjusted as appropriate for the event resource].
  final List<Reference>? partOf;

  /// Why was event performed?
  /// Describes why the event occurred in coded or textual form.
  /// Textual reasons can be captured using reasonCode.text.
  final List<CodeableConcept>? reasonCode;

  /// The current state of the {{title}}.
  /// A nominal state-transition diagram can be found in the [[event.html#statemachine | Event pattern]] documentation
  /// Unknown does not represent "other" - one of the defined statuses must apply.  Unknown is used when the authoring system is not sure what the current status is.
  final String
      status; // Possible values: 'preparation', 'in-progress', 'not-done', 'on-hold', 'stopped', 'completed', 'entered-in-error', 'unknown'
  /// Who/What this Media is a record of.
  final Reference? subject;

  /// Classification of media as image, video, or audio
  /// A code that classifies whether the media is an image, video or audio recording or some other media category.
  final CodeableConcept? type;

  /// Imaging view, e.g. Lateral or Antero-posterior
  /// The name of the imaging view e.g. Lateral or Antero-posterior (AP).
  final CodeableConcept? view;

  /// Width of the image in pixels (photo/video).
  final int? width;
  Media({
    this.basedOn,
    this.bodySite,
    super.contained,
    required this.content,
    this.createdDateTime,
    this.createdPeriod,
    this.device,
    this.deviceName,
    this.duration,
    this.encounter,
    super.fhirExtension,
    this.frames,
    this.height,
    super.id,
    this.identifier,
    super.implicitRules,
    this.issued,
    super.language,
    super.meta,
    this.modality,
    super.modifierExtension,
    this.note,
    this.fhirOperator,
    this.partOf,
    this.reasonCode,
    required this.status,
    this.subject,
    super.text,
    this.type,
    this.view,
    this.width,
  });

  @override
  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              (json['bodySite'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      content:
          Attachment.fromJson((json['content'] as Map).cast<String, dynamic>()),
      createdDateTime: json['createdDateTime'] as String?,
      createdPeriod: json['createdPeriod'] != null
          ? Period.fromJson(
              (json['createdPeriod'] as Map).cast<String, dynamic>())
          : null,
      device: json['device'] != null
          ? Reference.fromJson((json['device'] as Map).cast<String, dynamic>())
          : null,
      deviceName: json['deviceName'] as String?,
      duration: json['duration'] as num?,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      frames: json['frames'] as int?,
      height: json['height'] as int?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      issued: json['issued'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modality: json['modality'] != null
          ? CodeableConcept.fromJson(
              (json['modality'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirOperator: json['operator'] != null
          ? Reference.fromJson(
              (json['operator'] as Map).cast<String, dynamic>())
          : null,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      view: json['view'] != null
          ? CodeableConcept.fromJson(
              (json['view'] as Map).cast<String, dynamic>())
          : null,
      width: json['width'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'basedOn': basedOn?.map((e) => e.toJson()).toList(),
        'bodySite': bodySite?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'content': content.toJson(),
        'createdDateTime': createdDateTime,
        'createdPeriod': createdPeriod?.toJson(),
        'device': device?.toJson(),
        'deviceName': deviceName,
        'duration': duration,
        'encounter': encounter?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'frames': frames,
        'height': height,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'issued': issued,
        'language': language,
        'meta': meta?.toJson(),
        'modality': modality?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'operator': fhirOperator?.toJson(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'reasonCode': reasonCode?.map((e) => e.toJson()).toList(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'type': type?.toJson(),
        'view': view?.toJson(),
        'width': width,
      };

  @override
  Media copyWith({
    List<Reference>? basedOn,
    CodeableConcept? bodySite,
    List<Resource>? contained,
    Attachment? content,
    String? createdDateTime,
    Period? createdPeriod,
    Reference? device,
    String? deviceName,
    num? duration,
    Reference? encounter,
    List<Extension>? fhirExtension,
    int? frames,
    int? height,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? issued,
    String? language,
    Meta? meta,
    CodeableConcept? modality,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Reference? fhirOperator,
    List<Reference>? partOf,
    List<CodeableConcept>? reasonCode,
    String? status,
    Reference? subject,
    Narrative? text,
    CodeableConcept? type,
    CodeableConcept? view,
    int? width,
  }) {
    return Media(
      basedOn: basedOn ?? this.basedOn,
      bodySite: bodySite ?? this.bodySite,
      contained: contained ?? this.contained,
      content: content ?? this.content,
      createdDateTime: createdDateTime ?? this.createdDateTime,
      createdPeriod: createdPeriod ?? this.createdPeriod,
      device: device ?? this.device,
      deviceName: deviceName ?? this.deviceName,
      duration: duration ?? this.duration,
      encounter: encounter ?? this.encounter,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      frames: frames ?? this.frames,
      height: height ?? this.height,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      issued: issued ?? this.issued,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modality: modality ?? this.modality,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      fhirOperator: fhirOperator ?? this.fhirOperator,
      partOf: partOf ?? this.partOf,
      reasonCode: reasonCode ?? this.reasonCode,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      type: type ?? this.type,
      view: view ?? this.view,
      width: width ?? this.width,
    );
  }
}
