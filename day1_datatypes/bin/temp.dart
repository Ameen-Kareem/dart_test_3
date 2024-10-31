import 'dart:io';

void main() {
  List<double> temperatures = [30, 32, 28, 31, 29, 35, 33];
  tempSorting(temperatures);
}

tempSorting(List<double> temperatures) {
  double total = 0;
  double temp;
  List<double> above30 = [];
  List<double> aboveAvg = [];
  double high;
  double low;

  for (int i = 0; i < temperatures.length; i++) {
    total += temperatures[i];
    if (temperatures[i] > 30) {
      above30.add(temperatures[i]);
    }
  }
  double avg = total / temperatures.length;
  for (int j = 0; j < temperatures.length - 1; j++) {
    for (int i = j + 1; i < temperatures.length; i++) {
      if (temperatures[i] > temperatures[j]) {
        temp = temperatures[i];
        temperatures[i] = temperatures[j];
        temperatures[j] = temp;
      }
    }
  }
  print("Average temperature: $avg C");
  print("Temperatures above 30: $above30");
  print("Temperatures sorted(descending):$temperatures");
  for (int i = 0; i < temperatures.length; i++) {
    if (temperatures[i] >= avg) {
      aboveAvg.add(temperatures[i]);
    }
  }
  print("Temperatures above or equal to the average:$aboveAvg");
  print("Highest temperature in the final List:${temperatures.first}");
  print("Lowest temperature in the final List:${temperatures.last}");
}
