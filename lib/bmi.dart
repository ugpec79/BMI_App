class BMI {
  late double height;
  late int weight;
  BMI({required this.height, required this.weight});
  void setHeight(double hht) {
    height = hht;
  }

  void setWeight(int wght) {
    weight = wght;
  }

  int getWeight() {
    return weight;
  }

  double getHeight() {
    return height;
  }

  double getBMI() {
    return (weight) / ((height / 100) * (height / 100));
  }
}
