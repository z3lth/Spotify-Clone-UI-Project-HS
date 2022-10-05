import 'package:flutter/material.dart';
import '../dummydata.dart';

class topgrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // so i can give a fixed horizontal size cutting out renderbox error
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 8), //change later
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: GridView.builder(
              itemCount: 6,
              padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
              // children: DUMMY_CARDS
              //     .map((carData) => SCard(carData.title, carData.color))
              //     .toList(),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                mainAxisExtent: 64,
              ),

              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  child: Card(
                    color: Colors.white12, //for that *opacity*
                    semanticContainer: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          // child: Expanded(
                          //child:
                          // Padding(
                          // padding: const EdgeInsets.all(0),
                          //child:
                          child: SizedBox(
                            child: Image.network(
                              pics[index].image,
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.centerLeft,
                            ),
                            height: 64,
                            width: 64,
                          ),
                          // child: Container(
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //         image: NetworkImage(pics[index].image),
                          //         fit: BoxFit.fill),
                        ),
                        // ),
                        // ), //),
                        // ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Text(
                              "${list[index]}",
                              style: TextStyle(
                                  fontSize: 13.5,
                                  color: Colors.white,
                                  fontFamily: 'CircularStd',
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },

              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 300,
              //   mainAxisExtent: 75,
              //   childAspectRatio: 1 / 1,
              //   crossAxisSpacing: 8,
              //   mainAxisSpacing: 8,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
