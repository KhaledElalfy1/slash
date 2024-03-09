import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:slash/core/widgets/custom_network_image.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Slash.",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.builder(
        // itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: .6, mainAxisSpacing: 10.h),
        itemBuilder: (context, index) => const CustomProductCard(),
      ),
    );
  }
}

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        children: [
         const CustomNetworkImage(imageUrl:'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/categories%2Fcanvas.png?alt=media&token=348aae1e-d4df-43f5-9d48-c50dbf5abb26',
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const Expanded(
                  child:  Text(
                      'Brand NAme and just to show it fd fdff fdfd frgr tg gf  fferfrfr grgr ed r grgrg  ')),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.green,
                  child:CustomNetworkImage(imageUrl:'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/categories%2Fcanvas.png?alt=media&token=348aae1e-d4df-43f5-9d48-c50dbf5abb26',
                  )
                  //  Image.network(
                  //   'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/categories%2Fcanvas.png?alt=media&token=348aae1e-d4df-43f5-9d48-c50dbf5abb26',
                  // ),
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Text('EGP 365 '),
              const Spacer(),
              const Icon(Icons.favorite_border_outlined),
              Gap(10.w),
              const Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              )
            ],
          ),
          Gap(20.h),
        ],
      ),
    );
  }
}
