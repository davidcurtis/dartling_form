part of dartling_form; 
 
// lib/gen/dartling/form/entries.dart 
 
class FormEntries extends ModelEntries { 
 
  FormEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.findByCode("Member"); 
    entries["Member"] = new Members(concept); 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Member") { 
      return new Members(concept); 
    } 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.findByCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Member") { 
      return new Member(concept); 
    } 
  } 
 
  fromJsonToData() { 
    fromJson(dartlingFormDataJson); 
  } 
 
  Members get members => getEntry("Member"); 
 
} 
 
