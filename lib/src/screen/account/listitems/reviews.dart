import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/core/theme/theme.dart';
import 'package:dujis_partner/core/utils/utils.dart';
import 'package:flutter/material.dart';

class Review {
  final String? title;
  final double rating;
  final String date;
  final String? content;

  Review(this.title, this.rating, this.date, this.content);
}

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    var appLocalization = AppLocalizations.of(context)!;
    final List<Review> listOfReviews = [
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
      Review(
          appLocalization.name1, 4.0, '5 April, 20', appLocalization.content1),
      Review(
          appLocalization.name2, 5.0, '23 Feb, 20', appLocalization.content2),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: AppBar(
            leading: const BackButton(color: Colors.black),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(AppLocalizations.of(context)!.store!,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).secondaryHeaderColor)),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: dujisMainColor,
                      size: 10,
                    ),
                    const SizedBox(width: 8.0),
                    Text('4.2',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: dujisMainColor)),
                    const SizedBox(width: 8.0),
                    Text('148 reviews',
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 8.0,
                  color: Theme.of(context).cardColor,
                ),
              ],
            ),
          ),
        ),
      ),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: ListView.builder(
          itemCount: listOfReviews.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listOfReviews[index].title!,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: dujisMainColor,
                          size: 13,
                        ),
                        const SizedBox(width: 8.0),
                        Text(listOfReviews[index].rating.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: dujisMainColor)),
                        const Spacer(),
                        Text(
                          listOfReviews[index].date,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 11.7,
                                  color: const Color(0xffd7d7d7)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    listOfReviews[index].content!,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: const Color(0xff6a6c74)),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
