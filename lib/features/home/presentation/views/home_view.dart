// import 'package:flutter/material.dart';
// import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_drawer.dart';
// import 'package:responsive_ui_app/features/home/presentation/views/widgets/home_view_body.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: CustomDrawer(),
//       key: scaffoldKey,
//       appBar: MediaQuery.of(context).size.width - 32 < 900
//           ? AppBar(
//               leading: IconButton(
//                 onPressed: () {
//                   scaffoldKey.currentState!.openDrawer();
//                 },
//                 icon: Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                 ),
//               ),
//               backgroundColor: Colors.black,
//             )
//           : null,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: HomeViewBody(),
//       ),
//     );
//   }
// }
