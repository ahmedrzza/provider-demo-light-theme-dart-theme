import 'package:flutter/material.dart';
import 'package:provider_demo/provider/favourite_provider.dart';
import 'package:provider_demo/provider/screen/example_one.dart';
import 'package:provider_demo/provider/screen/firstexample.dart';
import 'package:provider_demo/provider/statless_as_statefull/statless_as_statefull.dart';
import 'package:provider_demo/provider/theme/darktheme_Screem.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Provider State Management"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            usedContainer(
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstExample()));
              },
              height: height * 0.065,
              text: Center(
                child: Text(
                  "Count Example",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            20.ph,
            usedContainer(
              height: height * 0.065,
              text: Center(
                  child: Text(
                "Container Example",
                style: TextStyle(fontSize: 20),
              )),
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Example_one(),
                  ),
                );
              },
            ),
            20.ph,
            usedContainer(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favourite_Provider(),
                  ),
                );
              },
              height: height * 0.065,
              text: Center(
                child: Text(
                  "Favourite Example",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            20.ph,
            usedContainer(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StatelessWidget_as_statfulwidget(),
                  ),
                );
              },
              height: height * 0.065,
              text: Center(
                child: Text(
                  "Statless Widget as StateFul Widget Example",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            20.ph,
            usedContainer(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dark_theme(),
                  ),
                );
              },
              height: height * 0.065,
              text: Center(
                child: Text(
                  "Themechanger Example",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            20.ph,
            usedContainer(
              ontap: () {},
              height: height * 0.065,
              text: Center(
                child: Text(
                  "Login Api Example",
                  style: TextStyle(
                    fontSize: 20,
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

usedContainer({required height, required Widget? text, required ontap}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.teal.shade400,
      ),
      child: text,
    ),
  );
}

extension size on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}
