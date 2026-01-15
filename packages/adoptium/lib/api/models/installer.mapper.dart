// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'installer.dart';

class InstallerMapper extends ClassMapperBase<Installer> {
  InstallerMapper._();

  static InstallerMapper? _instance;
  static InstallerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstallerMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Installer';

  static String _$name(Installer v) => v.name;
  static const Field<Installer, String> _f$name = Field('name', _$name);
  static String _$link(Installer v) => v.link;
  static const Field<Installer, String> _f$link = Field('link', _$link);
  static int? _$size(Installer v) => v.size;
  static const Field<Installer, int> _f$size = Field('size', _$size, opt: true);
  static String? _$checksum(Installer v) => v.checksum;
  static const Field<Installer, String> _f$checksum = Field(
    'checksum',
    _$checksum,
    opt: true,
  );
  static String? _$checksumLink(Installer v) => v.checksumLink;
  static const Field<Installer, String> _f$checksumLink = Field(
    'checksumLink',
    _$checksumLink,
    key: r'checksum_link',
    opt: true,
  );
  static String? _$signatureLink(Installer v) => v.signatureLink;
  static const Field<Installer, String> _f$signatureLink = Field(
    'signatureLink',
    _$signatureLink,
    key: r'signature_link',
    opt: true,
  );
  static int? _$downloadCount(Installer v) => v.downloadCount;
  static const Field<Installer, int> _f$downloadCount = Field(
    'downloadCount',
    _$downloadCount,
    key: r'download_count',
    opt: true,
  );
  static String? _$metadataLink(Installer v) => v.metadataLink;
  static const Field<Installer, String> _f$metadataLink = Field(
    'metadataLink',
    _$metadataLink,
    key: r'metadata_link',
    opt: true,
  );

  @override
  final MappableFields<Installer> fields = const {
    #name: _f$name,
    #link: _f$link,
    #size: _f$size,
    #checksum: _f$checksum,
    #checksumLink: _f$checksumLink,
    #signatureLink: _f$signatureLink,
    #downloadCount: _f$downloadCount,
    #metadataLink: _f$metadataLink,
  };

  static Installer _instantiate(DecodingData data) {
    return Installer(
      name: data.dec(_f$name),
      link: data.dec(_f$link),
      size: data.dec(_f$size),
      checksum: data.dec(_f$checksum),
      checksumLink: data.dec(_f$checksumLink),
      signatureLink: data.dec(_f$signatureLink),
      downloadCount: data.dec(_f$downloadCount),
      metadataLink: data.dec(_f$metadataLink),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Installer fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Installer>(map);
  }

  static Installer fromJson(String json) {
    return ensureInitialized().decodeJson<Installer>(json);
  }
}

mixin InstallerMappable {
  String toJson() {
    return InstallerMapper.ensureInitialized().encodeJson<Installer>(
      this as Installer,
    );
  }

  Map<String, dynamic> toMap() {
    return InstallerMapper.ensureInitialized().encodeMap<Installer>(
      this as Installer,
    );
  }

  InstallerCopyWith<Installer, Installer, Installer> get copyWith =>
      _InstallerCopyWithImpl<Installer, Installer>(
        this as Installer,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InstallerMapper.ensureInitialized().stringifyValue(
      this as Installer,
    );
  }

  @override
  bool operator ==(Object other) {
    return InstallerMapper.ensureInitialized().equalsValue(
      this as Installer,
      other,
    );
  }

  @override
  int get hashCode {
    return InstallerMapper.ensureInitialized().hashValue(this as Installer);
  }
}

extension InstallerValueCopy<$R, $Out> on ObjectCopyWith<$R, Installer, $Out> {
  InstallerCopyWith<$R, Installer, $Out> get $asInstaller =>
      $base.as((v, t, t2) => _InstallerCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InstallerCopyWith<$R, $In extends Installer, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? name,
    String? link,
    int? size,
    String? checksum,
    String? checksumLink,
    String? signatureLink,
    int? downloadCount,
    String? metadataLink,
  });
  InstallerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InstallerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Installer, $Out>
    implements InstallerCopyWith<$R, Installer, $Out> {
  _InstallerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Installer> $mapper =
      InstallerMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    String? link,
    Object? size = $none,
    Object? checksum = $none,
    Object? checksumLink = $none,
    Object? signatureLink = $none,
    Object? downloadCount = $none,
    Object? metadataLink = $none,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (link != null) #link: link,
      if (size != $none) #size: size,
      if (checksum != $none) #checksum: checksum,
      if (checksumLink != $none) #checksumLink: checksumLink,
      if (signatureLink != $none) #signatureLink: signatureLink,
      if (downloadCount != $none) #downloadCount: downloadCount,
      if (metadataLink != $none) #metadataLink: metadataLink,
    }),
  );
  @override
  Installer $make(CopyWithData data) => Installer(
    name: data.get(#name, or: $value.name),
    link: data.get(#link, or: $value.link),
    size: data.get(#size, or: $value.size),
    checksum: data.get(#checksum, or: $value.checksum),
    checksumLink: data.get(#checksumLink, or: $value.checksumLink),
    signatureLink: data.get(#signatureLink, or: $value.signatureLink),
    downloadCount: data.get(#downloadCount, or: $value.downloadCount),
    metadataLink: data.get(#metadataLink, or: $value.metadataLink),
  );

  @override
  InstallerCopyWith<$R2, Installer, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InstallerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

