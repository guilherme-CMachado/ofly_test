import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/card/card_page.dart';
import 'package:ofly_tech_test/features/profile/profile_page.dart';
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
  int _selectedIndex = 0;

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
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    if (_selectedIndex == 0) {
      return _buildBookedTravelsList();
    } else if (_selectedIndex == 1) {
      return CardPage(
        userModel: widget.userModel!,
      );
    } else {
      return ProfilePage(
        userModel: widget.userModel!,
      );
    }
  }

  Widget _buildBookedTravelsList() {
    return widget.userModel!.bookedTravels!.isEmpty
        ? ListView.builder(
            itemCount: widget.userModel?.bookedTravels?.length,
            itemBuilder: (BuildContext context, int index) {
              return BookedTravelsCard(
                bookedTravelsModel: widget.userModel!.bookedTravels![index],
              );
            },
          )
        : SingleChildScrollView(
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
          );
  }

  Widget _buildBottomNavigationBar() {
    return GNav(
      tabs: const [
        GButton(
          text: 'Reservas',
          icon: Icons.airplane_ticket,
        ),
        GButton(
          text: 'Cartão de Crédito',
          icon: Icons.credit_card,
        ),
        GButton(
          text: 'Perfil',
          icon: Icons.person,
        ),
      ],
      selectedIndex: _selectedIndex,
      onTabChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
