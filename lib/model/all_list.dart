
import 'package:new_rothem/model/product.dart';
import 'package:new_rothem/view/Home_Screen.dart';
import 'package:new_rothem/view/choise_item/all_product.dart';
import 'package:new_rothem/view/choise_item/granite.dart';
import 'package:new_rothem/view/choise_item/marble.dart';

List<Product> AllProductt =[
  Product(id: 0, name: "امبرادور", category: "", image: "image/image_product/إمبرادور.jpg", description: "", price:100, quantity: 5),
  Product(id: 1, name: "ابيض تابيري", category: "", image: "image/image_product/ابيض تابيري.jpg", description: "", price:100, quantity: 5),
  Product(id: 2, name: "برشيا داينو", category: "", image: "image/image_product/برشيا داينو.jpg", description: "", price:100, quantity: 5),
  Product(id: 3, name: "برشيا داينو1", category: "", image: "image/image_product/برشيا داينو 1.jpg", description: "", price:100, quantity: 5),
  Product(id: 4, name: "تريستا", category: "", image: "image/image_product/تريستا.jpg", description: "", price:100, quantity: 5),
  Product(id: 5, name: "جراي ودعه", category: "", image: "image/image_product/جراي ودعه.JPG", description: "", price:100, quantity: 5),
  Product(id: 6, name: "سحابه صيني", category: "", image: "image/image_product/سحابه صني.jpg", description: "", price:100, quantity: 5),
  Product(id: 7, name: "سرابجندا باركيه", category: "", image: "image/image_product/سرابجندا باركيه.jpg", description: "", price:100, quantity: 5),
  Product(id: 8, name: "سرابجندا ", category: "", image: "image/image_product/سربجندا.jpg", description: "", price:100, quantity: 5),
  Product(id: 9, name: "فلتو سلسلة", category: "", image: "image/image_product/فلتو سلسله.jpg", description: "", price:100, quantity: 5),
  Product(id: 10, name: "فلتو مشبح", category: "", image: "image/image_product/فلتو مشبح.jpg", description: "", price:100, quantity: 5),
  Product(id: 11, name: "فيروز", category: "", image: "image/image_product/فيروز.jpg", description: "", price:100, quantity: 5),
  Product(id: 12, name: "مللي جراي", category: "", image: "image/image_product/مللي جراي.jpg", description: "", price:100, quantity: 5),
  Product(id: 13, name: "مللي جراي براشد", category: "", image: "image/image_product/مللي جراي براشد.jpg", description: "", price:100, quantity: 5),
  Product(id: 14, name: "نيو جولد", category: "", image: "image/image_product/نيو جولد.jpg", description: "", price:100, quantity: 5),


];

List Item_List=[
  All_Product(),
  const Marble(),
  const Granite(),
];

List Nav_bar=[
  const Home_Screen(),

];