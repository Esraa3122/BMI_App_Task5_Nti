import 'package:bmi_app/feature/home/view/widget/custombuttom.dart';
import 'package:bmi_app/feature/home/view/widget/form_text_from_field.dart';
import 'package:bmi_app/src/widget/app_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyScreenState();
}

String result = '';
final TextEditingController heightController = TextEditingController();
final TextEditingController weightController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

class _MyScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    heightController.addListener(() {
      setState(() {});
    });
    weightController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    heightController.dispose();
    weightController.dispose();
  }

  void calculateW() {
    double? weight = double.tryParse(weightController.text);
    double? length = double.tryParse(heightController.text);
    double lengthInMeters = length! / 100;
    double count = weight! / (lengthInMeters * lengthInMeters);
    String status;

    if (count < 18.5) {
      status = 'نحيف';
    } else if (count >= 18.5 && count < 25) {
      status = 'وزن طبيعي';
    } else if (count >= 25 && count < 30) {
      status = 'وزن زائد';
    } else {
      status = 'سمين';
    }

    setState(() {
      result = 'القيمة: ${count.toStringAsFixed(2)}\n الحاله: $status';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBarHome(),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              children: [
                const Image(
                  image: AssetImage("images/undraw_login_wqkt.png"),
                  height: 300,
                ),
                const SizedBox(
                  height: 40,
                ),
                const FormTextField(),
                CustomButtomAuth(
                    text: 'احسب',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        calculateW();
                      } else {
                        print('غير متوفر');
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                // Text(result),
                Text(
                  'النتيجه:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  result,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
