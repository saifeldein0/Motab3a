// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Food and Nutrition`
  String get dietAppBar {
    return Intl.message(
      'Food and Nutrition',
      name: 'dietAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Recommended Foods`
  String get diettitle1 {
    return Intl.message(
      'Recommended Foods',
      name: 'diettitle1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Follow a balanced diet that contains all the essential nutrients for both the mother and the fetus.`
  String get diettext1 {
    return Intl.message(
      '⬤ Follow a balanced diet that contains all the essential nutrients for both the mother and the fetus.',
      name: 'diettext1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Increase your consumption of fruits, vegetables, and whole grains.`
  String get diettext2 {
    return Intl.message(
      '⬤ Increase your consumption of fruits, vegetables, and whole grains.',
      name: 'diettext2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Proteins: It is recommended to obtain them from lean meats (such as chicken, fish, legumes, and others) every day.`
  String get diettext3 {
    return Intl.message(
      '⬤ Proteins: It is recommended to obtain them from lean meats (such as chicken, fish, legumes, and others) every day.',
      name: 'diettext3',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Fats: It is recommended to obtain them from plant sources (such as olive oil) and avoid saturated fats from animal sources (such as butter).`
  String get diettext4 {
    return Intl.message(
      '⬤ Fats: It is recommended to obtain them from plant sources (such as olive oil) and avoid saturated fats from animal sources (such as butter).',
      name: 'diettext4',
      desc: '',
      args: [],
    );
  }

  /// `Avoid These Foods`
  String get diettitle2 {
    return Intl.message(
      'Avoid These Foods',
      name: 'diettitle2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Avoid processed foods like processed meats and fish (sausages, bologna, luncheon meat, mullet, and feseekh).`
  String get diettext5 {
    return Intl.message(
      '⬤ Avoid processed foods like processed meats and fish (sausages, bologna, luncheon meat, mullet, and feseekh).',
      name: 'diettext5',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Limit the consumption of tuna fish to no more than four medium-sized cans (net weight = 140 grams per can) per week.`
  String get diettext6 {
    return Intl.message(
      '⬤ Limit the consumption of tuna fish to no more than four medium-sized cans (net weight = 140 grams per can) per week.',
      name: 'diettext6',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Some types of oily fish may contain pollutants that can accumulate in the body over time and be harmful. Therefore, it is advisable not to exceed two servings per week (such as mackerel, sardines, salmon, and fresh tuna, where canned tuna is not considered oily fish).`
  String get diettext7 {
    return Intl.message(
      '⬤ Some types of oily fish may contain pollutants that can accumulate in the body over time and be harmful. Therefore, it is advisable not to exceed two servings per week (such as mackerel, sardines, salmon, and fresh tuna, where canned tuna is not considered oily fish).',
      name: 'diettext7',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Avoid canned foods, fast food, and restaurant meals because they contain a high percentage of sodium, which extends the shelf life of the food product.`
  String get diettext8 {
    return Intl.message(
      '⬤ Avoid canned foods, fast food, and restaurant meals because they contain a high percentage of sodium, which extends the shelf life of the food product.',
      name: 'diettext8',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Caffeine: It is a substance found naturally in foods (such as tea, coffee, chocolate), some soft drinks, energy drinks, or some pain relievers. It is recommended to limit its consumption during pregnancy, as excessive intake increases the risk of miscarriage and low birth weight.`
  String get diettext9 {
    return Intl.message(
      '⬤ Caffeine: It is a substance found naturally in foods (such as tea, coffee, chocolate), some soft drinks, energy drinks, or some pain relievers. It is recommended to limit its consumption during pregnancy, as excessive intake increases the risk of miscarriage and low birth weight.',
      name: 'diettext9',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Avoid buying products containing monosodium glutamate, symbolized by (E621), or using it in cooking to reduce salt in food, as it causes fluid retention, leading to high blood pressure.`
  String get diettext10 {
    return Intl.message(
      '⬤ Avoid buying products containing monosodium glutamate, symbolized by (E621), or using it in cooking to reduce salt in food, as it causes fluid retention, leading to high blood pressure.',
      name: 'diettext10',
      desc: '',
      args: [],
    );
  }

  /// `Your Surroundings`
  String get environmentAppBar {
    return Intl.message(
      'Your Surroundings',
      name: 'environmentAppBar',
      desc: '',
      args: [],
    );
  }

  /// `It is important to provide a quiet and well-ventilated environment with subdued lighting. Try to make your surroundings as peaceful and comfortable as possible, avoiding bright lights.`
  String get environmenttext {
    return Intl.message(
      'It is important to provide a quiet and well-ventilated environment with subdued lighting. Try to make your surroundings as peaceful and comfortable as possible, avoiding bright lights.',
      name: 'environmenttext',
      desc: '',
      args: [],
    );
  }

  /// `Nearby Hospitals`
  String get hospitalAppBar {
    return Intl.message(
      'Nearby Hospitals',
      name: 'hospitalAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Nearest Hospital`
  String get hospitalbutton {
    return Intl.message(
      'Nearest Hospital',
      name: 'hospitalbutton',
      desc: '',
      args: [],
    );
  }

  /// `Psychological Stress`
  String get stressAppBar {
    return Intl.message(
      'Psychological Stress',
      name: 'stressAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Psychological Stress During Pregnancy`
  String get stressTitle1 {
    return Intl.message(
      'Psychological Stress During Pregnancy',
      name: 'stressTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Psychological stress during pregnancy is a time when women experience a lot of changes, whether in their bodies or emotions. These changes can add psychological pressures such as tension and stress, which can lead to sleep problems, headaches, and loss of appetite. Severe and chronic psychological stress for an extended period can even cause high blood pressure, heart diseases, premature birth, or having a baby with low birth weight (less than 2 kilograms).`
  String get stressText1 {
    return Intl.message(
      'Psychological stress during pregnancy is a time when women experience a lot of changes, whether in their bodies or emotions. These changes can add psychological pressures such as tension and stress, which can lead to sleep problems, headaches, and loss of appetite. Severe and chronic psychological stress for an extended period can even cause high blood pressure, heart diseases, premature birth, or having a baby with low birth weight (less than 2 kilograms).',
      name: 'stressText1',
      desc: '',
      args: [],
    );
  }

  /// `Impact of Psychological Stress on the Fetus`
  String get stressTitle2 {
    return Intl.message(
      'Impact of Psychological Stress on the Fetus',
      name: 'stressTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Psychological stress and tension are normal experiences during pregnancy. When feeling stressed, the body releases cortisol and other stress hormones, which can increase heart rate. While this stress can be temporary, in cases of continuous and chronic stress, it can lead to an inflammatory response that affects the health of both the mother and the fetus. Studies have shown that chronic psychological stress can increase the risk of premature birth and having a baby with lower than normal birth weight, potentially causing subtle differences in brain development and behavioral issues in the child. Stress may also lead to symptoms in the mother, such as headaches, sleep problems, or overeating.`
  String get stressText2 {
    return Intl.message(
      'Psychological stress and tension are normal experiences during pregnancy. When feeling stressed, the body releases cortisol and other stress hormones, which can increase heart rate. While this stress can be temporary, in cases of continuous and chronic stress, it can lead to an inflammatory response that affects the health of both the mother and the fetus. Studies have shown that chronic psychological stress can increase the risk of premature birth and having a baby with lower than normal birth weight, potentially causing subtle differences in brain development and behavioral issues in the child. Stress may also lead to symptoms in the mother, such as headaches, sleep problems, or overeating.',
      name: 'stressText2',
      desc: '',
      args: [],
    );
  }

  /// `Other Problems Caused by Psychological Stress`
  String get stressTitle3 {
    return Intl.message(
      'Other Problems Caused by Psychological Stress',
      name: 'stressTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Preeclampsia is one of the pregnancy complications that affect blood pressure and can lead to premature birth. Research has shown that chronic stress and tension can cause high blood pressure. In rare cases, it may cause preeclampsia, so psychological stress doesn't necessarily mean high blood pressure or preeclampsia.`
  String get stressText3 {
    return Intl.message(
      'Preeclampsia is one of the pregnancy complications that affect blood pressure and can lead to premature birth. Research has shown that chronic stress and tension can cause high blood pressure. In rare cases, it may cause preeclampsia, so psychological stress doesn\'t necessarily mean high blood pressure or preeclampsia.',
      name: 'stressText3',
      desc: '',
      args: [],
    );
  }

  /// `Managing Psychological Stress During Pregnancy`
  String get stressTitle4 {
    return Intl.message(
      'Managing Psychological Stress During Pregnancy',
      name: 'stressTitle4',
      desc: '',
      args: [],
    );
  }

  /// `It's important to reduce and avoid psychological stress during pregnancy to prevent its impact on the mother and baby. You can alleviate or minimize psychological stress by following these strategies:`
  String get stressText4 {
    return Intl.message(
      'It\'s important to reduce and avoid psychological stress during pregnancy to prevent its impact on the mother and baby. You can alleviate or minimize psychological stress by following these strategies:',
      name: 'stressText4',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Avoid dwelling on matters that may increase anxiety and stress.`
  String get stressList1 {
    return Intl.message(
      '⬤ Avoid dwelling on matters that may increase anxiety and stress.',
      name: 'stressList1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Try to rest as much as possible to avoid psychological pressure on the mother.`
  String get stressList2 {
    return Intl.message(
      '⬤ Try to rest as much as possible to avoid psychological pressure on the mother.',
      name: 'stressList2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Talk to a trusted person about the fears and feelings accompanying pregnancy.`
  String get stressList3 {
    return Intl.message(
      '⬤ Talk to a trusted person about the fears and feelings accompanying pregnancy.',
      name: 'stressList3',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Regularly engage in suitable physical exercises for pregnancy.`
  String get stressList4 {
    return Intl.message(
      '⬤ Regularly engage in suitable physical exercises for pregnancy.',
      name: 'stressList4',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Practice yoga, meditation, breathing exercises, or relaxation techniques.`
  String get stressList5 {
    return Intl.message(
      '⬤ Practice yoga, meditation, breathing exercises, or relaxation techniques.',
      name: 'stressList5',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Participate in various preferred activities such as reading, watching TV, or other hobbies.`
  String get stressList6 {
    return Intl.message(
      '⬤ Participate in various preferred activities such as reading, watching TV, or other hobbies.',
      name: 'stressList6',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Spend time with people who bring calm and happiness, and seek help when needed.`
  String get stressList7 {
    return Intl.message(
      '⬤ Spend time with people who bring calm and happiness, and seek help when needed.',
      name: 'stressList7',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Follow a healthy, balanced diet to maintain the health of the child and the fetus.`
  String get stressList8 {
    return Intl.message(
      '⬤ Follow a healthy, balanced diet to maintain the health of the child and the fetus.',
      name: 'stressList8',
      desc: '',
      args: [],
    );
  }

  /// `Pregnancy Symptoms and Complications`
  String get symptomsAppBar {
    return Intl.message(
      'Pregnancy Symptoms and Complications',
      name: 'symptomsAppBar',
      desc: '',
      args: [],
    );
  }

  /// `Serious Symptoms`
  String get symptomsTitle1 {
    return Intl.message(
      'Serious Symptoms',
      name: 'symptomsTitle1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Severe headache that doesn't go away with painkillers`
  String get symptomsText1_1 {
    return Intl.message(
      '⬤ Severe headache that doesn\'t go away with painkillers',
      name: 'symptomsText1_1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Vision disturbances (blurring of vision)`
  String get symptomsText1_2 {
    return Intl.message(
      '⬤ Vision disturbances (blurring of vision)',
      name: 'symptomsText1_2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Swelling in the hands or feet, especially around the eyes`
  String get symptomsText1_3 {
    return Intl.message(
      '⬤ Swelling in the hands or feet, especially around the eyes',
      name: 'symptomsText1_3',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Pain in the upper abdomen (under the ribs on the right side)`
  String get symptomsText1_4 {
    return Intl.message(
      '⬤ Pain in the upper abdomen (under the ribs on the right side)',
      name: 'symptomsText1_4',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Nausea or vomiting`
  String get symptomsText1_5 {
    return Intl.message(
      '⬤ Nausea or vomiting',
      name: 'symptomsText1_5',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Reduced urine output`
  String get symptomsText1_6 {
    return Intl.message(
      '⬤ Reduced urine output',
      name: 'symptomsText1_6',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Impaired liver function`
  String get symptomsText1_7 {
    return Intl.message(
      '⬤ Impaired liver function',
      name: 'symptomsText1_7',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Shortness of breath`
  String get symptomsText1_8 {
    return Intl.message(
      '⬤ Shortness of breath',
      name: 'symptomsText1_8',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Sudden weight gain`
  String get symptomsText1_9 {
    return Intl.message(
      '⬤ Sudden weight gain',
      name: 'symptomsText1_9',
      desc: '',
      args: [],
    );
  }

  /// `Divider`
  String get symptomsDivider {
    return Intl.message(
      'Divider',
      name: 'symptomsDivider',
      desc: '',
      args: [],
    );
  }

  /// `Complications`
  String get symptomsTitle2 {
    return Intl.message(
      'Complications',
      name: 'symptomsTitle2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Seizure-like episodes or seizures usually occurring after the 20th week of pregnancy`
  String get symptomsText2_1 {
    return Intl.message(
      '⬤ Seizure-like episodes or seizures usually occurring after the 20th week of pregnancy',
      name: 'symptomsText2_1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Slowed fetal growth and low birth weight`
  String get symptomsText2_2 {
    return Intl.message(
      '⬤ Slowed fetal growth and low birth weight',
      name: 'symptomsText2_2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ HELLP Syndrome: Occurs late in pregnancy, causing the breakdown of red blood cells, elevated liver enzymes, and decreased platelet count`
  String get symptomsText2_3 {
    return Intl.message(
      '⬤ HELLP Syndrome: Occurs late in pregnancy, causing the breakdown of red blood cells, elevated liver enzymes, and decreased platelet count',
      name: 'symptomsText2_3',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Preterm birth`
  String get symptomsText2_4 {
    return Intl.message(
      '⬤ Preterm birth',
      name: 'symptomsText2_4',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Kidney failure`
  String get symptomsText2_5 {
    return Intl.message(
      '⬤ Kidney failure',
      name: 'symptomsText2_5',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Liver cirrhosis`
  String get symptomsText2_6 {
    return Intl.message(
      '⬤ Liver cirrhosis',
      name: 'symptomsText2_6',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Placental separation`
  String get symptomsText2_7 {
    return Intl.message(
      '⬤ Placental separation',
      name: 'symptomsText2_7',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Stroke`
  String get symptomsText2_8 {
    return Intl.message(
      '⬤ Stroke',
      name: 'symptomsText2_8',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Heart and vascular diseases`
  String get symptomsText2_9 {
    return Intl.message(
      '⬤ Heart and vascular diseases',
      name: 'symptomsText2_9',
      desc: '',
      args: [],
    );
  }

  /// `Medications`
  String get pharmatics_title {
    return Intl.message(
      'Medications',
      name: 'pharmatics_title',
      desc: '',
      args: [],
    );
  }

  /// `⬤ You should maintain the recommended daily dose as prescribed by your treating physician (for blood pressure and anticoagulant medications) and not change the dose without consulting your doctor.`
  String get pharmatics_text1 {
    return Intl.message(
      '⬤ You should maintain the recommended daily dose as prescribed by your treating physician (for blood pressure and anticoagulant medications) and not change the dose without consulting your doctor.',
      name: 'pharmatics_text1',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Adherence to daily medication times and methods.`
  String get pharmatics_text2 {
    return Intl.message(
      '⬤ Adherence to daily medication times and methods.',
      name: 'pharmatics_text2',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Adherence to daily nutritional supplements at the recommended dose prescribed by the doctor.`
  String get pharmatics_text3 {
    return Intl.message(
      '⬤ Adherence to daily nutritional supplements at the recommended dose prescribed by the doctor.',
      name: 'pharmatics_text3',
      desc: '',
      args: [],
    );
  }

  /// `⬤ Your use of any type of medication may conflict with your existing medications, so you should consult your doctor before using any medication.`
  String get pharmatics_text4 {
    return Intl.message(
      '⬤ Your use of any type of medication may conflict with your existing medications, so you should consult your doctor before using any medication.',
      name: 'pharmatics_text4',
      desc: '',
      args: [],
    );
  }

  /// `Dangers of Smoking and Alcohol`
  String get smoking_title {
    return Intl.message(
      'Dangers of Smoking and Alcohol',
      name: 'smoking_title',
      desc: '',
      args: [],
    );
  }

  /// `When a pregnant woman smokes, she inhales toxins (such as nicotine, lead, arsenic, and carbon monoxide). These toxins enter the placenta (the tissue that connects the mother to the fetus), preventing the fetus from receiving the necessary nutrients and oxygen it needs for growth. It can also lead to a decrease in fetal weight. Smoking increases the risk of miscarriage and infant mortality. It can lead to harmful conditions for both the pregnant woman and the fetus, such as placental abruption and preeclampsia.`
  String get smoking_text {
    return Intl.message(
      'When a pregnant woman smokes, she inhales toxins (such as nicotine, lead, arsenic, and carbon monoxide). These toxins enter the placenta (the tissue that connects the mother to the fetus), preventing the fetus from receiving the necessary nutrients and oxygen it needs for growth. It can also lead to a decrease in fetal weight. Smoking increases the risk of miscarriage and infant mortality. It can lead to harmful conditions for both the pregnant woman and the fetus, such as placental abruption and preeclampsia.',
      name: 'smoking_text',
      desc: '',
      args: [],
    );
  }

  /// `Rest and Exercise`
  String get rest_exercise_title {
    return Intl.message(
      'Rest and Exercise',
      name: 'rest_exercise_title',
      desc: '',
      args: [],
    );
  }

  /// `Avoid any physical exertion and try to get some rest and relaxation. You should aim to get an adequate amount of sleep, at least 8 hours at night, and take a break for at least two hours during the day.`
  String get rest_exercise_text_1 {
    return Intl.message(
      'Avoid any physical exertion and try to get some rest and relaxation. You should aim to get an adequate amount of sleep, at least 8 hours at night, and take a break for at least two hours during the day.',
      name: 'rest_exercise_text_1',
      desc: '',
      args: [],
    );
  }

  /// `If you are not experiencing complications and after consulting with your doctor:`
  String get rest_exercise_text_2 {
    return Intl.message(
      'If you are not experiencing complications and after consulting with your doctor:',
      name: 'rest_exercise_text_2',
      desc: '',
      args: [],
    );
  }

  /// `You are allowed to engage in gentle or brisk walking, which is considered a safe form of exercise as long as you do it on suitable ground that is not elevated. You can walk for up to half an hour daily, but remember to take sufficient rest if you feel any fatigue. `
  String get rest_exercise_text_3 {
    return Intl.message(
      'You are allowed to engage in gentle or brisk walking, which is considered a safe form of exercise as long as you do it on suitable ground that is not elevated. You can walk for up to half an hour daily, but remember to take sufficient rest if you feel any fatigue. ',
      name: 'rest_exercise_text_3',
      desc: '',
      args: [],
    );
  }

  /// `You should walk two hours after having breakfast, and remember to carry a bottle of water or unsweetened juice with you. If you feel tired, be sure to stop and rest.`
  String get rest_exercise_text_4 {
    return Intl.message(
      'You should walk two hours after having breakfast, and remember to carry a bottle of water or unsweetened juice with you. If you feel tired, be sure to stop and rest.',
      name: 'rest_exercise_text_4',
      desc: '',
      args: [],
    );
  }

  /// `Keep in mind that walking helps you maintain fitness and a healthy weight during pregnancy and strengthens your heart in general, even during labor.`
  String get rest_exercise_text_5 {
    return Intl.message(
      'Keep in mind that walking helps you maintain fitness and a healthy weight during pregnancy and strengthens your heart in general, even during labor.',
      name: 'rest_exercise_text_5',
      desc: '',
      args: [],
    );
  }

  /// `Listen to your body's complaints:`
  String get rest_exercise_text_6 {
    return Intl.message(
      'Listen to your body\'s complaints:',
      name: 'rest_exercise_text_6',
      desc: '',
      args: [],
    );
  }

  /// `Monitoring signs of any problem is just as important as exercising. Stop exercising and contact your healthcare provider in the following cases:`
  String get rest_exercise_text_7 {
    return Intl.message(
      'Monitoring signs of any problem is just as important as exercising. Stop exercising and contact your healthcare provider in the following cases:',
      name: 'rest_exercise_text_7',
      desc: '',
      args: [],
    );
  }

  /// `Vaginal bleeding.`
  String get rest_exercise_text_8 {
    return Intl.message(
      'Vaginal bleeding.',
      name: 'rest_exercise_text_8',
      desc: '',
      args: [],
    );
  }

  /// `Dizziness.`
  String get rest_exercise_text_9 {
    return Intl.message(
      'Dizziness.',
      name: 'rest_exercise_text_9',
      desc: '',
      args: [],
    );
  }

  /// `Headache.`
  String get rest_exercise_text_10 {
    return Intl.message(
      'Headache.',
      name: 'rest_exercise_text_10',
      desc: '',
      args: [],
    );
  }

  /// `Feeling increased shortness of breath before starting exercise.`
  String get rest_exercise_text_11 {
    return Intl.message(
      'Feeling increased shortness of breath before starting exercise.',
      name: 'rest_exercise_text_11',
      desc: '',
      args: [],
    );
  }

  /// `Chest pain.`
  String get rest_exercise_text_12 {
    return Intl.message(
      'Chest pain.',
      name: 'rest_exercise_text_12',
      desc: '',
      args: [],
    );
  }

  /// `CBC Test Result`
  String get cbc_label {
    return Intl.message(
      'CBC Test Result',
      name: 'cbc_label',
      desc: '',
      args: [],
    );
  }

  /// `Kidney Functions Test Result`
  String get kidney_functions_label {
    return Intl.message(
      'Kidney Functions Test Result',
      name: 'kidney_functions_label',
      desc: '',
      args: [],
    );
  }

  /// `Liver Functions Test Result`
  String get liver_functions_label {
    return Intl.message(
      'Liver Functions Test Result',
      name: 'liver_functions_label',
      desc: '',
      args: [],
    );
  }

  /// `Body Mass Index (BMI)`
  String get bmi_label {
    return Intl.message(
      'Body Mass Index (BMI)',
      name: 'bmi_label',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure Test Result`
  String get blood_pressure_label {
    return Intl.message(
      'Blood Pressure Test Result',
      name: 'blood_pressure_label',
      desc: '',
      args: [],
    );
  }

  /// `Save Test Results`
  String get save_results_button {
    return Intl.message(
      'Save Test Results',
      name: 'save_results_button',
      desc: '',
      args: [],
    );
  }

  /// `Test Results Saved`
  String get results_saved_title {
    return Intl.message(
      'Test Results Saved',
      name: 'results_saved_title',
      desc: '',
      args: [],
    );
  }

  /// `Your test results have been saved.`
  String get results_saved_message {
    return Intl.message(
      'Your test results have been saved.',
      name: 'results_saved_message',
      desc: '',
      args: [],
    );
  }

  /// `ok`
  String get confirm {
    return Intl.message(
      'ok',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_title {
    return Intl.message(
      'Profile',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name_label {
    return Intl.message(
      'Name',
      name: 'name_label',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age_label {
    return Intl.message(
      'Age',
      name: 'age_label',
      desc: '',
      args: [],
    );
  }

  /// `Location (Country/City)`
  String get place_label {
    return Intl.message(
      'Location (Country/City)',
      name: 'place_label',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address_label {
    return Intl.message(
      'Address',
      name: 'address_label',
      desc: '',
      args: [],
    );
  }

  /// `Education Level`
  String get education_level_label {
    return Intl.message(
      'Education Level',
      name: 'education_level_label',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get work_label {
    return Intl.message(
      'Work',
      name: 'work_label',
      desc: '',
      args: [],
    );
  }

  /// `Number of Pregnancies`
  String get num_pregnancies_label {
    return Intl.message(
      'Number of Pregnancies',
      name: 'num_pregnancies_label',
      desc: '',
      args: [],
    );
  }

  /// `Number of Deliveries`
  String get num_deliveries_label {
    return Intl.message(
      'Number of Deliveries',
      name: 'num_deliveries_label',
      desc: '',
      args: [],
    );
  }

  /// `Last Delivery Type`
  String get last_delivery_type_label {
    return Intl.message(
      'Last Delivery Type',
      name: 'last_delivery_type_label',
      desc: '',
      args: [],
    );
  }

  /// `Last Delivery Type Details`
  String get last_delivery_type_details_label {
    return Intl.message(
      'Last Delivery Type Details',
      name: 'last_delivery_type_details_label',
      desc: '',
      args: [],
    );
  }

  /// `Last Period Date`
  String get last_period_date_label {
    return Intl.message(
      'Last Period Date',
      name: 'last_period_date_label',
      desc: '',
      args: [],
    );
  }

  /// `Weeks Pregnant`
  String get weeks_pregnant_label {
    return Intl.message(
      'Weeks Pregnant',
      name: 'weeks_pregnant_label',
      desc: '',
      args: [],
    );
  }

  /// `Complications`
  String get complications_label {
    return Intl.message(
      'Complications',
      name: 'complications_label',
      desc: '',
      args: [],
    );
  }

  /// `Medical History`
  String get medical_history_label {
    return Intl.message(
      'Medical History',
      name: 'medical_history_label',
      desc: '',
      args: [],
    );
  }

  /// `Body Mass Index`
  String get bmi_label_profile {
    return Intl.message(
      'Body Mass Index',
      name: 'bmi_label_profile',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save_button_text {
    return Intl.message(
      'Save',
      name: 'save_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Profile Saved`
  String get profile_saved_title {
    return Intl.message(
      'Profile Saved',
      name: 'profile_saved_title',
      desc: '',
      args: [],
    );
  }

  /// `Your profile has been saved.`
  String get profile_saved_message {
    return Intl.message(
      'Your profile has been saved.',
      name: 'profile_saved_message',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout_label {
    return Intl.message(
      'Logout',
      name: 'logout_label',
      desc: '',
      args: [],
    );
  }

  /// `Hospital Map`
  String get hospital_map_label {
    return Intl.message(
      'Hospital Map',
      name: 'hospital_map_label',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_label {
    return Intl.message(
      'Home',
      name: 'home_label',
      desc: '',
      args: [],
    );
  }

  /// `Serious Symptoms`
  String get symptoms_and_complications_label {
    return Intl.message(
      'Serious Symptoms',
      name: 'symptoms_and_complications_label',
      desc: '',
      args: [],
    );
  }

  /// `Diet and Nutrition`
  String get diet_label {
    return Intl.message(
      'Diet and Nutrition',
      name: 'diet_label',
      desc: '',
      args: [],
    );
  }

  /// `Smoking and Alcohol`
  String get smoking_label {
    return Intl.message(
      'Smoking and Alcohol',
      name: 'smoking_label',
      desc: '',
      args: [],
    );
  }

  /// `Surroundings`
  String get environment_label {
    return Intl.message(
      'Surroundings',
      name: 'environment_label',
      desc: '',
      args: [],
    );
  }

  /// `Rest and Exercise`
  String get rest_and_exercise_label {
    return Intl.message(
      'Rest and Exercise',
      name: 'rest_and_exercise_label',
      desc: '',
      args: [],
    );
  }

  /// `Psychological Stressors`
  String get stress_label {
    return Intl.message(
      'Psychological Stressors',
      name: 'stress_label',
      desc: '',
      args: [],
    );
  }

  /// `Pharmaceuticals`
  String get pharmaceuticals_label {
    return Intl.message(
      'Pharmaceuticals',
      name: 'pharmaceuticals_label',
      desc: '',
      args: [],
    );
  }

  /// `Test Input`
  String get test_input_label {
    return Intl.message(
      'Test Input',
      name: 'test_input_label',
      desc: '',
      args: [],
    );
  }

  /// `Blood pressure should be measured every 48 hours. Before measuring blood pressure, follow these instructions:\n\n1. Rest for at least 15 minutes (no mental or physical effort).\n2. Ensure the cuff size is appropriate for your arm.\n3. Sit while measuring, using the same arm for consistency.`
  String get blood_pressure_instructions {
    return Intl.message(
      'Blood pressure should be measured every 48 hours. Before measuring blood pressure, follow these instructions:\n\n1. Rest for at least 15 minutes (no mental or physical effort).\n2. Ensure the cuff size is appropriate for your arm.\n3. Sit while measuring, using the same arm for consistency.',
      name: 'blood_pressure_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure`
  String get blood_pressure_title {
    return Intl.message(
      'Blood Pressure',
      name: 'blood_pressure_title',
      desc: '',
      args: [],
    );
  }

  /// `High blood pressure detected (more than 160/110). Please consult a doctor.`
  String get blood_pressure_warning {
    return Intl.message(
      'High blood pressure detected (more than 160/110). Please consult a doctor.',
      name: 'blood_pressure_warning',
      desc: '',
      args: [],
    );
  }

  /// `Protein measurement using urine strips is a medical test to detect the presence of proteins in urine, including albumin or globulin. The test strip changes color when dipped in a well-mixed urine sample. Results are usually read after 60-120 seconds of immersion. Results are graded as negative, trace, 1+, 2+, 3+, and 4+ based on the color change.`
  String get protein_in_urine_instructions {
    return Intl.message(
      'Protein measurement using urine strips is a medical test to detect the presence of proteins in urine, including albumin or globulin. The test strip changes color when dipped in a well-mixed urine sample. Results are usually read after 60-120 seconds of immersion. Results are graded as negative, trace, 1+, 2+, 3+, and 4+ based on the color change.',
      name: 'protein_in_urine_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Protein in Urine`
  String get protein_in_urine_label {
    return Intl.message(
      'Protein in Urine',
      name: 'protein_in_urine_label',
      desc: '',
      args: [],
    );
  }

  /// `Monitor your weight weekly, preferably in the morning before breakfast, using the same scale each time. Expect an increase of 0.5 to 1 kilogram per week during pregnancy.`
  String get weight_instructions {
    return Intl.message(
      'Monitor your weight weekly, preferably in the morning before breakfast, using the same scale each time. Expect an increase of 0.5 to 1 kilogram per week during pregnancy.',
      name: 'weight_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight_label {
    return Intl.message(
      'Weight',
      name: 'weight_label',
      desc: '',
      args: [],
    );
  }

  /// `Warning: The current weight should not increase by more than 1 kilogram compared to the last measurement.`
  String get weight_warning {
    return Intl.message(
      'Warning: The current weight should not increase by more than 1 kilogram compared to the last measurement.',
      name: 'weight_warning',
      desc: '',
      args: [],
    );
  }

  /// `Monitor fetal movements daily. The pregnant mother should feel at least 10 movements in two hours. Place your hand(s) on your belly and count each time you feel the baby move. If you feel many movements at the same time, count the number of movements you feel. Record the date and time when you start counting the movements on the fetal movement chart.`
  String get fetus_movement_instructions {
    return Intl.message(
      'Monitor fetal movements daily. The pregnant mother should feel at least 10 movements in two hours. Place your hand(s) on your belly and count each time you feel the baby move. If you feel many movements at the same time, count the number of movements you feel. Record the date and time when you start counting the movements on the fetal movement chart.',
      name: 'fetus_movement_instructions',
      desc: '',
      args: [],
    );
  }

  /// `Fetus Movement`
  String get fetus_movement_label {
    return Intl.message(
      'Fetus Movement',
      name: 'fetus_movement_label',
      desc: '',
      args: [],
    );
  }

  /// `Monitor the amount of amniotic fluid around the fetus and the fetal weight every two weeks.`
  String get sonar_instructions {
    return Intl.message(
      'Monitor the amount of amniotic fluid around the fetus and the fetal weight every two weeks.',
      name: 'sonar_instructions',
      desc: '',
      args: [],
    );
  }

  /// `SONAR`
  String get sonar_label {
    return Intl.message(
      'SONAR',
      name: 'sonar_label',
      desc: '',
      args: [],
    );
  }

  /// `Save Test Results`
  String get save_test_results_button {
    return Intl.message(
      'Save Test Results',
      name: 'save_test_results_button',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error_title {
    return Intl.message(
      'Error',
      name: 'error_title',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while saving test results. Please try again later.`
  String get error_message {
    return Intl.message(
      'An error occurred while saving test results. Please try again later.',
      name: 'error_message',
      desc: '',
      args: [],
    );
  }

  /// `User data not found.`
  String get user_data_not_found {
    return Intl.message(
      'User data not found.',
      name: 'user_data_not_found',
      desc: '',
      args: [],
    );
  }

  /// `measurements results`
  String get measurements_results_label {
    return Intl.message(
      'measurements results',
      name: 'measurements_results_label',
      desc: '',
      args: [],
    );
  }

  /// `lab results`
  String get lab_results_label {
    return Intl.message(
      'lab results',
      name: 'lab_results_label',
      desc: '',
      args: [],
    );
  }

  /// `Lab Results`
  String get app_title {
    return Intl.message(
      'Lab Results',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Urea`
  String get urea_label {
    return Intl.message(
      'Urea',
      name: 'urea_label',
      desc: '',
      args: [],
    );
  }

  /// `Creat`
  String get creat_label {
    return Intl.message(
      'Creat',
      name: 'creat_label',
      desc: '',
      args: [],
    );
  }

  /// `Albumin-Creatinine ratio`
  String get albumin_creatinine_ratio_label {
    return Intl.message(
      'Albumin-Creatinine ratio',
      name: 'albumin_creatinine_ratio_label',
      desc: '',
      args: [],
    );
  }

  /// `Liver Function Tests`
  String get liver_function_tests_title {
    return Intl.message(
      'Liver Function Tests',
      name: 'liver_function_tests_title',
      desc: '',
      args: [],
    );
  }

  /// `ALT`
  String get alt_label {
    return Intl.message(
      'ALT',
      name: 'alt_label',
      desc: '',
      args: [],
    );
  }

  /// `AST`
  String get ast_label {
    return Intl.message(
      'AST',
      name: 'ast_label',
      desc: '',
      args: [],
    );
  }

  /// `ALP`
  String get alp_label {
    return Intl.message(
      'ALP',
      name: 'alp_label',
      desc: '',
      args: [],
    );
  }

  /// `GGT`
  String get ggt_label {
    return Intl.message(
      'GGT',
      name: 'ggt_label',
      desc: '',
      args: [],
    );
  }

  /// `Complete Blood Picture`
  String get complete_blood_picture_title {
    return Intl.message(
      'Complete Blood Picture',
      name: 'complete_blood_picture_title',
      desc: '',
      args: [],
    );
  }

  /// `Hb%`
  String get hb_percentage_label {
    return Intl.message(
      'Hb%',
      name: 'hb_percentage_label',
      desc: '',
      args: [],
    );
  }

  /// `Hct`
  String get hct_label {
    return Intl.message(
      'Hct',
      name: 'hct_label',
      desc: '',
      args: [],
    );
  }

  /// `Platelet count`
  String get platelet_count_label {
    return Intl.message(
      'Platelet count',
      name: 'platelet_count_label',
      desc: '',
      args: [],
    );
  }

  /// `Pick an Image`
  String get pick_image_button {
    return Intl.message(
      'Pick an Image',
      name: 'pick_image_button',
      desc: '',
      args: [],
    );
  }

  /// `Save Lab Results`
  String get save_lab_results_button {
    return Intl.message(
      'Save Lab Results',
      name: 'save_lab_results_button',
      desc: '',
      args: [],
    );
  }

  /// `Warning`
  String get warning_title {
    return Intl.message(
      'Warning',
      name: 'warning_title',
      desc: '',
      args: [],
    );
  }

  /// `ALT is greater than 55.`
  String get alt_warning_message {
    return Intl.message(
      'ALT is greater than 55.',
      name: 'alt_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `AST is greater than 50.`
  String get ast_warning_message {
    return Intl.message(
      'AST is greater than 50.',
      name: 'ast_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `ALP is greater than 148.`
  String get alp_warning_message {
    return Intl.message(
      'ALP is greater than 148.',
      name: 'alp_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `Albumin-Creatinine ratio is less than 2.0.`
  String get albumin_creatinine_warning_message {
    return Intl.message(
      'Albumin-Creatinine ratio is less than 2.0.',
      name: 'albumin_creatinine_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `GGT is greater than 300.`
  String get ggt_warning_message {
    return Intl.message(
      'GGT is greater than 300.',
      name: 'ggt_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `Urea is greater than 30.`
  String get urea_warning_message {
    return Intl.message(
      'Urea is greater than 30.',
      name: 'urea_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `Creatinine in Urine is greater than 1.2.`
  String get creatinine_urine_warning_message {
    return Intl.message(
      'Creatinine in Urine is greater than 1.2.',
      name: 'creatinine_urine_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `Platelet count is less than 100,000.`
  String get platelet_count_warning_message {
    return Intl.message(
      'Platelet count is less than 100,000.',
      name: 'platelet_count_warning_message',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get register_app_title {
    return Intl.message(
      'Create an Account',
      name: 'register_app_title',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_hint {
    return Intl.message(
      'Email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_hint {
    return Intl.message(
      'Password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password_hint {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get national_id_hint {
    return Intl.message(
      'National ID',
      name: 'national_id_hint',
      desc: '',
      args: [],
    );
  }

  /// `National ID must contain exactly 14 digits and only numbers.`
  String get error_message_invalid_national_id {
    return Intl.message(
      'National ID must contain exactly 14 digits and only numbers.',
      name: 'error_message_invalid_national_id',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match.`
  String get error_message_password_mismatch {
    return Intl.message(
      'Passwords do not match.',
      name: 'error_message_password_mismatch',
      desc: '',
      args: [],
    );
  }

  /// `Password must be 8 characters or longer.`
  String get error_message_short_password {
    return Intl.message(
      'Password must be 8 characters or longer.',
      name: 'error_message_short_password',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get register_button_text {
    return Intl.message(
      'Create an Account',
      name: 'register_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose a password that is 8 characters or longer. You can use numbers. Remember to keep this code safe.`
  String get password_requirements_message {
    return Intl.message(
      'Choose a password that is 8 characters or longer. You can use numbers. Remember to keep this code safe.',
      name: 'password_requirements_message',
      desc: '',
      args: [],
    );
  }

  /// `Successfully registered`
  String get register_success_message {
    return Intl.message(
      'Successfully registered',
      name: 'register_success_message',
      desc: '',
      args: [],
    );
  }

  /// `registration failed`
  String get error_message_registration_failed {
    return Intl.message(
      'registration failed',
      name: 'error_message_registration_failed',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_app_title {
    return Intl.message(
      'Login',
      name: 'login_app_title',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get have_account_question {
    return Intl.message(
      'Already have an account?',
      name: 'have_account_question',
      desc: '',
      args: [],
    );
  }

  /// `login failed`
  String get login_error_message {
    return Intl.message(
      'login failed',
      name: 'login_error_message',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_button_text {
    return Intl.message(
      'Login',
      name: 'login_button_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
