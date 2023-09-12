import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class EditItem extends StatefulWidget {
  const EditItem({super.key});

  @override
  State<EditItem> createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {
  @override
  Widget build(BuildContext context) {
    String? stock = 'Out of stock';
    bool inStock = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        titleSpacing: 0.0,
        actions: [
          Center(
            child: Text(
              stock,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: dujisHintColor,
                  ),
            ),
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
                stock = 'In Stock';
              } else if (inStock == false) {
                stock = 'Out of Stock';
              }
            },
          ),
        ],
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: const Add(),
      ),
    );
  }
}

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.7,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'feature image'.toUpperCase(),
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: dujisHintColor),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 99.0,
                        width: 99.0,
                        child: Image.asset('assets/images/veg/onion.png'),
                      ),
                      const SizedBox(width: 24.0),
                      Icon(
                        Icons.camera_alt,
                        color: dujisMainColor,
                        size: 19.0,
                      ),
                      const SizedBox(width: 14.3),
                      Text(
                        'Upload Photo',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: dujisMainColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'Info',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: dujisHintColor),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: 'Title',
                    hint: 'Enter Title',
                    initialValue: 'Onion',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    textCapitalization: TextCapitalization.words,
                    label: 'Item Category',
                    hint: 'Select Category',
                    initialValue: 'Vegetable',
                  ),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    'Price',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: dujisHintColor,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'Price',
                          hint: 'Enter Price',
                          initialValue: 'GHS 3.00',
                        ),
                      ),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'Quantity',
                          hint: 'Enter Quantity',
                          initialValue: '1 kg',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'Price',
                          hint: 'Enter Price',
                          initialValue: '\$ 2.00',
                        ),
                      ),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'Weight',
                          hint: 'Enter weight',
                          initialValue: '500 g',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Add More',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 10,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            text: 'Edit',
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}
