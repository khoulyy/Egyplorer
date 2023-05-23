import 'activity.dart';

class Cart {
  List<Activity> items = [];

  void addToCart(Activity activity) {
    items.add(activity);
  }

  void removeFromCart(Activity activity) {
    items.remove(activity);
  }
}
