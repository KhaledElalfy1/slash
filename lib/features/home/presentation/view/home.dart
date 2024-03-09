import 'package:flutter/material.dart';
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
            crossAxisCount: 2, childAspectRatio: .7, mainAxisSpacing: 10.h),
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
          Gap(10.h),
          const CustomNetworkImage(
            imageUrl:
                'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658097880IMG_20230202_011736.jpg?alt=media&token=bb42aaf1-ac00-4f95-9864-370ef010ad1e',
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                  child: Text(
                      'Brand NAme and just to show it fd fdff fdfd frgr tg gf  fferfrfr grgr ed r grgrg  ')),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.green,
                    child: CustomNetworkImage(
                      imageUrl:
                          'https://firebasestorage.googleapis.com/v0/b/slash-d7546.appspot.com/o/images%2Fproduct-variants%2F1695658097880IMG_20230202_011736.jpg?alt=media&token=bb42aaf1-ac00-4f95-9864-370ef010ad1e',
                    )),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Text('EGP 365 '),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined),
              ),
              Gap(10.w),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          // Gap(10.h)
        ],
      ),
    );
  }
}
