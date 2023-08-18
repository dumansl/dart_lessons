void main(List<String> args) {
  double intAverage = findAverage<int>(1, 3);
  double doubleAverage = findAverage<double>(5, 5.4);
  print("Ortalama $intAverage");
  print("Ortalama $doubleAverage");
}

double findAverage<T extends num>(T n1, T n2) {
  return (n1 + n2) / 2;
}
