import 'package:flutter/material.dart';
import 'package:mrizkyn_uts/detail_page.dart';
import 'package:mrizkyn_uts/criminal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Criminal> listCriminal = Criminal.dummyData;
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  "List Kriminal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listCriminal.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPages(criminal: listCriminal[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 164, 135, 135),
                          offset: Offset(1, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage(listCriminal[index].gambar),
                            width: 50,
                            height: 50,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Menengahkan teks secara vertikal
                            children: [
                              Text(
                                listCriminal[index].nama,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(listCriminal[index].kejahatan),
                              Text(listCriminal[index].hukuman),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
