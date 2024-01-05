import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _buscando = false;
  bool get buscando => _buscando;
  set buscando(bool _value) {
    _buscando = _value;
  }

  List<DateTime> _fechaDespues = [
    DateTime.fromMillisecondsSinceEpoch(1701725409375)
  ];
  List<DateTime> get fechaDespues => _fechaDespues;
  set fechaDespues(List<DateTime> _value) {
    _fechaDespues = _value;
  }

  void addToFechaDespues(DateTime _value) {
    _fechaDespues.add(_value);
  }

  void removeFromFechaDespues(DateTime _value) {
    _fechaDespues.remove(_value);
  }

  void removeAtIndexFromFechaDespues(int _index) {
    _fechaDespues.removeAt(_index);
  }

  void updateFechaDespuesAtIndex(
    int _index,
    DateTime Function(DateTime) updateFn,
  ) {
    _fechaDespues[_index] = updateFn(_fechaDespues[_index]);
  }

  void insertAtIndexInFechaDespues(int _index, DateTime _value) {
    _fechaDespues.insert(_index, _value);
  }

  String _estadolocal = '';
  String get estadolocal => _estadolocal;
  set estadolocal(String _value) {
    _estadolocal = _value;
  }

  String _fechaActual = '';
  String get fechaActual => _fechaActual;
  set fechaActual(String _value) {
    _fechaActual = _value;
  }

  double _montodelaInicial = 0.0;
  double get montodelaInicial => _montodelaInicial;
  set montodelaInicial(double _value) {
    _montodelaInicial = _value;
  }

  List<DateTime> _llenarListaConFechas = [];
  List<DateTime> get llenarListaConFechas => _llenarListaConFechas;
  set llenarListaConFechas(List<DateTime> _value) {
    _llenarListaConFechas = _value;
  }

  void addToLlenarListaConFechas(DateTime _value) {
    _llenarListaConFechas.add(_value);
  }

  void removeFromLlenarListaConFechas(DateTime _value) {
    _llenarListaConFechas.remove(_value);
  }

  void removeAtIndexFromLlenarListaConFechas(int _index) {
    _llenarListaConFechas.removeAt(_index);
  }

  void updateLlenarListaConFechasAtIndex(
    int _index,
    DateTime Function(DateTime) updateFn,
  ) {
    _llenarListaConFechas[_index] = updateFn(_llenarListaConFechas[_index]);
  }

  void insertAtIndexInLlenarListaConFechas(int _index, DateTime _value) {
    _llenarListaConFechas.insert(_index, _value);
  }

  List<int> _numeroDeCuota = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24
  ];
  List<int> get numeroDeCuota => _numeroDeCuota;
  set numeroDeCuota(List<int> _value) {
    _numeroDeCuota = _value;
  }

  void addToNumeroDeCuota(int _value) {
    _numeroDeCuota.add(_value);
  }

  void removeFromNumeroDeCuota(int _value) {
    _numeroDeCuota.remove(_value);
  }

  void removeAtIndexFromNumeroDeCuota(int _index) {
    _numeroDeCuota.removeAt(_index);
  }

  void updateNumeroDeCuotaAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _numeroDeCuota[_index] = updateFn(_numeroDeCuota[_index]);
  }

  void insertAtIndexInNumeroDeCuota(int _index, int _value) {
    _numeroDeCuota.insert(_index, _value);
  }

  List<LatLng> _ubicaDonde = [];
  List<LatLng> get ubicaDonde => _ubicaDonde;
  set ubicaDonde(List<LatLng> _value) {
    _ubicaDonde = _value;
  }

  void addToUbicaDonde(LatLng _value) {
    _ubicaDonde.add(_value);
  }

  void removeFromUbicaDonde(LatLng _value) {
    _ubicaDonde.remove(_value);
  }

  void removeAtIndexFromUbicaDonde(int _index) {
    _ubicaDonde.removeAt(_index);
  }

  void updateUbicaDondeAtIndex(
    int _index,
    LatLng Function(LatLng) updateFn,
  ) {
    _ubicaDonde[_index] = updateFn(_ubicaDonde[_index]);
  }

  void insertAtIndexInUbicaDonde(int _index, LatLng _value) {
    _ubicaDonde.insert(_index, _value);
  }

  List<String> _ubicaDondeTiempo = [];
  List<String> get ubicaDondeTiempo => _ubicaDondeTiempo;
  set ubicaDondeTiempo(List<String> _value) {
    _ubicaDondeTiempo = _value;
  }

  void addToUbicaDondeTiempo(String _value) {
    _ubicaDondeTiempo.add(_value);
  }

  void removeFromUbicaDondeTiempo(String _value) {
    _ubicaDondeTiempo.remove(_value);
  }

  void removeAtIndexFromUbicaDondeTiempo(int _index) {
    _ubicaDondeTiempo.removeAt(_index);
  }

  void updateUbicaDondeTiempoAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ubicaDondeTiempo[_index] = updateFn(_ubicaDondeTiempo[_index]);
  }

  void insertAtIndexInUbicaDondeTiempo(int _index, String _value) {
    _ubicaDondeTiempo.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
