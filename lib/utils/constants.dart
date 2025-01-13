import 'dart:ui';

class Constants {
  // Light Theme
  static Color primaryLight = const Color(0xFF3283D5);
  static Color scaffoldBackgroundColorLight = const Color(0xFFFFFFFF);
  static Color textColorActiveLight = const Color(0xFF212121);
  static Color textColorInactiveLight = const Color(0xFF606260);
  static Color cardLight = const Color(0xFFF4F4F4);
  static Color errorLight = const Color(0xFFE55D59);

  // Dark Theme
  static Color primaryDark = const Color(0xFF3283D5);
  static Color scaffoldBackgroundColorDark = const Color(0xFF1A1A1A);
  static Color textColorActiveDark = const Color(0xFFFFFFFF);
  static Color textColorInactiveDark = const Color(0xFF9A9A9A);
  static Color cardDark = const Color(0xFF212121);
  static Color errorDark = const Color(0xFFE55D59);

  static Map<String, Map<String, List<String>>> mess_menu = {
    "Monday": {
      "Breakfast": [
        "Aloo onion paratha",
        "Chutney",
        "Curd",
        "Fruits / Eggs",
        "Daliya",
        "Milk(200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong+Lemon)"
      ],
      "Lunch": [
        "Arher Dal",
        "Veg Kofta",
        "",
        "Roti",
        "Rice",
        "",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Macroni / Pasta",
        "Coffee"
      ],
      "Dinner": [
        "Aloo Palak",
        "Dal Fry",
        "Motichur Laddu",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Tuesday": {
      "Breakfast": [
        "Puri",
        "Chana Masala",
        "Halwa",
        "",
        "Cornflakes",
        "Milk(200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "Moong Dal",
        "Cabbage-Matar",
        "Rice",
        "Roti",
        "",
        "Bundi Raita",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Pav Bhaji",
        "Tea"
      ],
      "Dinner": [
        "Mix Veg (gajar+paneer or Mushroom+bean +gobi+matar)",
        "Dal Tadka",
        "Besan Burfi",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Wednesday": {
      "Breakfast": [
        "Mix Paratha",
        "Dhaniya Chutney",
        "Curd",
        "",
        "Daliya",
        "Milk (200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "Kadhi Pakora",
        "Kaddu Khatta",
        "Masala Papad / Fryums",
        "Roti",
        "Jeera Rice",
        "",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Veg Sandwich",
        "Tea"
      ],
      "Dinner": [
        "Kadahi Paneer / ChickenCurry",
        "Red Massor Dal",
        "Fruit Custard",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Thursday": {
      "Breakfast": [
        "Poha",
        "Green Chutney",
        "",
        "Fruits / 2 Omlette",
        "Daliya",
        "Milk (200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "White Chole",
        "Aloo Began Bhartha",
        "Poori",
        "Bundi Raita",
        "Rice",
        "",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Fried Idli",
        "Tea"
      ],
      "Dinner": [
        "Aloo Gobhi",
        "Dal Makhni",
        "Besan Halwa",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Friday": {
      "Breakfast": [
        "Idli",
        "Sambhar & chutney",
        "",
        "2 Banana / 2 Eggs",
        "Cornflakes",
        "Milk(200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "Rajma",
        "Aloo Tamatar Sabzi",
        "Jeera Rice",
        "Roti",
        "",
        "Curd",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Chana peanut Chat",
        "Tea"
      ],
      "Dinner": [
        "Paneer butter masala / Egg Curry",
        "Mix Dal",
        "Gulab Jamun",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Saturday": {
      "Breakfast": [
        "Methi / Palak paratha",
        "Aloo Tamatar Sabji",
        "",
        "Fruits / 2 Eggs",
        "Cornflakes",
        "Milk (200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "Paneer Bhurji, Egg Bhurji",
        "Chana Dal",
        "",
        "Roti",
        "Rice",
        "",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Samosa+Imli Chat",
        "Tea"
      ],
      "Dinner": [
        "Sarso ka Saag",
        "Dal Fry",
        "Kheer",
        "Roti",
        "Rice",
        "Pickle",
        "Green Salad",
        "Lemon"
      ]
    },
    "Sunday": {
      "Breakfast": [
        "Masala Onion Dosa",
        "Sambar",
        "Coconut Chutney",
        "",
        "Daliya",
        "Milk (200 ml)",
        "Bread (4 slices)",
        "Butter",
        "Jam",
        "Bournvita",
        "Coffee Powder / Tea bags",
        "Sprouts(Black Chana+ Moong)"
      ],
      "Lunch": [
        "Bhature",
        "Chole",
        "Green Chutney",
        "Fried Masala Chilli",
        "Khichdi",
        "Butter Milk",
        "Green Salad",
        "Lemon + Pickle"
      ],
      "Snacks": [
        "Bhel Poori or Bread Pakoda",
        "Coffee"
      ],
      "Dinner": [
        "Paneer Biryani / Chicken Biryani",
        "Aloo soyabean",
        "Raita",
        "Ice Cream",
        "Roti",
        "",
        "Green Salad",
        "Lemon + Pickle"
      ]
    }
  };
}
