import 'package:get/get.dart';
import 'package:kookit/screens/about_us/about_us_screen.dart';
import 'package:kookit/screens/authentication/register/address_screen.dart';
import 'package:kookit/screens/authentication/register/otp_screen.dart';
import 'package:kookit/screens/authentication/register/signup.dart';
import 'package:kookit/screens/contact_us/contact_us_screen.dart';
import 'package:kookit/screens/drawer/devices/devices_screen.dart';
import 'package:kookit/screens/drawer/devices/register_devices_screen.dart';
import 'package:kookit/screens/drawer/devices/update_device.dart';
import 'package:kookit/screens/drawer/recipes/explore_recipes.dart';
import 'package:kookit/screens/drawer/recipes/my_recipes.dart';
import 'package:kookit/screens/drawer/recipes/ratings/rate_recipe.dart';
import 'package:kookit/screens/drawer/recipes/ratings/recipe_reviews.dart';
import 'package:kookit/screens/drawer/recipes/recipe_cooking_screen.dart';
import 'package:kookit/screens/drawer/recipes/recipe_details.dart';
import 'package:kookit/screens/language_screen/language_screen.dart';
import 'package:kookit/screens/home_screen/home_screen.dart';
import 'package:kookit/screens/privacy/privacy_screen.dart';
import 'package:kookit/screens/profile/profile_screen.dart';
import 'package:kookit/screens/refer_friend/refer_friend.dart';
import 'package:kookit/screens/setting/setting_screen.dart';
import 'package:kookit/screens/splash/splash_screen.dart';
import 'package:kookit/screens/welcome/welcome_screen.dart';
import 'package:kookit/utils/routes_strings.dart';

class AppRoutes {
  List<GetPage> allRoutes = [
    GetPage(name: RoutesStrings.splash, page: () => const SplashScreen()),
    GetPage(name: RoutesStrings.home, page: () => const HomeScreen()),
    GetPage(name: RoutesStrings.language, page: () => const LanguageScreen()),
    GetPage(name: RoutesStrings.welcome, page: () => const WelcomeScreen()),
    GetPage(name: RoutesStrings.signup, page: () => const RegistrationScreen()),
    GetPage(name: RoutesStrings.address, page: () => const AddressScreen()),
    GetPage(name: RoutesStrings.otpScreen, page: () => const OtpScreen()),
    GetPage(name: RoutesStrings.devices, page: () => const DevicesScreen()),
    GetPage(
        name: RoutesStrings.registerDevices,
        page: () => const RegisterDevicesScreen()),
    GetPage(name: RoutesStrings.updateDevice, page: () => const UpdateDevice()),
    GetPage(name: RoutesStrings.myRecipes, page: () => const MyRecipes()),
    GetPage(
        name: RoutesStrings.exploreRecipes, page: () => const ExploreRecipes()),
    GetPage(
        name: RoutesStrings.recipeDetails, page: () => const RecipeDetails()),
    GetPage(
        name: RoutesStrings.recipeCookingScreen,
        page: () => const RecipeCookingScreen()),
    GetPage(name: RoutesStrings.rateRecipe, page: () => const RateRecipe()),
    GetPage(
        name: RoutesStrings.recipeReviews, page: () => const RecipeReviews()),
    GetPage(name: RoutesStrings.profile, page: () => const ProfileScreen()),
    GetPage(name: RoutesStrings.settings, page: () => const SettingScreen()),
    GetPage(
        name: RoutesStrings.privacyPolicy, page: () => const PrivacyScreen()),
    GetPage(name: RoutesStrings.aboutUs, page: () => const AboutUsScreen()),
    GetPage(name: RoutesStrings.contactUs, page: () => const ContactUsScreen()),
    GetPage(
        name: RoutesStrings.referFriend, page: () => const ReferFriendScreen()),
  ];
}
