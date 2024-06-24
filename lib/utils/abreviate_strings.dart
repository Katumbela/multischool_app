class StringUtils {
  static String abbreviate(String name) {
    if (name.length <= 10) return name;
    return name.substring(0, 7) + '...';
  }
}
