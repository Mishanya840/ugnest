class ServerProxyUtil {
  static dynamic checkError(dynamic response) {
    if (response is Exception) throw response;
    return response;
  }
}
