class StatusCode {

  static message(int? code) {
    Map<int, String> statusCodes = {
      200: 'Success',
      201: 'Data Created/Updated Successfully',
      404: '404 Page not found',
      500 : 'Internal Server Error'
    };

    return statusCodes[code];
  }
}
