 
// web/dartling/form/dartling_form_web.dart 
 
import "dart:html"; 
 
import "package:dartling/dartling.dart"; 
import "package:dartling/dartling_app.dart"; 
 
import "package:dartling_form/dartling_form.dart"; 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingFormEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingFormModelCode); 
   initDartlingForm(dartlingFormEntries); 
   dartlingFormEntries.display(); 
   dartlingFormEntries.displayJson(); 
} 
 
showDartlingData(DartlingRepo dartlingRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = dartlingRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
  showDartlingData(dartlingRepo); 
} 
 
