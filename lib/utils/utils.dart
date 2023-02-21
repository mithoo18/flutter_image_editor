Future<bool> requestPermission(Permission permission) async {
  if (await permission.isGranted) {
    return true;
  } else {
    var result = await permission.request();
    if (result == permission.granted) {
      return true;
    }
  }
  return false;
}
