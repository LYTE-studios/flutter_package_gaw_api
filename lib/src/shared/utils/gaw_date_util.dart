class GawDateUtil {
  static DateTime fromApi(int dateTime) {
    return DateTime.fromMillisecondsSinceEpoch(dateTime);
  }

  static String formatDate(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}';
  }

  static String formatTimeInterval(DateTime startTime, DateTime endTime) {
    return '${startTime.hour}:${startTime.minute} - ${endTime.hour}:${endTime.minute}';
  }

  static formatDateInterval(DateTime? startDate, DateTime? endDate) {
    if (startDate == null && endDate == null) {
      return 'Anytime';
    }
    return '${startDate == null ? '...' : GawDateUtil.formatDate(startDate)} - ${endDate == null ? '...' : GawDateUtil.formatDate(endDate)}';
  }
}
