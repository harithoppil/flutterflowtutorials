// code created by https://www.youtube.com/@flutterflowexpert
// fb video - https://www.youtube.com/watch?v=HtvtwLmaI0w
// support my work - https://github.com/sponsors/bulgariamitko

Future<VideosRow> getRow(
  String? searchField,
  String? searchValue,
) async {
  // null check
  searchField ??= 'error';
  searchValue ??= 'error';

  List<VideosRow> videos = await VideosTable().queryRows(
      queryFn: (q) => q.eq(
            searchField ?? '',
            searchValue,
          ));

  return videos[0];
}