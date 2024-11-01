import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isolates/computation_event.dart';
import 'package:isolates/computation_state.dart';

import 'computation_bloc.dart';

class ComputeScreen extends StatelessWidget {
  const ComputeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isolates'),
      ),
      body: BlocBuilder<ComputationBloc, ComputationState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                if (state is Initial) ...[
                  const Text("Choose a computation to start"),
                ] else if (state is Loading) ...[
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text("Calculating ${state.taskName}..."),
                ] else if (state is Loaded) ...[
                  Text("${state.taskName} Result: ${state.result}"),
                ] else if (state is Error) ...[
                  Text("Error in ${state.taskName}: ${state.errorMessage}"),
                ],
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<ComputationBloc>().add(const StartFactorial());
                  },
                  child: const Text("Calculate Factorial"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<ComputationBloc>().add(const StartPrimeCheck());
                  },
                  child: const Text("Check Prime Numbers"),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<ComputationBloc>().add(const StartFibonacci());
                  },
                  child: const Text("Calculate Fibonacci Sum"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
