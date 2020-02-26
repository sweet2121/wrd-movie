package com.wrd.movie.service;

import java.util.List;

import com.wrd.movie.domain.Movie;
import com.wrd.movie.vo.MovieVo;

public interface MovieService {

	List<Movie> selects(MovieVo movieVo);

	List<Movie> add(Movie movie);

	boolean delete(Integer[] ids);

	List<Movie> toAdd();

}
