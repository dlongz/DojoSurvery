package com.codingdojo.dojojsurvey.contorllers;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.dojojsurvey.models.User;

@Controller
public class DojoSurveryController {

		@RequestMapping("/")
		public String index(Model model) {
			User user = new User();
			List<String> locationList = Arrays.asList("San Jose","Dallas","New York","Chicago");
			List<String> languageList = Arrays.asList("Python","Javascript","Java","C++");
			
			model.addAttribute("user", user);
			model.addAttribute("locationList", locationList);
			model.addAttribute("languageList", languageList);
			return "index.jsp";
		}
		
		@PostMapping("/submit")
		public String formSubmit(@RequestParam(value="yname") String yname,
				@RequestParam(value="loc") String loc,
				@RequestParam(value="lang") String lang,
				@RequestParam(value="comm") String comm) {
			System.out.println(user);
			return "redirect:/results";
		}
		
		@RequestMapping("/results")
		public String results() {
			return "results.jsp";
		}
}
