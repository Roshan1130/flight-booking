package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dtos.FlightBookingDto;

@Controller
public class FlightBookingController {

	@RequestMapping(value = "flight-booking", method = RequestMethod.GET)
	public ModelAndView showPage() {
		ModelAndView mav = new ModelAndView("flight-booking");
		FlightBookingDto fbd  = new FlightBookingDto();
		mav.addObject("mav1", fbd);
		return mav;
	}
}
