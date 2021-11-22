package com.codingdojo.dojojsurvey.contorllers;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.dojojsurvey.models.User;

@Controller
public class DojoSurveryController {

		@RequestMapping("/")
		public String index(Model viewModel) {
//			User user = new User();
			List<String> locationList = Arrays.asList("San Jose","Dallas","New York","Chicago");
			List<String> languageList = Arrays.asList("Python","Javascript","Java","C++");
			
			viewModel.addAttribute("locationList", locationList);
			viewModel.addAttribute("languageList", languageList);
			return "index.jsp";
		}
		
		@RequestMapping("/results")
		public String results(@RequestParam(value="yname") String name,
				@RequestParam(value="loc") String location,
				@RequestParam(value="lang") String language,
				@RequestParam(value="comm") String comments,
				Model viewModel) {
			viewModel.addAttribute("user", new User(name, location, language, comments));
			return "results.jsp";
		}
}
