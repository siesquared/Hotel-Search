package co.grandcircus.hotel;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.hotel.dao.HotelDao;

@Controller
public class HotelController {
	
@Autowired	
private HotelDao dao;
	
	@RequestMapping("/")
	public ModelAndView showHome() {
		return new ModelAndView("home");
		
	}
	@PostMapping("/results")
	public ModelAndView showCity(@RequestParam("city") String city) {
		ModelAndView mav = new ModelAndView("results");
		mav.addObject("hotel", dao.findByCategory(city));
		mav.addObject("city",city);

		return mav;
	
	}
	

}
