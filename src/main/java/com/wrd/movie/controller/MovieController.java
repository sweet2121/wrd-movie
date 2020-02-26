package com.wrd.movie.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wrd.movie.domain.Movie;
import com.wrd.movie.service.MovieService;
import com.wrd.movie.vo.MovieVo;

@Controller
public class MovieController {

	@Resource
	private MovieService service;
	
	@RequestMapping("selects")
	public String list(MovieVo movieVo,Model model){
		if(movieVo.getPageNum()==null){
			movieVo.setPageNum(1);
		}
		PageHelper.startPage(movieVo.getPageNum(),3);
		
		List<Movie> movies=service.selects(movieVo);
		
		PageInfo<Movie> page=new PageInfo<Movie>(movies);
		
		model.addAttribute("movies", movies);
		model.addAttribute("movieVo", movieVo);
		model.addAttribute("page", page);
		
		return "movies";
	}
	@RequestMapping("toAdd.do")
	public String toAdd(Model m,Movie movie){
		
		List<Movie> list=service.toAdd();
		m.addAttribute("movie", movie);
		return "add";
	}
	@RequestMapping("add.do")
	public String list(Model m,@Validated @ModelAttribute Movie movie,BindingResult br){
		
		if(br.hasErrors()){
			List<Movie> list=service.toAdd();
			m.addAttribute("movie", movie);
			return "add";
		}
		
		
		service.add(movie);
		
		return "redirect:selects.do";
	}
	@ResponseBody
	@RequestMapping("delete.do")
	public Object  delete(Integer[] ids) {
		//
		boolean flag  = service.delete(ids);
		
		return flag;
		
	}
}
