import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDB movieDb) => Movie(
        adult: movieDb.adult,
        backdropPath: (movieDb.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
          : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
        genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
        id: movieDb.id,
        originalLanguage: movieDb.originalLanguage,
        originalTitle: movieDb.originalTitle,
        overview: movieDb.overview,
        popularity: movieDb.popularity,
        posterPath: (movieDb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
          : 'https://i.kym-cdn.com/entries/icons/facebook/000/018/587/tumblr_m99c8pVhtA1reb1c2o1_400.jpg',
        releaseDate: movieDb.releaseDate ?? DateTime.now(),
        title: movieDb.title,
        video: movieDb.video,
        voteAverage: movieDb.voteAverage,
        voteCount: movieDb.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails movieDb) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath != '')
      ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
      : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
    genreIds: movieDb.genres.map((e) => e.name).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}'
      : 'https://ih1.redbubble.net/image.1027712254.9762/pp,840x830-pad,1000x1000,f8f8f8.u2.jpg',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount,
  );
}
