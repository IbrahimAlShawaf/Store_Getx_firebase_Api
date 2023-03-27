import 'package:storefinal_app/model/category_model.dart';
import 'package:storefinal_app/model/product_models.dart';
import 'package:http/http.dart' as http;
import 'package:storefinal_app/utils/api_setting.dart';



class CategoryServices {
  static Future<List<String>> getCategory() async {
    var response = await http.get(Uri.parse(ApiSetting.allCategory));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return categoryModelFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}

class AllCategorySercvises {
  static Future<List<ProductModels>> getAllCatehory(String categoryNames) async {
    var response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryNames'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productModelsFromJson(jsonData);
    } else {
      return throw Exception("Failed to load product");
    }
  }
}