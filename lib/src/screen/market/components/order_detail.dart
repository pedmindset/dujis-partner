import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/routes/routes.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

// import '../../../widgets/widgets.dart';

class OrderTileDetail extends StatefulWidget {
  const OrderTileDetail({super.key});

  @override
  State<OrderTileDetail> createState() => _OrderTileDetailState();
}

class _OrderTileDetailState extends State<OrderTileDetail> {
  int _selectedIndex = 0;

  List actions = [
    {
      'id': 1,
      'action': 'Pending',
    },
    {
      'id': 2,
      'action': 'Processing',
    },
    {
      'id': 3,
      'action': 'Completed',
    },
    {
      'id': 4,
      'action': 'Cancel',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          leading: const BackButton(color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Ref: #1107856',
                style: TextStyle(color: Colors.black87),
              ),
              Text(
                'Onions',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              // tileColor: Colors.red,
              leading: FadedScaleAnimation(
                scaleDuration: const Duration(milliseconds: 400),
                child: Image.asset(
                  'assets/images/other/user.png',
                  scale: 2.5,
                  height: 42.3,
                  width: 33.7,
                ),
              ),
              title: Text(
                'Samantha Smith',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 13.3, letterSpacing: 0.07),
              ),
              subtitle: Text(
                'June 20, 11:35 am',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 11.7, letterSpacing: 0.06),
              ),
              trailing: FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.black54,
                        size: 18.0,
                      ),
                      onPressed: () {
                        /*.......*/
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.message,
                        color: dujisMainColor,
                        size: 18.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutes.chatPage);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: dujisMainBackColor.withOpacity(0.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total item count: 20',
                    style: TextStyle(
                      color: dujisMainBackColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Weight: 50kg',
                    style: TextStyle(
                      color: dujisMainBackColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16, 8, 8),
              child: Text(
                'Action',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),
            ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                itemCount: actions.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return FadedScaleAnimation(
                    scaleDuration: const Duration(milliseconds: 400),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        selected: index == _selectedIndex,
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            // emergyCon.text = pretexts[index].content;
                          });
                        },
                        trailing: const Icon(
                          Icons.circle,
                          size: 16,
                        ),
                        tileColor: Colors.grey[200],
                        selectedTileColor: dujisMainColor,
                        selectedColor: dujisWhiteColor,
                        title: Text(actions[index]['action'],
                            style: const TextStyle(
                              fontSize: 14,
                            )),
                        style: ListTileStyle.drawer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
