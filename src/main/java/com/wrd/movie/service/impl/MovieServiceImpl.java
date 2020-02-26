package com.wrd.movie.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wrd.movie.dao.MovieDao;
import com.wrd.movie.domain.Movie;
import com.wrd.movie.service.MovieService;
import com.wrd.movie.vo.MovieVo;

@Service
public class MovieServiceImpl implements MovieService {

	@Resource
	private MovieDao dao;

	@Override
	public List<Movie> selects(MovieVo movieVo) {
		// TODO Auto-generated method stub
		return dao.selects(movieVo);
	}

	@Override
	public List<Movie> add(Movie movie) {
		// TODO Auto-generated method stub
		return dao.add(movie);
	}

	@Override
	public boolean delete(Integer[] ids) {
		// TODO Auto-generated method stub
		return dao.delete(ids);
	}

	@Override
	public List<Movie> toAdd() {
		// TODO Auto-generated method stub
		return dao.toAdd();
	}
	
}
