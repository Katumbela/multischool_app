import 'package:flutter/material.dart';
import 'package:multischool_app/pages/cardds_home_screens/social_media_pages/carreers.dart';
import 'package:multischool_app/pages/cardds_home_screens/social_media_pages/news.dart';
import 'package:multischool_app/pages/cardds_home_screens/social_media_pages/updates.dart';
import 'package:multischool_app/theme/colors.dart';
import 'package:multischool_app/theme/imageExporter.dart';

class HomeSocialMedia extends StatefulWidget {
  const HomeSocialMedia({super.key});

  @override
  State<HomeSocialMedia> createState() => _HomeSocialMediaState();
}

class _HomeSocialMediaState extends State<HomeSocialMedia> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 150.0,
                    floating: false,
                    excludeHeaderSemantics: true,
                    pinned: true,
                    backgroundColor: Colors.black,
                    iconTheme: IconThemeData(
                      color: Colors
                          .white, // Define a cor do ícone de voltar para branco
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                AppIcons.logo_icon_white,
                                width: 50,
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      background: Container(
                        color: Colors.black,
                      ),
                    ),
                    bottom: const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      labelStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(text: 'Actualizações'),
                        Tab(text: 'Carreiras'),
                        Tab(text: 'Fórum'),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  UpdatesSocialTab(),
                  CarreirasSocialTab(),
                  NoticiasSocialTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
