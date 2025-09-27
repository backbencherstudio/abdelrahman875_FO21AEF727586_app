import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart' hide Velocity;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/route_name.dart';
import '../../widgets/common_btn.dart';
import '../widgets/velocity.dart';


class Command5 extends StatefulWidget {
  const Command5({super.key});

  @override
  State<Command5> createState() => _Command5State();
}

class _Command5State extends State<Command5> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24.h),
            Text(
              "Fixez votre prix",
              style: style.headlineSmall,
            ),
            SizedBox(height: 80,),
            velocity(), // Use the imported velocity widget
            SizedBox(height: 50.h),
            Text(
              "Le tarif indiqué correspond au minimum \n "
                  "calculé selon la distance. Vous pouvez \n "
                  "l’augmenter afin de trouver un \n "
                  "transporteur plus rapidement.",
              style: style.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 220.h),

            CommonBtn(
              title: 'Valider le Prix',
              onPressed: () {
                context.push(RouteName.votreCommand);
              },
            ),

          ],
        ),
      ),
    );
  }
}