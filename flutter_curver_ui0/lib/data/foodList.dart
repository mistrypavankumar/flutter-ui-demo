class FoodListModel {
  int id;
  String imageAssetPath;
  String title;
  String amount;

  FoodListModel({
    this.id,
    this.imageAssetPath,
    this.title,
    this.amount,
  });

  static List<FoodListModel> list = [
    FoodListModel(
      id: 1,
      imageAssetPath: "assets/food1.png",
      title: "Salmon Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 2,
      imageAssetPath: "assets/food2.png",
      title: "Spring Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 3,
      imageAssetPath: "assets/food1.png",
      title: "Avacado Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 4,
      imageAssetPath: "assets/food2.png",
      title: "Spring Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 5,
      imageAssetPath: "assets/food1.png",
      title: "Salmon Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 6,
      imageAssetPath: "assets/food2.png",
      title: "Spring Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 7,
      imageAssetPath: "assets/food1.png",
      title: "Avacado Bowl",
      amount: "\$24.00",
    ),
    FoodListModel(
      id: 8,
      imageAssetPath: "assets/food2.png",
      title: "Salmon Bowl",
      amount: "\$24.00",
    ),
  ];
}
