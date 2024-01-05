import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DateTime> obtenerFechasDePago(
  int daysDifference,
  int numberOfPayments,
) {
  // Devuelve una lista de fechas a partir de la actual, con intervalos definidos y cantidad deseada
  List<DateTime> datesList = [];
  DateTime currentDate = DateTime.now();
  datesList.add(currentDate);
  for (int i = 1; i < numberOfPayments; i++) {
    currentDate = currentDate.add(Duration(days: daysDifference));
    datesList.add(currentDate);
  }
  return datesList;
}

double montoDeCuotas(
  double montoDeVenta,
  int cantidadDeCuotas,
) {
  // returns the division of SalesAmount by InstallmentQuantity
  //return (montoDeVenta / 2) / cantidadDeCuotas;

  double montoPorCuota = (montoDeVenta / 2) / cantidadDeCuotas;
  return double.parse(montoPorCuota.toStringAsFixed(2));
}

double montoInicial(double montoDeVenta) {
  return (montoDeVenta / 2);
}

int calculaNroCuota(int cantidadRestar) {
  // subtract -1 from a value given by cantidadRestar
  return cantidadRestar - 1;
}
