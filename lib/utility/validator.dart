String validateEmail(String value){
  String _msg = '';
  RegExp regex = new RegExp((r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"));
  if(value.isEmpty){
    _msg = "Your user name is needed";
  }
  else if(!regex.hasMatch(value)){
    _msg = "Enter a valid Email";
  }
  return _msg;
}