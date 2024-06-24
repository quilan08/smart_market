import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_market/widgets/custom_paint.dart';
import 'package:smart_market/widgets/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isHoveringFood = false;
  bool _isHoveringFishes = false;
  bool _isHoveringFruits = false;

  // Define a common text style for normal, hover, and click states
  final TextStyle _normalStyle = TextStyle(color: Colors.white, fontSize: 16);
  final TextStyle _hoverStyle =
      TextStyle(color: const Color.fromARGB(103, 98, 125, 174), fontSize: 18);
  final TextStyle _clickedStyle =
      TextStyle(color: const Color.fromARGB(255, 192, 192, 192), fontSize: 18);

  // Track which item is clicked
  String _clickedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 220.0), // Add padding to avoid overlap
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 34, vertical: 50),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 12, 19, 80), // Start color
                            Color.fromARGB(255, 35, 5, 59), // End color
                          ],
                          begin: Alignment
                              .topLeft, // Gradient starts from top-left corner
                          end: Alignment
                              .bottomRight, // Gradient ends at bottom-right corner
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Food Items Text
                            MouseRegion(
                              onEnter: (_) =>
                                  setState(() => _isHoveringFood = true),
                              onExit: (_) =>
                                  setState(() => _isHoveringFood = false),
                              child: InkWell(
                                onTap: () {
                                  setState(() => _clickedItem = 'Food');
                                  print("Food Items Clicked");
                                },
                                child: Text(
                                  "Food Items",
                                  style: _clickedItem == 'Food'
                                      ? _clickedStyle
                                      : _isHoveringFood
                                          ? _hoverStyle
                                          : _normalStyle,
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            // Fishes Text
                            MouseRegion(
                              onEnter: (_) =>
                                  setState(() => _isHoveringFishes = true),
                              onExit: (_) =>
                                  setState(() => _isHoveringFishes = false),
                              child: InkWell(
                                onTap: () {
                                  setState(() => _clickedItem = 'Fishes');
                                  print("Fishes Clicked");
                                },
                                child: Text(
                                  "Fishes",
                                  style: _clickedItem == 'Fishes'
                                      ? _clickedStyle
                                      : _isHoveringFishes
                                          ? _hoverStyle
                                          : _normalStyle,
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            // Fruits Text
                            MouseRegion(
                              onEnter: (_) =>
                                  setState(() => _isHoveringFruits = true),
                              onExit: (_) =>
                                  setState(() => _isHoveringFruits = false),
                              child: InkWell(
                                onTap: () {
                                  setState(() => _clickedItem = 'Fruits');
                                  print("Fruits Clicked");
                                },
                                child: Text(
                                  "Fruits",
                                  style: _clickedItem == 'Fruits'
                                      ? _clickedStyle
                                      : _isHoveringFruits
                                          ? _hoverStyle
                                          : _normalStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25.0, left: 18.0, top: 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("All Chats",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black)),
                            InkWell(
                                onTap: () => {print("Documents")},
                                child: const Icon(Icons.menu_open))
                          ],
                        ),
                        const SizedBox(height: 2),
                        // Example chat row
                       // for (int i = 0; i < 10; i++) // Repeat the row 10 times
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Avatar
                                ClipOval(
                                  child: Image.asset(
                                    "assets/images/icon.jpeg",
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                // Middle Column for Name and Last Message
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "John Jones",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Hello how are you doing?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10),
                                // Right Column for Time and Message Count
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "9:15pm",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2, horizontal: 6),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Fixed CustomPaint and Search Bar at the top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // CustomPaint

                // Row of Icons as App Ba
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.2),
                  painter: CustomPaintx(),
                ),
                // Search Bar

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(top: 50.0, right: 16, left: 16),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu_outlined,
                        color: Colors.white, size: 30),
                    Text(
                      "Smart Market",
                      style: Styles.headLine1.copyWith(color: Colors.white54),
                    ),
                    const Icon(Icons.shopping_cart_checkout_outlined,
                        color: Colors.white, size: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
