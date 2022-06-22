import 'package:cv_sefa_akiska/widgets/sections/education_section_widget.dart';
import 'package:cv_sefa_akiska/widgets/sections/languages_section_widget.dart';
import 'package:cv_sefa_akiska/widgets/sections/skills_section_widget.dart';
import 'package:cv_sefa_akiska/widgets/sections/work_experience_section_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/base_info_app_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV - Sefa Akiska',
      theme: ThemeData(
        fontFamily: 'Times New Roman',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(67, 70, 76, 1),
        ),
        colorScheme: const ColorScheme.dark(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          BaseInfoAppBarWidget(),
          EducationSectionWidget(),
          WorkExperienceSectionWidget(),
          SkillsSectionWidget(),
          LanguagesSectionWidget()
        ],
      ),
    );
  }
}
