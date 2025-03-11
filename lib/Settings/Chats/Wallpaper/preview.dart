import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Preview extends StatefulWidget {
  const Preview({super.key});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  double _sliderValue = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
        elevation: 2,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Slider(
                value: _sliderValue,
                min: 0.0,
                max: 1.0,
                divisions: 10,
                label: _sliderValue.toStringAsFixed(1),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),

              Text(
                'Current Value: ${_sliderValue.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}