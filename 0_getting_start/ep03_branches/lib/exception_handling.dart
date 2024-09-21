void main(List<String> args) {
  for (var day in ["MON", "OTHER", ""]) {
    try {
      print(getValue(day));
    } on Exception catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}

String getValue(String day) {
  assert(day.isNotEmpty);

  return switch (day) {
    "MON" => "Hard day",
    "TUE" || "WED" || "THU" => "Working Day",
    "FRI" => "Happy Day",
    "SAT" || "SUN" => "Holiday",
    _ => throw Exception(),
  };
}
