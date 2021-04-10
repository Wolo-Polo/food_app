import 'package:food_app/model/category.dart';
import 'package:food_app/model/food.dart';

final FAKE_CATEGORY = [
  Category(id: 1, content: "Thức ăn"),
  Category(id: 2, content: "Thức ăn nhanh"),
  Category(id: 3, content: "Trà sữa"),
  Category(id: 4, content: "Đồ uống có cồn"),
];

final FAKE_FOOD = [
  Food(categoryId: 1, name: "Cơm rang", complexity: Complexity.Simple, urlImg: "https://img-global.cpcdn.com/recipes/acc340a79f0aa429/751x532cq70/c%C6%A1m-rang-gion-recipe-main-photo.jpg",
      timeToCompleted: Duration(minutes: 15), component: ["Cơm trắng", "Trứng gà", "Dầu ăn", "Hành lá"]),
  Food(categoryId: 1, name: "Phở bò", complexity: Complexity.Hard, urlImg: "https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/pho-bo-thumbnail.jpg",
      timeToCompleted: Duration(minutes: 20), component: ["Sợi phở", "Xương hầm", "Rau thơm", "Gia vị khác"]),
  Food(categoryId: 2, name: "Khoai tây chiên", complexity: Complexity.Simple, urlImg: "https://cdn.tgdd.vn/2020/07/CookProductThumb/70-620x620-2.jpg",
      timeToCompleted: Duration(minutes: 10), component: ["Khoai tây", "Dầu ăn"]),
  Food(categoryId: 2, name: "Xúc xích", complexity: Complexity.Simple, urlImg: "https://iqfoodvn.com/wp-content/uploads/2019/09/x%C3%BAc-x%C3%ADch-h%C6%B0%C6%A1ng-qu%E1%BA%BF.jpg",
      timeToCompleted: Duration(minutes: 7), component: ["Xúc xích", "Dầu ăn"]),
  Food(categoryId: 3, name: "Trà sữa chân trâu", complexity: Complexity.Medium, urlImg: "https://www.cet.edu.vn/wp-content/uploads/2020/02/sua-tuoi-tran-chau-duong-den.jpg",
      timeToCompleted: Duration(minutes: 8), component: ["Trà sữa", "Chân trâu", "Đường đen"]),
  Food(categoryId: 4, name: "Bia", complexity: Complexity.Simple, urlImg: "https://cdn.tgdd.vn/Files/2018/02/01/1063880/co-nen-uong-bia-voi-dau-phong_800x400.jpg",
      timeToCompleted: Duration(minutes: 2), component: ["Bia", "Đỗ lạc"])
];