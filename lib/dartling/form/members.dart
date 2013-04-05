part of dartling_form; 
 
// lib/dartling/form/members.dart 
 
class Member extends MemberGen { 
 
  Member(Concept concept) : super(concept); 
 
  Member.withId(Concept concept, String firstname) : 
    super.withId(concept, firstname); 
 
} 
 
class Members extends MembersGen { 
 
  Members(Concept concept) : super(concept); 
 
} 
 
