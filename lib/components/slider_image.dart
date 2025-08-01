// import "dart:developer";
// import "package:flutter/material.dart";
// import "package:flutter/foundation.dart";


// class SliderImage extends StatefulWidget {
//   const SliderImage({
//     this.url,
//     required this.type,
//     super.key,
//   });
//   final String? url;
//   final String type;

//   @override
//   State<SliderImage> createState() => _SliderImageState();

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     super.debugFillProperties(properties);
//     properties
//       ..add(StringProperty("url", url))
//       ..add(StringProperty("type", type));
//   }
// }

// class _SliderImageState extends State<SliderImage> {
//   @override
//   Widget build(BuildContext context) {
//     if (widget.url != null) {
//       if ((widget.url ?? "").isNotEmpty) {
        
//         return CustomCachedNetworkImage(
//           imageUrl: widget.url ?? "",
//           fit: BoxFit.fill,
//           httpHeaders: const {"Referer": ""},
//           imageBuilder: (context, imageProvider) => Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: imageProvider,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           progressIndicatorBuilder: (context, url, downloadProgress) =>
//               bannerSimmerAds(context),
//           errorWidget: (context, url, error) => const Image(
//             fit: BoxFit.cover,
//             image: AssetImage(
//               "assets/banner_placeholder.png",
//             ),
//           ),
//         );
//         // }
//       } else {
//         return const Image(
//           fit: BoxFit.cover,
//           image: AssetImage(
//             "assets/banner_placeholder.png",
//           ),
//         );
//       }
//     } else {
//       return const Image(
//         fit: BoxFit.cover,
//         image: AssetImage(
//           "assets/banner_placeholder.png",
//         ),
//       );
//     }
//   }
// }
