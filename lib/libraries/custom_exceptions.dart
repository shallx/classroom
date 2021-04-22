class NoDataException {
  String message = "Returned with No data";
  
  @override
  String toString() {
    return message;
  }
}

class CustomException {
  String message = "Some error occured";

  CustomException(this.message);

  @override
  String toString() {
    return message;
  }

}
