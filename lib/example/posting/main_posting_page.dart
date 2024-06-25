import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

import 'posting_1_page.dart';

class MainPostingPage extends StatefulWidget {
  const MainPostingPage({super.key});

  @override
  State<MainPostingPage> createState() => _MainComponentPageState();
}

class _MainComponentPageState extends State<MainPostingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Posting', style: AppTypography.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Posting1Page(
                      imageLenght: 4,
                      title: 'Sample Posting Lebih Dari 4 gambar',
                    ),
                  ),
                );
              },
              child: const Text('Sample Posting Lebih Dari 4 gambar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Posting1Page(
                      imageLenght: 3,
                      title: 'Sample Posting 3 Gambar',
                    ),
                  ),
                );
              },
              child: const Text('Sample Posting 3 Gambar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Posting1Page(
                      imageLenght: 2,
                      title: 'Sample Posting 2 Gambar',
                    ),
                  ),
                );
              },
              child: const Text('Sample Posting 2 Gambar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Posting1Page(
                      imageLenght: 1,
                      title: 'Sample Posting 1 Gambar',
                    ),
                  ),
                );
              },
              child: const Text('Sample Posting Satu Gambar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Posting1Page(
                      imageLenght: 0,
                      title: 'Sample Posting Tanpa Gambar',
                    ),
                  ),
                );
              },
              child: const Text('Sample Posting Tanpa Gambar'),
            ),
          ],
        ),
      ),
    );
  }
}
