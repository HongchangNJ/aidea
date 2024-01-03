/// 默认 API 服务器地址
/// 注意：当你使用自己的服务器时，请修改该地址为你自己的服务器地址
const defaultAPIServerURL = 'http://10.166.36.20:8080';

/// API 服务器地址
String get apiServerURL {
  var url = const String.fromEnvironment(
    'API_SERVER_URL',
    defaultValue: defaultAPIServerURL,
  );

  // 当配置的 URL 为 / 时，自动替换为空，用于 Web 端
  if (url == '/') {
    return '';
  }

  return url;
}
