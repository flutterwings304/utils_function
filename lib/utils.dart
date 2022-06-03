class Utils {
  static String capitalize(String str) {
    if (str.isNotEmpty) {
      List second = [];
      str.replaceAll("  ", " ");
      final nameArray = str.toLowerCase().split(" ");
      for (var e in nameArray) {
        if (e.length > 1) second.add(e);
      }
      return second.map((word) {
        String leftText =
            (word.length > 1) ? word.substring(1, word.length) : '';
        return word[0].toUpperCase() + leftText;
      }).join(' ');
    } else {
      return str;
    }
  }
}
