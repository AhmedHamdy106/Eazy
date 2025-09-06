import 'package:eazy/core/config/app_palette.dart';
import 'package:eazy/nav_bar.dart';
import 'package:flutter/material.dart';
import 'Terms and Conditions.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> faqs = [
      {
        "question": "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر هكذا المثال",
        "answer":
            "نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر. نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر.",
      },
      {
        "question": "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر هكذا المثال",
        "answer":
            "نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر. نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر.",
      },
      {
        "question": "نص السؤال هنا والذي عادة ما يتكون من عدة أسطر هكذا المثال",
        "answer":
            "نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر. نص الجواب الذي يكون هنا عادة ما يتكون من عدة أسطر.",
      },
    ];

    return Scaffold(
      backgroundColor: AppPalette.textLight,
      appBar: AppBar(
        backgroundColor: AppPalette.textLight,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text(
          "الأسئلة الشائعة",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppPalette.textBlackLight,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black87),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return _buildFAQItem(
            faqs[index]["question"]!,
            faqs[index]["answer"]!,
          );
        },
      ),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppPalette.textLight,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppPalette.textBlackLight,
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          collapsedIconColor: AppPalette.textBlack,
          iconColor: AppPalette.textBlack,
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppPalette.primary,
              ),
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  answer,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppPalette.textSubtitleLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
