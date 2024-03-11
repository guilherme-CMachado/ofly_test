import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/core/services/travels/booked_travels_service.dart';
import 'package:ofly_tech_test/features/travels/travels_page.dart';
import 'package:ofly_tech_test/features/travels/widgets/booked_travels_card.dart';

class HomePage extends StatefulWidget {
  final UserModel? userModel;

  HomePage({
    Key? key,
    this.userModel,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _travelService = BookedTravelsService();

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
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.airplane_ticket_outlined),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TravelsPage(
              userUID: widget.userModel!.uid,
            ),
          ));
        },
        tooltip: "Marcar Viagem",
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
    return StreamBuilder<List<BookedTravelsModel>>(
      stream: _travelService.getBookedTravelsStream(widget.userModel!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text("Erro: ${snapshot.error}");
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return _buildEmptyState();
        }

        return _buildBookedTravelsList(snapshot.data!);
      },
    );
  }

  Widget _buildEmptyState() {
    return Column(
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
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
        ),
        Spacer(),
        Container(
          margin: const EdgeInsets.all(12),
          child: Text(
            "Parece que você não tem viagens programadas, vamos marcar uma?",
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildBookedTravelsList(List<BookedTravelsModel> bookedTravels) {
    return ListView.builder(
      itemCount: bookedTravels.length,
      itemBuilder: (BuildContext context, int index) {
        return BookedTravelsCard(
          bookedTravelsModel: bookedTravels[index],
        );
      },
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
