import 'package:flutter/material.dart';
import '../models/book.dart';
import '../screens/book_details_page.dart';
import '../widgets/book_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final books = [
      Book(
          coverImagePath: 'assets/images/Sea_monsters.jpg',
          title: 'Sea monsters ',
          author: 'Herman Melville',
          price: 1250,
          desc:
          "The Sea of Monsters is an American fantasy-adventure novel based on Greek mythology written by Rick Riordan and published in 2006. It is the second novel in the Percy Jackson & the Olympians series and the sequel to The Lightning Thief. This book chronicles the adventures of thirteen-year-old demigod Percy Jackson as he and his friends rescue his satyr friend Grover from the Cyclops Polyphemus and save Camp Half-Blood from a Titan's attack by bringing the Golden Fleece to cure Thalia's poisoned pine tree."),
      Book(
        coverImagePath: 'assets/images/Harry_Potter_Two.jpg',
        title: 'Harry Potter',
        author: 'J. R. R.Tolkien',
        price: 950,
        desc: "In 1881, Doctor John Watson returns to London after serving in the Second Anglo-Afghan War and starts looking for a place to live. An old friend tells him that Sherlock Holmes is looking for someone to split the rent at a flat at 221B Baker Street but cautions Watson about Holmes's eccentricities. Holmes and Watson meet and, after assessing each other and the rooms, they move in."
      ),
      Book(
        coverImagePath: 'assets/images/lightning_thief.jpg',
        title: 'Lightning Thief',
        author: 'Arthur Conan Doyle',
        price: 800,
        desc: "The Sea of Monsters is an American fantasy-adventure novel based on Greek mythology written by Rick Riordan and published in 2006. It is the second novel in the Percy Jackson & the Olympians series and the sequel to The Lightning Thief. This book chronicles the adventures of thirteen-year-old demigod Percy Jackson as he and his friends rescue his satyr friend Grover from the Cyclops Polyphemus and save Camp Half-Blood from a Titan's attack by bringing the Golden Fleece to cure Thalia's poisoned pine tree."
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookstore', style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(book: book),
                ),
              );
            },
            child: BookCard(book: book),
          );
        },
      ),
    );
  }
}
