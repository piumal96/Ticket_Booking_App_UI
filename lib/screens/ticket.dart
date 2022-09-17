import 'package:flutter/material.dart';
import 'package:ticketbooki/screens/app_layout.dart';
import 'package:ticketbooki/utils/app_styles.dart';
import 'package:ticketbooki/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: TextStyle(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: SizedBox(
                        child: LayoutBuilder(

                          builder: (BuildContext , BoxConstraints ) {
                            print("the Width is ");
                           return  Flex(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                direction: Axis.horizontal,children: List.generate(5, (index) => Text("-")));
                          },

                        ),
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("London", style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
