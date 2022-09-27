import 'package:flutter/material.dart';
import 'package:flutter_application_desing/src/widgets/background.dart';
import 'package:flutter_application_desing/src/widgets/card_table.dart';

import '../widgets/custom_navi.dart';
import '../widgets/page_title.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: const CustumBotton(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        PageTitle(),
        //Tarjetas
        CardTable()
      ]),
    );
  }
}
