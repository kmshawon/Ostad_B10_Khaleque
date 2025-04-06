void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];


  Map<String, double> results = {};


  students.forEach((student) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    int sum = 0;


    scores.forEach((score) {
      sum += score;
    });


    double average = sum / scores.length;
    average = double.parse(average.toStringAsFixed(2));


    results[name] = average;
  });


  var OrderRes = Map.fromEntries(
      results.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value))
  );


  print(OrderRes);
}