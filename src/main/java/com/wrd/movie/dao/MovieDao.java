package com.wrd.movie.dao;

import java.util.List;

import com.wrd.movie.domain.Movie;
import com.wrd.movie.vo.MovieVo;

public interface MovieDao {

	List<Movie> selects(MovieVo movieVo);

	List<Movie> add(Movie movie);

	boolean delete(Integer[] ids);

	List<Movie> toAdd();
}
