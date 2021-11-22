import 'package:apptienda/helpers/appcolors.dart';
import 'package:apptienda/helpers/iconhelper.dart';
import 'package:apptienda/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          name: "carniceria",
          icon: IconFontHelper.MEATS,
          color: AppColors.MEATS,
          imgName: "carniceria",
          subCategories: []),
      Category(
          name: "drogueria",
          icon: IconFontHelper.DRUGSTORE,
          color: AppColors.DRUGSTORE,
          imgName: "drogueria",
          subCategories: []),
      Category(
          name: "miscelanea",
          icon: IconFontHelper.SMISCELLANY,
          color: AppColors.SMISCELLANY,
          imgName: "miscelanea",
          subCategories: []),
      Category(
          name: "panaderia",
          icon: IconFontHelper.BAKERY,
          color: AppColors.BAKERY,
          imgName: "panaderia",
          subCategories: []),
    ];
  }
}
