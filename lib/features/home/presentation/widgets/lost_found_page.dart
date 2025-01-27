import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uhl_link/config/routes/routes_consts.dart';

class LostFoundPage extends StatefulWidget {
  const LostFoundPage({super.key});

  @override
  State<LostFoundPage> createState() => _LostFoundPageState();
}

class _LostFoundPageState extends State<LostFoundPage> {
  final List<Map<String, String>> items = [
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    },
    {
      "name": "Shubh Sahu",
      "contact": "6265302620",
      "description":
          "This bottle has been misplaced and is currently unaccounted for. If found, please return.",
      "image":
          "https://th.bing.com/th/id/OIP.sLySnCRmeLoYlK_Nf910tAHaHa?rs=1&pid=ImgDetMain",
      // Replace with your image URL
      "date": "24 Jan 2025",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        title: Text("Lost and Found",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView.separated(
            physics: const ClampingScrollPhysics(),
            primary: false,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      color: Theme.of(context).cardColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.02,
                          horizontal: MediaQuery.of(context).size.height * 0.02,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              items[index]["image"]!,
                              height: MediaQuery.of(context).size.height * 0.25,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : ${items[index]["name"]}",
                                    textAlign: TextAlign.start,
                                    softWrap: true,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Text("Contact : ${items[index]["contact"]}",
                                    textAlign: TextAlign.start,
                                    softWrap: true,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Text("Date : ${items[index]["date"]}",
                                    textAlign: TextAlign.start,
                                    softWrap: true,
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Text(
                                  "Description : ${items[index]["description"]}",
                                  textAlign: TextAlign.start,
                                  softWrap: true,
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 20,
              );
            },
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        child: FloatingActionButton.extended(
          onPressed: () {
            GoRouter.of(context)
                .pushNamed(UhlLinkRoutesNames.lostFoundAddItemPage);
          },
          label: Text('Add Item',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 16)),
          icon: Icon(Icons.add_box_rounded,
              color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
    );
  }
}
