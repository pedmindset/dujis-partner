import 'dart:async';

import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:dujis_partner/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/bloc/order_map_bloc.dart';
import '../../../core/bloc/order_map_state.dart';
import '../../../core/theme/theme.dart';
import '../../../core/utils/utils.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderMapBloc>(
      create: (context) => OrderMapBloc()..loadMap(),
      child: const TrackOrder(),
    );
  }
}

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  bool chatOpen = false;
  final TextEditingController _messageController = TextEditingController();
  final Completer<GoogleMapController> _mapController = Completer();
  GoogleMapController? mapStyleController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    rootBundle.loadString('assets/images/other/map_style.txt').then((string) {
      mapStyle = string;
    });
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(144.0),
          child: CustomAppBar(
            leading: IconButton(
              icon: const Hero(
                tag: 'arrow',
                child: Icon(Icons.keyboard_arrow_down),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Hero(
                tag: 'Delivery Boy',
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ListTile(
                    leading: FadedScaleAnimation(
                      scaleDuration: const Duration(milliseconds: 400),
                      child: const CircleAvatar(
                        radius: 22.0,
                        backgroundImage:
                            AssetImage('assets/images/other/profile.png'),
                      ),
                    ),
                    title: Text(
                      'George Anderson',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    subtitle: Text(
                      AppLocalizations.of(context)!.deliveryPartner!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.fill,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              chatOpen ? Icons.close : Icons.message,
                              color: dujisMainColor,
                              size: 18.0,
                            ),
                            onPressed: () {
                              setState(() {
                                if (chatOpen) {
                                  chatOpen = false;
                                } else {
                                  chatOpen = true;
                                }
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.phone,
                              color: dujisMainColor,
                              size: 18.0,
                            ),
                            onPressed: () {
                              /*.......*/
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
      body: chatOpen
          ? Stack(
              children: [
                Opacity(
                  opacity: 0.08,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: FadedScaleAnimation(
                      scaleDuration: const Duration(milliseconds: 400),
                      child: Image.asset(
                        'assets/images/other/map1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const MessageStream(),
                    Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: EntryField(
                        controller: _messageController,
                        hint: AppLocalizations.of(context)!.enterMessage,
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: dujisMainColor,
                          ),
                          onPressed: () {
                            _messageController.clear();
                          },
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ],
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height,
              child: BlocBuilder<OrderMapBloc, OrderMapState>(
                  builder: (context, state) {
                // print('polyyyy${state.polylines}');
                return GoogleMap(
                  zoomControlsEnabled: false,
                  polylines: state.polylines,
                  mapType: MapType.normal,
                  initialCameraPosition: kGooglePlex,
                  markers: _markers,
                  onMapCreated: (GoogleMapController controller) async {
                    _mapController.complete(controller);
                    mapStyleController = controller;
                    mapStyleController!.setMapStyle(mapStyle);
                    setState(() {
                      _markers.add(
                        Marker(
                          markerId: const MarkerId('mark1'),
                          position: const LatLng(
                              37.42796133580664, -122.085749655962),
                          icon: markerss.first,
                        ),
                      );
                      _markers.add(
                        Marker(
                          markerId: const MarkerId('mark2'),
                          position: const LatLng(
                              37.42496133180663, -122.081743655960),
                          icon: markerss[0],
                        ),
                      );
                      //     _markers.add(
                      //       Marker(
                      //         markerId: MarkerId('mark3'),
                      //         position: LatLng(37.42196183580660, -122.089743655967),
                      //         icon: markerss[0],
                      //       ),
                      //     );
                    });
                  },
                );
              }),
            ),
    );
  }
}

class MessageStream extends StatelessWidget {
  const MessageStream({super.key});

  @override
  Widget build(BuildContext context) {
    List<MessageBubble> messageBubbles = [
      MessageBubble(
        sender: 'user',
        text: AppLocalizations.of(context)!.heyThere,
        time: '11:58 am',
        isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        sender: 'delivery_partner',
        text: AppLocalizations.of(context)!.onMyWay,
        time: '11:59 am',
        isDelivered: false,
        isMe: false,
      ),
    ];
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: messageBubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool? isMe;
  final String? text;
  final String? sender;
  final String? time;
  final bool? isDelivered;

  const MessageBubble(
      {super.key,
      this.sender,
      this.text,
      this.time,
      this.isMe,
      this.isDelivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color: isMe!
                ? dujisMainColor
                : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text!,
                    style: isMe!
                        ? bottomBarTextStyle
                        : Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        time!,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: isMe!
                              ? dujisWhiteColor.withOpacity(0.75)
                              : dujisLightTextColor,
                        ),
                      ),
                      isMe!
                          ? Icon(
                              Icons.check_circle,
                              color: isDelivered!
                                  ? Colors.blue
                                  : dujisDisabledColor,
                              size: 12.0,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
