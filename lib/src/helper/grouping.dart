import 'package:reviza_courses/reviza_courses.dart';

//** getting all the courses */
List<String> getAllCourses() {
  List<String> courses = [];

  data.forEach((university, faculties) {
    faculties.forEach((faculty, degrees) {
      degrees.forEach((course, _) {
        courses.add(course);
      });
    });
  });

  return courses;
}

//** Getting all universities */
List<String> getAllUniversities() {
  return data.keys.toList();
}

//** Getting all schools belonging to a university */
List<String> getSchools(String university) {
  return data[university]?.keys.toList() ?? [];
}

//** Getting all departments belonging to a school */
List<String> getDepartments(String university, String school) {
  return data[university]?[school]?.keys.toList() ?? [];
}

//** Getting all years belonging to a department */
List<String> getYears(String university, String school, String department) {
  return data[university]?[school]?[department]?.keys.toList() ?? [];
}

//** Getting all the courses for the given year */
List<String> getCoursesForYear(
  String university,
  String school,
  String department,
  String year,
) {
  return data[university]?[school]?[department]?[year] ?? [];
}
