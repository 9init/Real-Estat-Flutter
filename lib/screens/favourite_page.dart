import 'package:real_estate_mania_yt/models/car_model.dart';
import 'package:real_estate_mania_yt/resources/font_manager.dart';
import 'package:real_estate_mania_yt/resources/style_manager.dart';
import 'package:real_estate_mania_yt/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_mania_yt/widgets/components.dart';

import '../resources/color_manager.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
Color  dark =ColorManager.DarkMode;

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark ,
      appBar: AppBar(
        title: Text(
          'Favourites',
          style: getAppBarStyle(),
        ),
      ),
      body: favourites.isNotEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space(),
                Text(
                  '      Showing Results (${favourites.length})',
                  style: getMediumStyle(
                      color: ColorManager.primary, fontSize: FontSize.f18),
                ),
                Space(),
                ListView.separated(
                    padding: const EdgeInsets.only(
                        left: AppPadding.screenPadding,
                        right: AppPadding.screenPadding,
                        bottom: AppPadding.screenPadding),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 140,
                        child: Card(
                          child: InkWell(
                            onTap: () async {
                              // await Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => CarDetailsScreen(
                              //         carDetails: favourites[index]),
                              //   ),
                              // );

                              setState(() {
                                print('object');
                              });
                            },
                            borderRadius:
                                BorderRadius.circular(AppSize.borderRadius),
                            splashColor: ColorManager.primaryLight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.all(AppPadding.cardPadding),
                              child: Row(
                                children: [
                                  Image.asset(
                                    favourites[index].coverPhoto,
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.fill,
                                  ),
                                  Space(),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          favourites[index].company,
                                          style: getMediumStyle(
                                              color: ColorManager.primary),
                                        ),
                                        Text(
                                          favourites[index].model,
                                          style: getRegularStyle(
                                              color:
                                                  ColorManager.textColorLight),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Spacer(),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '${favourites[index].priceForDay} EGP/Day',
                                              style: getRegularStyle(
                                                  color: ColorManager.primary),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    favourites[index]
                                                            .favourite =
                                                        !favourites[index]
                                                            .favourite;
                                                    if (favourites[index]
                                                        .favourite) {
                                                      favourites.add(
                                                          favourites[index]);
                                                    } else {
                                                      favourites.remove(
                                                          favourites[index]);
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  favourites[index].favourite
                                                      ? Icons.favorite
                                                      : Icons
                                                          .favorite_border_outlined,
                                                  color: ColorManager.primary,
                                                ),
                                                constraints:
                                                    const BoxConstraints(
                                                  maxHeight: 30,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => Space(height: 5),
                    itemCount: favourites.length),
              ],
            )
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.screenPadding),
                child: Text(
                  'There are no favorites yet!,\n Bring some cars now.',
                  style: getSemiBoldStyle(
                      color: ColorManager.primary, fontSize: FontSize.f20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
    );
  }
}
