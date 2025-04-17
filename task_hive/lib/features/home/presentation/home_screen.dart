import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:task_hive/features/home/presentation/widgets/priority_task_card.dart';
import 'package:task_hive/features/home/presentation/widgets/upcoming_delivery_card.dart';

import '../domain/entity/project_info.dart';
// import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Sample delivery task data
  final List<ProjectData> _deliveryTasks = [
    ProjectData(
        title: 'Package #1452',
        address: '123 Main Street, Apt 4B',
        date: DateTime.now().add(const Duration(days: 1)),
        status: 'In Transit',
        assignee: ['Tahsin', 'Mamun', 'Rafi'],
        bgColor: Colors.deepPurple,
        priority: 'High',
      percentage: 50

    ),
    ProjectData(
        title: 'Package #2378',
        address: '456 Oak Avenue',
        date: DateTime.now().add(const Duration(days: 2)),
        status: 'Processing',
        assignee: ['Tahsin', 'Mamun', 'Rafi'],
        bgColor: Colors.blue,
        priority: 'Low',
        percentage: 30,
    ),
    ProjectData(
      title: 'Package #3912',
      address: '789 Pine Road',
      date: DateTime.now().add(const Duration(days: 3)),
      status: 'Scheduled',
      assignee: ['Tahsin','Mamun','Rafi'],
      bgColor: Colors.deepOrange,
      priority: 'Medium',
      percentage: 60

    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final formattedDate = _formatDate(now);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date and notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formattedDate,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 24,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Welcome message
              const Text(
                'Welcome Phillip',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Have a nice day!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              // Priority tasks section
              const Text(
                'My Priority Task',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              // Priority task cards
              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    priorityTaskCard(
                      color: Colors.blue,
                      icon: Icons.design_services,
                      title: 'UI Design',
                      days: 10,
                      progress: 0.8,
                    ),
                    priorityTaskCard(
                      color: Colors.deepPurple,
                      icon: Icons.code,
                      title: 'Laravel Task',
                      days: 20,
                      progress: 0.3,
                    ),
                    priorityTaskCard(
                      color: Colors.red,
                      icon: Icons.image,
                      title: 'Edit Pictures',
                      days: 5,
                      progress: 0.6,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Delivery tasks section
              const Text(
                'Upcoming Deliveries',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              // Delivery task cards - Scrollable
              Expanded(
                child: ListView.builder(
                  itemCount: _deliveryTasks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        UpcomingDeliveryCard(
                            taskName: _deliveryTasks[index].title,
                            // timeRange: _deliveryTasks[index].date.toString(),
                            dueDate: _deliveryTasks[index].date.toString(),
                            progressPercentage: _deliveryTasks[index].percentage,
                            assignees:_deliveryTasks[index].assignee,
                          bgColor: _deliveryTasks[index].bgColor,
                          priority: _deliveryTasks[index].priority,
                        ),
                        const SizedBox(height: 12),
                      ],
                    );
                    // return _buildDeliveryTaskCard(_deliveryTasks[index]);
                  },
                ),

              ),
            ],
          ),
        ),
      )
    );
  }
}

String _formatDate(DateTime date) {
  final List<String> weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];

  final weekday = weekdays[date.weekday - 1]; // weekday is 1-7
  final month = months[date.month - 1]; // month is 1-12

  return '$weekday, $month ${date.day} ${date.year}';
}

// Model class for Delivery Tasks
