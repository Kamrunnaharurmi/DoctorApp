import 'package:flutter/material.dart';
import 'home.dart';

class life extends StatefulWidget {
  const life({super.key});

  @override
  State<life> createState() => lifeState();
}

class lifeState extends State<life> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/start.jpg"),
            fit: BoxFit.cover),
      ),

        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: Text('Healthy Lifestyle',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),
              leading: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => home()));
                },
                icon:Icon(Icons.arrow_back_outlined,color: Colors.white),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 15),
                  child: Image.asset(
                    'images/mlogo.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),

            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 2, right: 2),
                child: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(blurRadius: 30.0)
                        ],
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                    ),
                    SizedBox(
                        height: 30
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Image.asset(
                            'images/life.jpg',
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ],
                    ),

                    Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.blue),
                        "# 10 TIPS FOR MAINTAINING A HEALTHY LIFESTYLE AND BODY WEIGHT :\n"),
                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Maintaining a healthy lifestyle can feel like a challenge at times, especially when you’re already trying to balance everyday life. But when it comes to health and wellness, sometimes it’s the small and consistent changes that make the biggest impact. Centrum is here to remind you that healthy living can make your life better.Here, we’d like to share some basic tips and resources for how to maintain your healthy lifestyle, body weight, andoverall well-being while staying home and engaging in social distancing. "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n1. Measure and Watch Your Weight Daily & Note That"),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Keeping track of your body weight on a daily or weekly basis will help you see what you’re losing and/or whatyou’re gaining."),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n2. Limit Unhealthy Foods and Eat Healthy Meals"),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Do not forget to eat breakfast and choose a nutritious meal with more protein and fiber and less fat, sugar, andcalories."),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n3. Take Multivitamin Supplements "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "To make sure you have sufficient levels of nutrients, taking a daily multivitamin supplement is a good idea,especially when you do not have a variety of vegetables and fruits at home. Many micronutrients are vital to yourimmune system, including vitamins A, B6, B12, C, D, and E, as well as zinc, iron, copper, selenium, and magnesium.However, there’s currently NO available evidence that adding any supplements or “miracle mineral supplements”to your diet will help protect you from the virus or increase recovery. In some cases, high doses of vitamins can bebad for your health. "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n4. Drink Water and Stay Hydrated, and Limit Sugared Beverages "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Drink water regularly to stay healthy, but there is NO evidence that drinking water frequently (e.g. every 15minutes) can help prevent any viral infection."),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n5. Exercise Regularly and Be Physically Active "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "At this time, at-home workouts may be a good idea. But you can also walk your dog or run outside. Be sure youknow what’s going on in your area and if there are any restrictions or mandatory self-quarantines."),
                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n6. Reduce Sitting and Screen Time"),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Exercise can’t immunize you from your sedentary time. Even people who exercise regularly could be at increasedrisk for diabetes and heart disease and stroke if they spend lots of time sitting behind computers. Practicallyspeaking, you could consider taking breaks from sedentary time, such as walking around the office/room a coupleof times in a day."),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n7. Get Enough Good Sleep "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "There is a very strong connection between sleep quality and quantity and your immune system. You can keep yourimmune system functioning properly by getting seven to eight hours of sleep each night."),
                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n8. Keeping your brain active"),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "There are lots of easy ways to help to keep your brain alert as you get older. Certain foods can help to increase your brainpower, as well as simple activities such as doing a crossword or quiz, reading a book or having a lively debate! ."),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n9. Have regular health checks"),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Visits to the Dentists and Opticians become more and more important as you get older. Your eyesight and dental health can sometimes be the first indicator of more serious health problems, such as diabetes, so it’s a good idea to get them checked as often as possible. "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.black),
                        "\n10. Get plenty of fresh air "),

                    Text(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 13,color: Colors.black),
                        "Getting out in the fresh air is not only good for your physical health, but for your mental health too. Exposure to sunlight boosts your vitamin D levels, which is essential for your teeth and bones and also makes you feel happier.  Going outdoors as often as possible, for example to walk your dog, is also a great way of meeting people and improving your social life."),
                    SizedBox(
                        height: 50
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}