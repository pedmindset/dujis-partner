import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    String? stock = 'Out of stock';
    bool inStock = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add', style: Theme.of(context).textTheme.bodyLarge),
        titleSpacing: 0.0,
        actions: [
          Center(
            child: Text(
              stock,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: dujisHintColor),
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
                stock = 'Available stock';
              } else if (inStock == false) {
                stock = 'Out of stock';
              }
            },
          )
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
                      'Featured Image',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: dujisHintColor),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 99.0,
                        width: 99.0,
                        color: Theme.of(context).cardColor,
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
                    hint: 'Enter title',
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
                    label: 'Category',
                    hint: 'Selet Category',
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
                        color: dujisHintColor),
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
                          hint: 'Enter price',
                        ),
                      ),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: 'Quantity',
                          hint: 'Enter quantity',
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
            text: 'Add',
            onTap: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
