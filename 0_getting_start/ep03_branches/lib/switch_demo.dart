void main(List<String> args) {
  for (var day in ["MON", "FRI", "THU", "SAT", "OTHER"]) {
    switchStatement(day);
  }
}

enum DaysOfWeek { mon, tue, wed, thu, fri, sat, sun }

void switchStatement(String day) {
  switch (day) {
    case "MON":
      print("Very heard day");
      continue working;
    case "FRI":
      print("Happy day");
      continue working;

    working:
    case "TUE" || "WED" || "THU":
      print("Working Day");

    case "SAT" || "SUN":
      print("Holiday");
  }
}

String switchWithString(String day) => switch (day) {
      "MON" => "Hard day",
      "TUE" || "WED" || "THU" => "Working Day",
      "FRI" => "Happy Day",
      "SAT" || "SUN" => "Holiday",
      _ => throw Exception(),
    };

String switchWithEnum(DaysOfWeek day) => switch (day) {
      DaysOfWeek.mon => "Hard day",
      DaysOfWeek.tue || DaysOfWeek.wed || DaysOfWeek.thu => "Working Day",
      DaysOfWeek.fri => "Happy Day",
      DaysOfWeek.sat || DaysOfWeek.sun => "Holiday"
    };
