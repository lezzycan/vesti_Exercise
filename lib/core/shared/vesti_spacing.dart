import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:interview_exercise/core/common/vesti_dimensions.dart';




class VestiSpacing extends StatelessWidget {
   VestiSpacing.empty({super.key})
      : width = VestiDimensions.zero.w,
        height = VestiDimensions.zero.h;

   VestiSpacing.xxxLargeWidth({Key? key})
      : this.width(VestiDimensions.xxxLarge.w, key: key);

   VestiSpacing.xxLargeWidth({Key? key})
      : this.width(VestiDimensions.xxLarge.w, key: key);

   VestiSpacing.xLargeWidth({Key? key})
      : this.width(VestiDimensions.xLarge.w, key: key);

   VestiSpacing.largeWidth({Key? key})
      : this.width(VestiDimensions.large.w, key: key);

   VestiSpacing.bigWidth({Key? key})
      : this.width(VestiDimensions.big.w, key: key);

   VestiSpacing.mediumWidth({Key? key})
      : this.width(VestiDimensions.medium.w, key: key);

   VestiSpacing.smallWidth({Key? key})
      : this.width(VestiDimensions.small.w, key: key);

   VestiSpacing.xxxSmallWidth({Key? key})
      : this.width(VestiDimensions.xxxSmall.w, key: key);

   VestiSpacing.xxSmallWidth({Key? key})
      : this.width(VestiDimensions.xxSmall.w, key: key);

   VestiSpacing.xSmallWidth({Key? key})
      : this.width(VestiDimensions.xSmall.w, key: key);

   VestiSpacing.tinyWidth({Key? key})
      : this.width(VestiDimensions.tiny.w, key: key);
   VestiSpacing.xxxLargeHeight({Key? key})
      : this.height(VestiDimensions.xxxLarge.h, key: key);

   VestiSpacing.xxLargeHeight({Key? key})
      : this.height(VestiDimensions.xxLarge.h, key: key);

   VestiSpacing.xLargeHeight({Key? key})
      : this.height(VestiDimensions.xLarge.h, key: key);

   VestiSpacing.largeHeight({Key? key})
      : this.height(VestiDimensions.large.h, key: key);

   VestiSpacing.bigHeight({Key? key})
      : this.height(VestiDimensions.big.h, key: key);

   VestiSpacing.mediumHeight({Key? key})
      : this.height(VestiDimensions.medium.h, key: key);

   VestiSpacing.smallHeight({Key? key})
      : this.height(VestiDimensions.small.h, key: key);

   VestiSpacing.xSmallHeight({Key? key})
      : this.height(VestiDimensions.xSmall.h, key: key);

   VestiSpacing.xxSmallHeight({Key? key})
      : this.height(VestiDimensions.xxSmall.h, key: key);

   VestiSpacing.xxxSmallHeight({Key? key})
      : this.height(VestiDimensions.xxxSmall.h, key: key);

   VestiSpacing.tinyHeight({Key? key})
      : this.height(VestiDimensions.tiny.h, key: key);

   VestiSpacing.width(this.width, {super.key}) : height = VestiDimensions.zero.w;

   VestiSpacing.height(this.height, {super.key})
      : width = VestiDimensions.zero.h;

  /// The width of the spacing.
  final double height;

  /// The height of the spacing.
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(key: super.key, height: height, width: width);
  }


}