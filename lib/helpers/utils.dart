import 'package:apptienda/helpers/appcolors.dart';
import 'package:apptienda/helpers/iconhelper.dart';
import 'package:apptienda/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          name: "Carniceria",
          icon: IconFontHelper.MEATS,
          color: AppColors.MEATS,
          imgName: "carniceria",
          subCategories: []),
      Category(
          name: "Drogueria",
          icon: IconFontHelper.DRUGSTORE,
          color: AppColors.DRUGSTORE,
          imgName: "drogueria",
          subCategories: []),
      Category(
          name: "Miscelanea",
          icon: IconFontHelper.SMISCELLANY,
          color: AppColors.SMISCELLANY,
          imgName: "miscelanea",
          subCategories: []),
      Category(
          name: "Panaderia",
          icon: IconFontHelper.BAKERY,
          color: AppColors.BAKERY,
          imgName: "panaderia",
          subCategories: []),
    ];
  }
}
