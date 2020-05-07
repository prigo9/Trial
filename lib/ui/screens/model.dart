class Question{
  final String question;
  final List<dynamic> options;
  Question({ this.question,this.options});
  Question.fromMap(Map<String, dynamic> data):
        question=data["question"],
        options=data["data"];


}




