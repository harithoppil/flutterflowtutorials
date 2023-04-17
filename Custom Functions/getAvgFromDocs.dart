// code created by https://www.youtube.com/@flutterflowexpert
// video - no
// if you have problem implementing this code you can hire me as a mentor - https://calendly.com/bulgaria_mitko

double? averageReviewRating(List<ReviewsRecord>? reviews) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // get the average review rating from the list of Reviews of the coachModel
  if (reviews == null || reviews.isEmpty) {
    return null;
  }
  double sum = 0.0;
  for (ReviewsRecord review in reviews) {
    sum += (review.rating?.toDouble() ?? 0.0);
  }
  return sum / reviews.length;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}