// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_info_manager.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _ReleaseInfoManager implements ReleaseInfoManager {
  _ReleaseInfoManager(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GetV3InfoAvailableReleasesResponse> getAvailableReleases({
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetV3InfoAvailableReleasesResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/info/available_releases',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetV3InfoAvailableReleasesResponse _value;
    try {
      _value = GetV3InfoAvailableReleasesResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetV3InfoReleaseNamesResponse> getReleaseNames({
    int? page = 0,
    int? pageSize = 10,
    bool? semver = false,
    Architecture? architecture,
    CLib? cLib,
    HeapSize? heapSize,
    ImageType? imageType,
    AdoptiumJvmImpl? jvmImpl,
    bool? lts,
    OperatingSystem? os,
    Project? project,
    ReleaseType? releaseType,
    SortMethod? sortMethod,
    SortOrder? sortOrder,
    AdoptiumVendor? vendor,
    String? version,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'page_size': pageSize,
      r'semver': semver,
      r'architecture': architecture,
      r'c_lib': cLib,
      r'heap_size': heapSize,
      r'image_type': imageType,
      r'jvm_impl': jvmImpl,
      r'lts': lts,
      r'os': os,
      r'project': project,
      r'release_type': releaseType,
      r'sort_method': sortMethod,
      r'sort_order': sortOrder,
      r'vendor': vendor,
      r'version': version,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetV3InfoReleaseNamesResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/info/release_names',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetV3InfoReleaseNamesResponse _value;
    try {
      _value = GetV3InfoReleaseNamesResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetV3InfoReleaseNotesReleaseNameResponse> getReleaseNotes({
    required String releaseName,
    AdoptiumVendor? vendor,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{r'vendor': vendor};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetV3InfoReleaseNotesReleaseNameResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/info/release_notes/${releaseName}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetV3InfoReleaseNotesReleaseNameResponse _value;
    try {
      _value = GetV3InfoReleaseNotesReleaseNameResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetV3InfoReleaseVersionsResponse> getReleaseVersions({
    int? page = 0,
    int? pageSize = 10,
    bool? semver = false,
    Architecture? architecture,
    CLib? cLib,
    HeapSize? heapSize,
    ImageType? imageType,
    AdoptiumJvmImpl? jvmImpl,
    bool? lts,
    OperatingSystem? os,
    Project? project,
    ReleaseType? releaseType,
    SortMethod? sortMethod,
    SortOrder? sortOrder,
    AdoptiumVendor? vendor,
    String? version,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'page_size': pageSize,
      r'semver': semver,
      r'architecture': architecture,
      r'c_lib': cLib,
      r'heap_size': heapSize,
      r'image_type': imageType,
      r'jvm_impl': jvmImpl,
      r'lts': lts,
      r'os': os,
      r'project': project,
      r'release_type': releaseType,
      r'sort_method': sortMethod,
      r'sort_order': sortOrder,
      r'vendor': vendor,
      r'version': version,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetV3InfoReleaseVersionsResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/info/release_versions',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetV3InfoReleaseVersionsResponse _value;
    try {
      _value = GetV3InfoReleaseVersionsResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
