
import 'package:flutter/material.dart';
import '../themes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  final String userName = 'Frederick';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('MoveMint Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, \$userName 👋',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: const [
                  DashboardTile(label: 'Start Shift', icon: Icons.play_arrow),
                  DashboardTile(label: 'End Shift', icon: Icons.stop),
                  DashboardTile(label: 'Earnings', icon: Icons.attach_money),
                  DashboardTile(label: 'Miles Driven', icon: Icons.directions_car),
                  DashboardTile(label: 'Offers Taken', icon: Icons.local_offer),
                  DashboardTile(label: 'PDF Export', icon: Icons.picture_as_pdf),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final String label;
  final IconData icon;

  const DashboardTile({required this.label, required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: Container(
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {
            // TODO: Implement navigation for \$label
          },
          borderRadius: BorderRadius.circular(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: kMintGreen, size: 36),
              const SizedBox(height: 12),
              Text(
                label,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
