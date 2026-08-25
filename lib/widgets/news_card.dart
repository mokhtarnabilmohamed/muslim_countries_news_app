import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        spacing: 4,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.network(
              fit: BoxFit.fill,
              width: double.infinity,
              height: 200,
              "https://www.ajnet.me/wp-content/uploads/2026/07/ap_6a5effcab08ca-1784610762.jpg?resize=770%2C513&quality=80",
            ),
          ),

          Text(
            "بصمت وبوتيرة متسارعة.. الاحتلال يشيّد ساترا ترابيا ضخما داخل غزة",
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight(600),
            ),
          ),
          Text(
            "تكشف صور أقمار صناعية عن تسارع أعمال إنشاء ساتر ترابي إسرائيلي داخل قطاع غزة يمتد لأكثر من 23 كيلومترا، بالتوازي مع إقامة منطقة أمنية على طول ما يُعرف بالخط الأصفر",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight(500),
            ),
          ),
        ],
      ),
    );
  }
}
