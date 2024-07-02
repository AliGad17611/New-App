import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
              image: NetworkImage(
                  'https://media.gemini.media/img/yallakora/Wide//2024/6/22/turkiye-v-portugal-group-f-uefa-euro-2024-1-2024_6_22_20_22.jpg')),
        ),
        const Text(
          "رونالدو أمام مبابي.. موعد قمة ربع نهائي يورو 2024 بين البرتغال وفرنسا",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const Text(
          "حسم منتخب البرتغال تأهله إلى الدور ربع النهائي بعدما انتصر على سلوفينيا بركلات الترجيح بنتيجة 3-0، خلال اللقاء الذي أقيم ضمن مباريات ثمن نهائي بطولة أمم أوروبا 2024.",
          style: TextStyle(fontSize: 18, color: Colors.grey),
          textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
