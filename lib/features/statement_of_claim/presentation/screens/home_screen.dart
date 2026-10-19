import 'package:flutter/material.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF17365D),
        foregroundColor: Colors.white,
        title: const Text('Smart Legal Assistant'),
        leading: const Icon(Icons.gavel_rounded),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.account_balance_rounded,
                  size: 70,
                  color: Color(0xFF17365D),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Welcome to your Virtual Law Office',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF17365D),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Prepare case information and create a '
                  'Statement of Claim draft with assistance '
                  'from your legal AI assistant.',
                  style: TextStyle(fontSize: 16, height: 1.6),
                ),
                const SizedBox(height: 32),
                Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.description_outlined,
                          size: 38,
                          color: Color(0xFF17365D),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Statement of Claim Generation',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Describe a case, review the important '
                          'details, and we willprepare an editable draft!.',
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Great! The case assistant '
                                    'is our next step.',
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.chat_outlined),
                            label: const Text(
                              'Start New Case',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'AI-generated drafts must be reviewed '
                    'by a qualified lawyer.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
