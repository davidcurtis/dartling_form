 
// test/dartling/form/dartling_form_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:dartling_form/dartling_form.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  // change "Dartling" to "YourDomainName" 
  var dartlingDomain = new Domain("Dartling"); 
 
  // change dartling to yourDomainName 
  // change Skeleton to YourModelName 
  // change "Skeleton" to "YourModelName" 
  Model dartlingFormModel = 
      fromMagicBoxes(dartlingFormModelJson, dartlingDomain, "Form"); 
 
  repo.domains.add(dartlingDomain); 
 
  repo.gen("dartling_form"); 
} 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingFormEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingFormModelCode); 
   initDartlingForm(dartlingFormEntries); 
   dartlingFormEntries.display(); 
   dartlingFormEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
} 
 
