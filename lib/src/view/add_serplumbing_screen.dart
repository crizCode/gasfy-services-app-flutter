import 'package:flutter/material.dart';
import '../model/district.dart';
import '../model/person.dart';
import '../model/specialization.dart';
import '../widgets/custom_button_main.dart';
import '../widgets/custom_text_field_add.dart';

class AddSerPlumbingScreen extends StatefulWidget {
  const AddSerPlumbingScreen({Key? key}) : super(key: key);

  @override
  _AddSerPlumbingScreenState createState() => _AddSerPlumbingScreenState();
}

class _AddSerPlumbingScreenState extends State<AddSerPlumbingScreen> {
  late List<District> _districtList;
  late List<Specialization> _specializationList;

  District? _selectedDistrict;
  Specialization? _selectedSpecialization;
  Person? _selectedPlumber;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Obtener datos de la base de datos
    _districtList = [];
    _specializationList = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nuevo servicio de plomería',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextFieldAdd(
                labelText: 'Nombre del servicio',
                controller: _nameController,
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<District>(
                value: _selectedDistrict,
                items: _districtList.map((District district) {
                  return DropdownMenuItem<District>(
                    value: district,
                    child: Text(district.name),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedDistrict = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Distrito',
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<Specialization>(
                value: _selectedSpecialization,
                items: _specializationList.map((Specialization specialization) {
                  return DropdownMenuItem<Specialization>(
                    value: specialization,
                    child: Text(specialization.name),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedSpecialization = newValue;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Especialidad',
                ),
              ),
              const SizedBox(height: 20.0),
              CustomTextFieldAdd(
                labelText: 'Precio',
                controller: _priceController,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20.0),
              CustomTextFieldAdd(
                labelText: 'Fecha disponible',
                controller: _dateController,
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 20.0),
              CustomButtonMain(
                buttonText: 'Crear servicio',
                onPressed: () {
                  // Validar los campos
                  if (_selectedDistrict == null ||
                      _selectedSpecialization == null ||
                      _selectedPlumber == null ||
                      _nameController.text.isEmpty ||
                      _priceController.text.isEmpty ||
                      _dateController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Por favor complete todos los campos.'),
                      ),
                    );
                  } else {
                    // Guardar los datos en la base de datos
                    // ...
                    // Mostrar mensaje de éxito y regresar a la pantalla anterior
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('El servicio ha sido creado exitosamente.'),
                      ),
                    );
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
