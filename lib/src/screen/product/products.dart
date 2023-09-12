import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

// import '../../widgets/widgets.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<DropdownMenuItem<int>> listDrop = [];
  int? selected;

  void loadData() {
    listDrop = [];
    listDrop.add(const DropdownMenuItem(
      value: 1,
      child: Text('0.25 kg'),
    ));
    listDrop.add(const DropdownMenuItem(
      value: 2,
      child: Text('0.5 kg'),
    ));
    listDrop.add(const DropdownMenuItem(
      value: 3,
      child: Text('1 kg'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    String? stock = 'Out Stock';
    bool inStock = false;
    // final List<Tab> tabs = [
    //   const Tab(text: 'Vegetables'),
    //   const Tab(text: 'Fruits'),
    //   const Tab(text: 'Herbs'),
    //   const Tab(text: 'Dairy'),
    // ];
    loadData();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
            title: Text(
          'Products',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
        )
            // actions: [
            //   IconButton(
            //       icon: const Icon(Icons.search),
            //       onPressed: () {
            //         // CustomSearchBar(hint: 'Search item');
            //       }),
            // ],
            // bottom: TabBar(
            //   tabs: tabs,
            //   isScrollable: true,
            //   labelColor: dujisMainColor,
            //   unselectedLabelColor: kLightTextColor,
            //   indicatorPadding: const EdgeInsets.symmetric(horizontal: 24.0),
            // ),
            ),
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.3,
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PageRoutes.editItem),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/veg/onion.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.onion!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500)),
                      Text('₵ 3.00\n',
                          style: Theme.of(context).textTheme.bodySmall),
                      Row(
                        children: [
                          Container(
                            height: 30.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.7,
                                  ),
                                  iconEnabledColor: Colors.green,
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    '1 kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  stock,
                                  style: TextStyle(
                                      color: dujisHintColor,
                                      fontSize: 13.3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  activeColor: dujisMainColor,
                                  activeTrackColor: dujisMainColor,
                                  value: inStock,
                                  onChanged: (value) {
                                    setState(() {
                                      inStock = value;
                                    });
                                    if (inStock == true) {
                                      stock =
                                          AppLocalizations.of(context)!.stock;
                                    } else if (inStock == false) {
                                      stock = AppLocalizations.of(context)!
                                          .outStock;
                                    }
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PageRoutes.editItem),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/veg/tomato.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.tomato!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500)),
                      Text('₵ 4.50\n',
                          style: Theme.of(context).textTheme.bodySmall),
                      Row(
                        children: [
                          Container(
                            height: 30.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.7,
                                  ),
                                  iconEnabledColor: Colors.green,
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    '1 kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  '$stock',
                                  style: TextStyle(
                                      color: dujisHintColor,
                                      fontSize: 13.3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  activeColor: dujisMainColor,
                                  activeTrackColor: dujisMainColor,
                                  value: inStock,
                                  onChanged: (value) {
                                    setState(() {
                                      inStock = value;
                                    });
                                    if (inStock == true) {
                                      stock =
                                          AppLocalizations.of(context)!.stock;
                                    } else if (inStock == false) {
                                      stock = AppLocalizations.of(context)!
                                          .outStock;
                                    }
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PageRoutes.editItem),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/veg/lady_finger.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.fingers!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500)),
                      Text('₵ 6.00\n',
                          style: Theme.of(context).textTheme.bodySmall),
                      Row(
                        children: [
                          Container(
                            height: 30.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.7,
                                  ),
                                  iconEnabledColor: Colors.green,
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    '1 kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  '$stock',
                                  style: TextStyle(
                                      color: dujisHintColor,
                                      fontSize: 13.3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  activeColor: dujisMainColor,
                                  activeTrackColor: dujisMainColor,
                                  value: inStock,
                                  onChanged: (value) {
                                    setState(() {
                                      inStock = value;
                                    });
                                    if (inStock == true) {
                                      stock =
                                          AppLocalizations.of(context)!.stock;
                                    } else if (inStock == false) {
                                      stock = AppLocalizations.of(context)!
                                          .outStock;
                                    }
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PageRoutes.editItem),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/veg/onion.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.onion!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500)),
                      Text('₵ 3.00\n',
                          style: Theme.of(context).textTheme.bodySmall),
                      Row(
                        children: [
                          Container(
                            height: 30.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.7,
                                  ),
                                  iconEnabledColor: Colors.green,
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    '1 kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  '$stock',
                                  style: TextStyle(
                                      color: dujisHintColor,
                                      fontSize: 13.3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  activeColor: dujisMainColor,
                                  activeTrackColor: dujisMainColor,
                                  value: inStock,
                                  onChanged: (value) {
                                    setState(() {
                                      inStock = value;
                                    });
                                    if (inStock == true) {
                                      stock =
                                          AppLocalizations.of(context)!.stock;
                                    } else if (inStock == false) {
                                      stock = AppLocalizations.of(context)!
                                          .outStock;
                                    }
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PageRoutes.editItem),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/veg/tomato.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(AppLocalizations.of(context)!.tomato!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  fontSize: 15.0, fontWeight: FontWeight.w500)),
                      Text('₵ 4.50\n',
                          style: Theme.of(context).textTheme.bodySmall),
                      Row(
                        children: [
                          Container(
                            height: 30.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 16.7,
                                  ),
                                  iconEnabledColor: Colors.green,
                                  value: selected,
                                  items: listDrop,
                                  hint: Text(
                                    '1 kg',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  onChanged: (dynamic value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  }),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  '$stock',
                                  style: TextStyle(
                                      color: dujisHintColor,
                                      fontSize: 13.3,
                                      fontWeight: FontWeight.bold),
                                ),
                                Switch(
                                  activeColor: dujisMainColor,
                                  activeTrackColor: dujisMainColor,
                                  value: inStock,
                                  onChanged: (value) {
                                    setState(() {
                                      inStock = value;
                                    });
                                    if (inStock == true) {
                                      stock =
                                          AppLocalizations.of(context)!.stock;
                                    } else if (inStock == false) {
                                      stock = AppLocalizations.of(context)!
                                          .outStock;
                                    }
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: dujisMainColor,
        onPressed: () => Navigator.pushNamed(context, PageRoutes.addItem),
        tooltip: 'Add',
        child: FadedScaleAnimation(
          fadeDuration: const Duration(milliseconds: 600),
          child: const Icon(
            Icons.add,
            size: 26,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
