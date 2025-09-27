import 'package:abdelrahman875_fo21aef727586/core/theme/src/theme_extension/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class velocity extends StatefulWidget {
  const velocity({super.key});

  @override
  State<velocity> createState() => _velocityState();
}

class _velocityState extends State<velocity> {
  final TextEditingController _controller = TextEditingController(text: "67");

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style =Theme.of(context).textTheme;
    return Container(
      width: 327.w,
      height: 78.h,
      padding: const EdgeInsets.all(10),
      color: AppColor.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.remove, color: AppColor.secondaryColor),
            onPressed: () {
              int currentValue = int.tryParse(_controller.text) ?? 67;
              if (currentValue > 0) {
                setState(() {
                  _controller.text = (currentValue - 1).toString();
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Button background
              shape: const CircleBorder(), // Circular shape
              padding: const EdgeInsets.all(10),
              side: BorderSide(
                color: AppColor.secondaryColor,
                width: 2,
              ), // Border
            ),
          ),
          // SizedBox(height: 10),
          Text(
            "67",
            style: style.headlineLarge?.copyWith(color: AppColor.textColor3)
          ),
          // SizedBox(
          //   width: 80.w,
          //   child: TextField(
          //     controller: _controller,
          //     textAlign: TextAlign.center,
          //
          //     keyboardType: TextInputType.number,
          //   ),
          // ),
          // SizedBox(height: 10),
          IconButton(
            icon: const Icon(Icons.add, color: AppColor.secondaryColor),
            onPressed: () {
              int currentValue = int.tryParse(_controller.text) ?? 67;
              setState(() {
                _controller.text = (currentValue + 1).toString();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Button background
              shape: const CircleBorder(), // Circular shape
              padding: const EdgeInsets.all(10),
              side: BorderSide(
                color: AppColor.secondaryColor,
                width: 2,
              ), // Border
            ),
          ),
        ],
      ),
    );
  }
}
