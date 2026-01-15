// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attestation.dart';

class AttestationMapper extends ClassMapperBase<Attestation> {
  AttestationMapper._();

  static AttestationMapper? _instance;
  static AttestationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AttestationMapper._());
      OperatingSystemMapper.ensureInitialized();
      ArchitectureMapper.ensureInitialized();
      ImageTypeMapper.ensureInitialized();
      AdoptiumJvmImplMapper.ensureInitialized();
      AdoptiumVendorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Attestation';

  static String _$id(Attestation v) => v.id;
  static const Field<Attestation, String> _f$id = Field('id', _$id);
  static String _$filename(Attestation v) => v.filename;
  static const Field<Attestation, String> _f$filename = Field(
    'filename',
    _$filename,
  );
  static OperatingSystem _$os(Attestation v) => v.os;
  static const Field<Attestation, OperatingSystem> _f$os = Field('os', _$os);
  static Architecture _$architecture(Attestation v) => v.architecture;
  static const Field<Attestation, Architecture> _f$architecture = Field(
    'architecture',
    _$architecture,
  );
  static ImageType _$imageType(Attestation v) => v.imageType;
  static const Field<Attestation, ImageType> _f$imageType = Field(
    'imageType',
    _$imageType,
    key: r'image_type',
  );
  static int? _$featureVersion(Attestation v) => v.featureVersion;
  static const Field<Attestation, int> _f$featureVersion = Field(
    'featureVersion',
    _$featureVersion,
    opt: true,
  );
  static String? _$releaseName(Attestation v) => v.releaseName;
  static const Field<Attestation, String> _f$releaseName = Field(
    'releaseName',
    _$releaseName,
    key: r'release_name',
    opt: true,
  );
  static AdoptiumJvmImpl? _$jvmImpl(Attestation v) => v.jvmImpl;
  static const Field<Attestation, AdoptiumJvmImpl> _f$jvmImpl = Field(
    'jvmImpl',
    _$jvmImpl,
    key: r'jvm_impl',
    opt: true,
  );
  static AdoptiumVendor? _$vendor(Attestation v) => v.vendor;
  static const Field<Attestation, AdoptiumVendor> _f$vendor = Field(
    'vendor',
    _$vendor,
    opt: true,
  );
  static DateTime? _$committedDate(Attestation v) => v.committedDate;
  static const Field<Attestation, DateTime> _f$committedDate = Field(
    'committedDate',
    _$committedDate,
    opt: true,
  );
  static String? _$targetChecksum(Attestation v) => v.targetChecksum;
  static const Field<Attestation, String> _f$targetChecksum = Field(
    'targetChecksum',
    _$targetChecksum,
    key: r'target_checksum',
    opt: true,
  );
  static String? _$assessorOrg(Attestation v) => v.assessorOrg;
  static const Field<Attestation, String> _f$assessorOrg = Field(
    'assessorOrg',
    _$assessorOrg,
    key: r'assessor_org',
    opt: true,
  );
  static String? _$assessorAffirmation(Attestation v) => v.assessorAffirmation;
  static const Field<Attestation, String> _f$assessorAffirmation = Field(
    'assessorAffirmation',
    _$assessorAffirmation,
    key: r'assessor_affirmation',
    opt: true,
  );
  static String? _$assessorClaimPredicate(Attestation v) =>
      v.assessorClaimPredicate;
  static const Field<Attestation, String> _f$assessorClaimPredicate = Field(
    'assessorClaimPredicate',
    _$assessorClaimPredicate,
    key: r'assessor_claim_predicate',
    opt: true,
  );
  static String? _$attestationLink(Attestation v) => v.attestationLink;
  static const Field<Attestation, String> _f$attestationLink = Field(
    'attestationLink',
    _$attestationLink,
    key: r'attestation_link',
    opt: true,
  );
  static String? _$attestationPublicSigningKeyLink(Attestation v) =>
      v.attestationPublicSigningKeyLink;
  static const Field<Attestation, String> _f$attestationPublicSigningKeyLink =
      Field(
        'attestationPublicSigningKeyLink',
        _$attestationPublicSigningKeyLink,
        key: r'attestation_public_signing_key_link',
        opt: true,
      );

  @override
  final MappableFields<Attestation> fields = const {
    #id: _f$id,
    #filename: _f$filename,
    #os: _f$os,
    #architecture: _f$architecture,
    #imageType: _f$imageType,
    #featureVersion: _f$featureVersion,
    #releaseName: _f$releaseName,
    #jvmImpl: _f$jvmImpl,
    #vendor: _f$vendor,
    #committedDate: _f$committedDate,
    #targetChecksum: _f$targetChecksum,
    #assessorOrg: _f$assessorOrg,
    #assessorAffirmation: _f$assessorAffirmation,
    #assessorClaimPredicate: _f$assessorClaimPredicate,
    #attestationLink: _f$attestationLink,
    #attestationPublicSigningKeyLink: _f$attestationPublicSigningKeyLink,
  };

  static Attestation _instantiate(DecodingData data) {
    return Attestation(
      id: data.dec(_f$id),
      filename: data.dec(_f$filename),
      os: data.dec(_f$os),
      architecture: data.dec(_f$architecture),
      imageType: data.dec(_f$imageType),
      featureVersion: data.dec(_f$featureVersion),
      releaseName: data.dec(_f$releaseName),
      jvmImpl: data.dec(_f$jvmImpl),
      vendor: data.dec(_f$vendor),
      committedDate: data.dec(_f$committedDate),
      targetChecksum: data.dec(_f$targetChecksum),
      assessorOrg: data.dec(_f$assessorOrg),
      assessorAffirmation: data.dec(_f$assessorAffirmation),
      assessorClaimPredicate: data.dec(_f$assessorClaimPredicate),
      attestationLink: data.dec(_f$attestationLink),
      attestationPublicSigningKeyLink: data.dec(
        _f$attestationPublicSigningKeyLink,
      ),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Attestation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Attestation>(map);
  }

  static Attestation fromJson(String json) {
    return ensureInitialized().decodeJson<Attestation>(json);
  }
}

mixin AttestationMappable {
  String toJson() {
    return AttestationMapper.ensureInitialized().encodeJson<Attestation>(
      this as Attestation,
    );
  }

  Map<String, dynamic> toMap() {
    return AttestationMapper.ensureInitialized().encodeMap<Attestation>(
      this as Attestation,
    );
  }

  AttestationCopyWith<Attestation, Attestation, Attestation> get copyWith =>
      _AttestationCopyWithImpl<Attestation, Attestation>(
        this as Attestation,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AttestationMapper.ensureInitialized().stringifyValue(
      this as Attestation,
    );
  }

  @override
  bool operator ==(Object other) {
    return AttestationMapper.ensureInitialized().equalsValue(
      this as Attestation,
      other,
    );
  }

  @override
  int get hashCode {
    return AttestationMapper.ensureInitialized().hashValue(this as Attestation);
  }
}

extension AttestationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Attestation, $Out> {
  AttestationCopyWith<$R, Attestation, $Out> get $asAttestation =>
      $base.as((v, t, t2) => _AttestationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AttestationCopyWith<$R, $In extends Attestation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? id,
    String? filename,
    OperatingSystem? os,
    Architecture? architecture,
    ImageType? imageType,
    int? featureVersion,
    String? releaseName,
    AdoptiumJvmImpl? jvmImpl,
    AdoptiumVendor? vendor,
    DateTime? committedDate,
    String? targetChecksum,
    String? assessorOrg,
    String? assessorAffirmation,
    String? assessorClaimPredicate,
    String? attestationLink,
    String? attestationPublicSigningKeyLink,
  });
  AttestationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AttestationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Attestation, $Out>
    implements AttestationCopyWith<$R, Attestation, $Out> {
  _AttestationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Attestation> $mapper =
      AttestationMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    String? filename,
    OperatingSystem? os,
    Architecture? architecture,
    ImageType? imageType,
    Object? featureVersion = $none,
    Object? releaseName = $none,
    Object? jvmImpl = $none,
    Object? vendor = $none,
    Object? committedDate = $none,
    Object? targetChecksum = $none,
    Object? assessorOrg = $none,
    Object? assessorAffirmation = $none,
    Object? assessorClaimPredicate = $none,
    Object? attestationLink = $none,
    Object? attestationPublicSigningKeyLink = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (filename != null) #filename: filename,
      if (os != null) #os: os,
      if (architecture != null) #architecture: architecture,
      if (imageType != null) #imageType: imageType,
      if (featureVersion != $none) #featureVersion: featureVersion,
      if (releaseName != $none) #releaseName: releaseName,
      if (jvmImpl != $none) #jvmImpl: jvmImpl,
      if (vendor != $none) #vendor: vendor,
      if (committedDate != $none) #committedDate: committedDate,
      if (targetChecksum != $none) #targetChecksum: targetChecksum,
      if (assessorOrg != $none) #assessorOrg: assessorOrg,
      if (assessorAffirmation != $none)
        #assessorAffirmation: assessorAffirmation,
      if (assessorClaimPredicate != $none)
        #assessorClaimPredicate: assessorClaimPredicate,
      if (attestationLink != $none) #attestationLink: attestationLink,
      if (attestationPublicSigningKeyLink != $none)
        #attestationPublicSigningKeyLink: attestationPublicSigningKeyLink,
    }),
  );
  @override
  Attestation $make(CopyWithData data) => Attestation(
    id: data.get(#id, or: $value.id),
    filename: data.get(#filename, or: $value.filename),
    os: data.get(#os, or: $value.os),
    architecture: data.get(#architecture, or: $value.architecture),
    imageType: data.get(#imageType, or: $value.imageType),
    featureVersion: data.get(#featureVersion, or: $value.featureVersion),
    releaseName: data.get(#releaseName, or: $value.releaseName),
    jvmImpl: data.get(#jvmImpl, or: $value.jvmImpl),
    vendor: data.get(#vendor, or: $value.vendor),
    committedDate: data.get(#committedDate, or: $value.committedDate),
    targetChecksum: data.get(#targetChecksum, or: $value.targetChecksum),
    assessorOrg: data.get(#assessorOrg, or: $value.assessorOrg),
    assessorAffirmation: data.get(
      #assessorAffirmation,
      or: $value.assessorAffirmation,
    ),
    assessorClaimPredicate: data.get(
      #assessorClaimPredicate,
      or: $value.assessorClaimPredicate,
    ),
    attestationLink: data.get(#attestationLink, or: $value.attestationLink),
    attestationPublicSigningKeyLink: data.get(
      #attestationPublicSigningKeyLink,
      or: $value.attestationPublicSigningKeyLink,
    ),
  );

  @override
  AttestationCopyWith<$R2, Attestation, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AttestationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

