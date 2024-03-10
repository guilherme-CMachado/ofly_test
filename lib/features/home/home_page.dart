import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/travels/travels_page.dart';
import 'package:ofly_tech_test/features/travels/widgets/booked_travels_card.dart';

class HomePage extends StatefulWidget {
  final UserModel? userModel;
  List<BookedTravelsModel>? bookedTravels;
  HomePage({
    Key? key,
    this.userModel,
    this.bookedTravels,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Olá ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                      text: "${widget.userModel?.userName ?? ""}",
                      style: TextStyle(color: Colors.red, fontSize: 20))
                ],
              ),
            ),
            Spacer(),
            // widget.bookedTravels.isEmpty
            //     ? ListView.builder(
            //         itemCount: widget.bookedTravels!.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           return BookedTravelsCard(
            //             bookedTravelsModel: widget.bookedTravels![index],
            //           );
            //         })
            //     : Text(
            Text(
                "Parece que você não tem viagens programadas, vamos marcar uma?"),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TravelsPage(
                            userModel: widget.userModel,
                            userUID: widget.userModel!.uid,
                          )));
                },
                child: const Icon(Icons.airplane_ticket),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: const GNav(tabs: []),
    );
  }
}
