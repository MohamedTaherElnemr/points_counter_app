import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter_app/cubit/counter_cubit.dart';
import 'package:points_counter_app/cubit/counter_state.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 1);
                              },
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 2);
                              },
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'A', buttonNumber: 3);
                              },
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                      ]),
                    ),
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 1);
                              },
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 2);
                              },
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncreament(team: 'B', buttonNumber: 3);
                              },
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: Size(150, 50),
                              )),
                        ),
                      ]),
                    )
                  ],
                ),
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 8),
                  child: ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).teamAPoints = 0;
                        BlocProvider.of<CounterCubit>(context).teamBPoints = 0;
                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      )),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
