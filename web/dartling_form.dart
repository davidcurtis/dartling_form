import 'package:dartling_form/dartling_form.dart';
import 'package:dartling/dartling.dart';
import 'dart:html';
import 'dart:async';

void main() {

  var davidCurtis = new Member(memberConcept);
  davidCurtis.code = 'davidCurtis';
  davidCurtis.firstname = 'david';
  davidCurtis.address ='1308 Noirefontaine';
  davidCurtis.lastname = 'Curtis';
  
  members.add(davidCurtis);
  
  var jeanTigana = new Member(memberConcept);
  jeanTigana.code = 'jeanTigana';
  jeanTigana.firstname = 'Jean';
  members.add(jeanTigana);
  
  var rafikBenmoussa = new Member(memberConcept);
  rafikBenmoussa.firstname = 'Rafik';
  rafikBenmoussa.lastname = 'Benmoussa';
  members.add(rafikBenmoussa);
  
  var timurRidjanovic = new Member(memberConcept);
  timurRidjanovic.firstname = 'Timur';
  timurRidjanovic.lastname = 'Ridjanovic';
  members.add(timurRidjanovic);
  
  var dzenanRidjanovic = new Member(memberConcept);
  dzenanRidjanovic.firstname = 'Dzenan';
  dzenanRidjanovic.lastname = 'Ridjanovic';
  members.add(dzenanRidjanovic);
  
  var lamineBazzi = new Member(memberConcept);
  lamineBazzi.firstname = 'Lamine';
  lamineBazzi.lastname = 'Baazi';
  members.add(lamineBazzi);


}



