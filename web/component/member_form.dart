import 'dart:html';
import 'package:web_ui/web_ui.dart';
import'package:dartling_form/dartling_form.dart';


class MemberForm extends WebComponent {
  Members members;

  add() {
    InputElement firstname = query("#firstName");
    InputElement lastname = query("#lastName");
    InputElement address = query("#address");
    LabelElement message = query("#message");
    
    var error = false;
    message.text = '';
    if (firstname.value.trim() == '') {
      message.text = 'first name is mandatory; ${message.text}';
      error = true;
    }
    if (lastname.value.trim() == '') {
      message.text = 'last name is mandatory; ${message.text}';
      error = true;
    }
    if (address.value.trim() == '') {
      message.text = 'last name is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      
      var member = new Member(memberConcept);
      member.lastname = lastname.value;
      member.firstname = firstname.value;
      member.address = address.value;
      
      if (members.add(member)) {
        message.text = 'added';
      } else {
        message.text = 'code already in use';
      }
    }
  }

}





