import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  final double? result;

  const Output({super.key, this.result});

  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  Color getBmiColor() {
    if (widget.result! >= 35) {
      return Colors.red;
    } else if (widget.result! >= 30) {
      return Colors.orange;
    } else if (widget.result! >= 25) {
      return Colors.yellow;
    } else if (widget.result! >= 18.5) {
      return Colors.lightGreen;
    }else if (widget.result! >= 17) {
      return Colors.green;
    }
    else {
      return Colors.blue;
    }
  }

  String getBmiCategory() {
    if (widget.result! >= 35) {
      return 'EXTREMELY OBESE';
    } else if (widget.result! >= 30) {
      return 'OBESE';
    } else if (widget.result! >= 25) {
      return 'OVERWEIGHT';
    } else if (widget.result! >= 18.5) {
      return 'NORMAL';
    } else if (widget.result! >= 17) {
      return 'UNDERWEIGHT';
    } else {
      return 'SEVERELY UNDERWEIGHT';
    }
  }

  @override
  Widget build(BuildContext context) {
    Color bmiColor = getBmiColor();
    String bmiCategory = getBmiCategory();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Result',
                style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      bmiCategory,
                      style: TextStyle(color: bmiColor, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 90),
                    Text(
                      widget.result != null ? widget.result!.toStringAsFixed(1) : 'N/A',
                      style: const TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 50),
                    // Removed `const` from this Text widget
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'You have a ${bmiCategory.toLowerCase()} body weight.',
                        style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 75,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Re-Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}