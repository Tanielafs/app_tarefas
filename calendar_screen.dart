// lib/calendar_screen.dart
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'task_model.dart'; // Importa o modelo de dados

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  final TextEditingController _taskController = TextEditingController();
  List<Task> _tasks = [];

  // Ordenação: pendentes primeiro, concluídas por último
  List<Task> get _sortedTasks {
    List<Task> sortedList = List.from(_tasks);
    sortedList.sort((a, b) {
      if (a.isCompleted && !b.isCompleted) return 1;
      if (!a.isCompleted && b.isCompleted) return -1;
      return 0;
    });
    return sortedList;
  }

  void _addTask() {
    if (_taskController.text.isNotEmpty) {
      setState(() {
        _tasks.add(Task(title: _taskController.text));
        _taskController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACQA Task Planner'),
      ),
      body: Column(
        children: [
          TableCalendar(
            locale: 'pt_BR',
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarFormat: CalendarFormat.week,
          ),
          const SizedBox(height: 10),

          // Campo para adicionar nova tarefa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: const InputDecoration(
                      labelText: 'Nova Tarefa',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle, color: Color(0xFFE94560)),
                  onPressed: _addTask,
                ),
              ],
            ),
          ),

          // Lista de tarefas
          Expanded(
            child: ListView.builder(
              itemCount: _sortedTasks.length,
              itemBuilder: (context, index) {
                final task = _sortedTasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isCompleted
                          ? TextDecoration.lineThrough
                          : null,
                      color: task.isCompleted ? Colors.grey : Colors.white,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      task.isCompleted
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: task.isCompleted ? Colors.green : Colors.yellow,
                    ),
                    onPressed: () {
                      setState(() {
                        task.isCompleted = !task.isCompleted;
                      });
                    },
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
