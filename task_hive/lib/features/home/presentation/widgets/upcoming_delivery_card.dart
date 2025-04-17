import 'package:flutter/material.dart';

class UpcomingDeliveryCard extends StatelessWidget {
  final String taskName;
  final String timeRange;
  final String dueDate;
  final int progressPercentage;
  final List<String> assignees;
  final Color bgColor;
  final String priority;

  const UpcomingDeliveryCard({
    super.key,
    this.taskName = 'Untitled Task',
    this.timeRange = '9:00 AM - 5:00 PM',
    this.dueDate = 'N/A',
    this.progressPercentage = 0,
    this.assignees = const [],
    this.bgColor=Colors.transparent,
    this.priority = 'High'
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 350),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color:  bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            style: BorderStyle.solid,
            color: Colors.blue,
            width: 2.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top row with priority tag and completion percentage
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // High priority tag
              Container(
                padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                  color: getPriorityColor(priority),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  priority,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

              // Completion percentage
              Text(
                '$progressPercentage%',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Task name
          Text(
            taskName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          // Time range with icon
          Row(
            children: [
              const Icon(
                Icons.access_time,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                timeRange,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Due date and assignees
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Due date
              RichText(
                text: TextSpan(
                  text: 'Due Date: ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: dueDate,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}

Color getPriorityColor(String priority) {
  switch (priority.toLowerCase()) {
    case 'high':
      return Colors.red.shade600;
    case 'medium':
      return Colors.orange.shade600;
    case 'low':
      return Colors.green.shade600;
    default:
      return Colors.grey.shade600;
  }
}
