import '../models/category_model.dart';

class CategoryViewModel {
  final List<Category> categories = [
    Category(title: "Accounting", imagePath: "assets/accounting.png", courseCount: 20),
    Category(title: "Biology", imagePath: "assets/biology.png", courseCount: 15),
    Category(title: "Photography", imagePath: "assets/photography.png", courseCount: 25),
    Category(title: "Marketing", imagePath: "assets/marketing.png", courseCount: 18),
    Category(title: "Security", imagePath: "assets/security.png", courseCount: 11),
    Category(title: "Science", imagePath: "assets/science.png", courseCount: 13),
  ];
}
