import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Clase Empleado
class Empleado {
  String idEmpleado;
  String nombre;
  String direccion;
  String telefono;
  String fechaNacimiento;
  String fechaIngreso;

  Empleado({
    required this.idEmpleado,
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.fechaNacimiento,
    required this.fechaIngreso,
  });
}

// Aplicación principal
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nancy Lara Baca 1225'),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 25),
          backgroundColor: Color(0xff294a64),
        ),
        body: EmpleadosList(),
      ),
    );
  }
}

// Widget que muestra la lista de empleados
class EmpleadosList extends StatelessWidget {
  // Lista de empleados
  final List<Empleado> empleados = [
    Empleado(
      idEmpleado: '001',
      nombre: 'Juan Pérez',
      direccion: 'Calle Falsa 123',
      telefono: '555-1234',
      fechaNacimiento: '1990-05-15',
      fechaIngreso: '2015-03-01',
    ),
    Empleado(
      idEmpleado: '002',
      nombre: 'Ana Gómez',
      direccion: 'Avenida Siempre Viva 456',
      telefono: '555-5678',
      fechaNacimiento: '1985-10-22',
      fechaIngreso: '2018-07-15',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: empleados.map((empleado) {
        return Container(
          margin: EdgeInsets.all(50), // Margen exterior
          padding: EdgeInsets.all(5), // Espacio interno
          decoration: BoxDecoration(
            color: empleado.idEmpleado == '001'
                ? Colors.blue[100]
                : Colors.green[100], // Color diferente para cada empleado
            borderRadius: BorderRadius.circular(10), // Bordes redondeados
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Sombra
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID: ${empleado.idEmpleado}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18), // Texto en negrita y más grande
              ),
              Text(
                'Nombre: ${empleado.nombre}',
                style: TextStyle(fontSize: 16), // Texto más grande
              ),
              Text(
                'Dirección: ${empleado.direccion}',
                style: TextStyle(fontSize: 16), // Texto más grande
              ),
              Text(
                'Teléfono: ${empleado.telefono}',
                style: TextStyle(fontSize: 16), // Texto más grande
              ),
              Text(
                'Fecha de Nacimiento: ${empleado.fechaNacimiento}',
                style: TextStyle(fontSize: 16), // Texto más grande
              ),
              Text(
                'Fecha de Ingreso: ${empleado.fechaIngreso}',
                style: TextStyle(fontSize: 16), // Texto más grande
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
