//** getting all the courses */
import 'package:reviza_courses/reviza_courses.dart';

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
