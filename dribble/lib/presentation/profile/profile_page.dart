import 'package:dribble/presentation/profile/widgets/card_profile_information_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/discover_list_item_widget.dart';
import 'widgets/title_and_subtitle_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
          child: Column(
        children: [
          CardProfileInformationWidget(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: natureDiscoveryData(),
          ),
        ],
      )),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitleWidget(
            title: "Notable Works",
            subTitle: "Based on the popularity of articles",
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return DiscoverListItemWidget();
              }),
            ),
          )
        ],
      ),
    );
  }
}
