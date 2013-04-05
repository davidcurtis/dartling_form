part of dartling_form; 
 
// lib/gen/dartling/form/members.dart 
 
abstract class MemberGen extends ConceptEntity<Member> { 
 
  MemberGen(Concept concept) : super.of(concept); 
 
  MemberGen.withId(Concept concept, String firstname) : super.of(concept) { 
    setAttribute("firstname", firstname); 
  } 
 
  String get firstname => getAttribute("firstname"); 
  set firstname(String a) => setAttribute("firstname", a); 
  
  String get lastname => getAttribute("lastname"); 
  set lastname(String a) => setAttribute("lastname", a); 
  
  String get address => getAttribute("address"); 
  set address(String a) => setAttribute("address", a); 
  
  String get telNumber => getAttribute("telNumber"); 
  set telNumber(String a) => setAttribute("telNumber", a); 
  
  Member newEntity() => new Member(concept); 
  Members newEntities() => new Members(concept); 
  
  int firstnameCompareTo(Member other) { 
    return firstname.compareTo(other.firstname); 
  } 
 
} 
 
abstract class MembersGen extends Entities<Member> { 
 
  MembersGen(Concept concept) : super.of(concept); 
 
  Members newEntities() => new Members(concept); 
  Member newEntity() => new Member(concept); 
  
} 
 
