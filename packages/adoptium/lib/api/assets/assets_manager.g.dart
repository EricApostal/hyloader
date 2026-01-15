// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_manager.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _AssetsManager implements AssetsManager {
  _AssetsManager(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<List<Release>> searchReleases({
    required int featureVersion,
    required ReleaseType releaseType,
    int? page = 0,
    int? pageSize = 10,
    Architecture? architecture,
    String? before,
    CLib? cLib,
    HeapSize? heapSize,
    ImageType? imageType,
    AdoptiumJvmImpl? jvmImpl,
    OperatingSystem? os,
    Project? project,
    SortMethod? sortMethod,
    SortOrder? sortOrder,
    AdoptiumVendor? vendor,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'page_size': pageSize,
      r'architecture': architecture,
      r'before': before,
      r'c_lib': cLib,
      r'heap_size': heapSize,
      r'image_type': imageType,
      r'jvm_impl': jvmImpl,
      r'os': os,
      r'project': project,
      r'sort_method': sortMethod,
      r'sort_order': sortOrder,
      r'vendor': vendor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<Release>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/assets/feature_releases/${featureVersion}/${releaseType}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Release> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Release.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<List<BinaryAssetView>> getLatestAssets({
    required int featureVersion,
    required AdoptiumJvmImpl jvmImpl,
    Architecture? architecture,
    ImageType? imageType,
    OperatingSystem? os,
    AdoptiumVendor? vendor,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{
      r'architecture': architecture,
      r'image_type': imageType,
      r'os': os,
      r'vendor': vendor,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<BinaryAssetView>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/assets/latest/${featureVersion}/${jvmImpl}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<BinaryAssetView> _value;
    try {
      _value = _result.data!
          .map(
            (dynamic i) => BinaryAssetView.fromJson(i as Map<String, dynamic>),
          )
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<Release> getReleaseInfo({
    required String releaseName,
    required AdoptiumVendor vendor,
    Architecture? architecture,
    CLib? cLib,
    HeapSize? heapSize,
    ImageType? imageType,
    AdoptiumJvmImpl? jvmImpl,
    OperatingSystem? os,
    Project? project,
    Map<String, dynamic>? extras,
  }) async {
    final _extra = <String, dynamic>{};
    _extra.addAll(extras ?? <String, dynamic>{});
    final queryParameters = <String, dynamic>{
      r'architecture': architecture,
      r'c_lib': cLib,
      r'heap_size': heapSize,
      r'image_type': imageType,
      r'jvm_impl': jvmImpl,
      r'os': os,
      r'project': project,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<Release>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/assets/release_name/${vendor}/${releaseName}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late Release _value;
    try {
      _value = Release.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<List<Release>> searchReleasesByVersion({
    required String version,
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
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<Release>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v3/assets/version/${version}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<Release> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => Release.fromJson(i as Map<String, dynamic>))
          .toList();
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
