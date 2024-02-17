import 'package:flutter/material.dart';
import 'package:proj6_favoriteplaces/map.dart';
import 'package:proj6_favoriteplaces/places.dart';

// Displaying a Particular List Details
class PlaceDetailsScreen extends StatelessWidget {
  const PlaceDetailsScreen({super.key, required this.place});
  final Place place;
  String get locationImage {
    final lat = place.location.latitude;
    final lng = place.location.longitude;
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$lat,$lng&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C40.$lat,$lng&key=AIzaSyDLcwxUggpPZo81cbH0TB4Crq5SJjtj4ag';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: Column(
        //   children: [
        //     Hero(
        //       tag: place.id,
        //       child: Image(
        //         image: FileImage(place.image),
        //       ),
        //     ),
        //     Text(
        //       place.title,
        //       style:
        //           TextStyle(color: Theme.of(context).colorScheme.onBackground),
        //     ),
        //   ],
        // ),
        child: Stack(
          children: [
            Hero(
              tag: place.id,
              child: Image.file(
                place.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Positioned(
            //     bottom: 0,
            //     left: 0,
            //     right: 0,
            //     child: Column(
            //       children: [
            //         GestureDetector(
            //           onTap: () {
            //             Navigator.of(context).push(MaterialPageRoute(
            //               builder: (context) => MapScreen(
            //                 location: place.location,
            //                 isSelecting: false,
            //               ),
            //             ));
            //           },
            //           child: CircleAvatar(
            //             radius: 70,
            //             backgroundImage: NetworkImage(locationImage),
            //           ),
            //         ),
            //         Container(
            //           padding: const EdgeInsets.symmetric(
            //             horizontal: 24,
            //             vertical: 16,
            //           ),
            //           alignment: Alignment.center,
            //           decoration: const BoxDecoration(
            //             gradient: LinearGradient(
            //                 colors: [Colors.transparent, Colors.black54],
            //                 begin: Alignment.topCenter,
            //                 end: Alignment.bottomCenter),
            //           ),
            //           child: Text(
            //             place.location.address,
            //             textAlign: TextAlign.center,
            //             style: Theme.of(context).textTheme.titleLarge!.copyWith(
            //                 color: Theme.of(context).colorScheme.onBackground),
            //           ),
            //         )
            //       ],
            //     ))
          ],
        ),
      ),
    );
  }
}
