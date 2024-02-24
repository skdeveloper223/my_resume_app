import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 10,
                  ),
                  Text("+91 9998557234"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  Text("kolisantosh222@gmail.com"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.web),
                  SizedBox(
                    width: 10,
                  ),
                  Text("linkedin.com/in/santosh-koli-140219159"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Wrap(
                children: [
                  Container(
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WORK EXPERIENCE",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            // color: Colors.grey.withOpacity(0.4),
                            padding: EdgeInsets.all(8),
                            child: const Text("2 Years as Android developer.\n3 Years as Flutter Developer.")),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ABOUT ME",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          // color: Colors.grey.withOpacity(0.4),
                          padding: EdgeInsets.all(8),
                          child: Text("I am passionate software engineer, worked on various client’s base company. I believe " +
                              "in learning new things and implementing it into my project and also deliver as per" +
                              "client\'s requirement. Good knowledge of flutter, firebase and UI designing. also worked" +
                              "on web services. Always ready for new challenges and like to learn something new."),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SKILLS",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  _buildSkillRow("Java", 0.70),
                  _buildSkillRow("Dart", 0.80),
                  _buildSkillRow("Flutter", 0.90),
                  _buildSkillRow("Firebase", 0.65),
                  _buildSkillRow("Payment", 0.60),
                  _buildSkillRow("Android", 0.80),
                  _buildSkillRow("iOS", 0.75),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Experience".toUpperCase(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  _buildExperienceRow(company: "The Complete Softech", position: 'Sr. Flutter Developer', duration: "May 2023-Current"),
                  _buildExperienceRow(company: "Vraj Technosys", position: 'Sr. Flutter Developer', duration: "Sep 2021-Apr 2023"),
                  _buildExperienceRow(company: "Bigwelt", position: 'Sr. Android/Flutter Developer', duration: "Nov 2019-Aug 2021"),
                  _buildExperienceRow(company: "Origin Infotech", position: 'Jr. Android Developer', duration: "Apr 2019-Oct 2019"),
                  _buildExperienceRow(company: "ITSoft Technologies", position: 'Internship', duration: "Jan 2019-May 2019"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Education".toUpperCase(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  _buildEducationRow(collage: "Udhana Academy Collage", degree: 'BCA', duration: "2019"),
                  _buildEducationRow(collage: "Shree Chhatrapati Highschool", degree: 'HSC', duration: "2016"),
                  _buildEducationRow(collage: "Suman Highschool", degree: 'SSC', duration: "2014"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _buildExperienceRow({required String company, String? position, String? duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          Icons.circle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  ListTile _buildEducationRow({required String collage, String? degree, String? duration}) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          Icons.circle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        collage,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$degree ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 16.0),
        Expanded(
            flex: 1,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.left,
            )),
        const SizedBox(width: 10.0),
        Expanded(
          flex: 2,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        const SizedBox(width: 20.0),
        SizedBox(
            width: 80.0,
            height: 80.0,
            child: CircleAvatar(radius: 40, backgroundColor: Colors.grey, child: CircleAvatar(radius: 35.0, child: FlutterLogo()))),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Santosh Koli",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const Text("Flutter Developer"),
            const SizedBox(height: 5.0),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Surat, Gujarat",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
