import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uhl_link/config/routes/routes_consts.dart';
import 'package:uhl_link/features/home/presentation/widgets/card.dart';

class Explore extends StatefulWidget {
  final bool isGuest;

  const Explore({super.key, required this.isGuest});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Map<String, dynamic>> items = [
    {
      "text": "Mess Menu",
      "icon": Icons.restaurant_menu_rounded,
      "route": UhlLinkRoutesNames.messMenuPage
    },
    {
      "text": "Campus Map",
      "icon": Icons.map_outlined,
      "route": UhlLinkRoutesNames.campusMapPage
    },
    {
      "text": "Quick Links",
      "icon": Icons.link_rounded,
      "route": UhlLinkRoutesNames.quickLinksPage
    },
    {
      "text": "Lost/Found",
      "icon": Icons.luggage_rounded,
      "route": UhlLinkRoutesNames.lostFoundPage
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < items.length; i++)
            CardWidget(
              text: items[i]['text'],
              icon: items[i]['icon'],
              onTap: () {
                GoRouter.of(context).pushNamed(items[i]['route']);
              },
            ),
        ],
      ),
    );
  }
}
