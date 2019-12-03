package com.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dtos.FlightBookingDto;
import com.services.PriceService;

@Controller
public class FlightBookingController {

	@RequestMapping(value = "flight-booking", method = RequestMethod.GET)
	public ModelAndView showPage() {
		ModelAndView mav = new ModelAndView("flight-booking");
		 System.out.println("run"); 
		FlightBookingDto fbd  = new FlightBookingDto();
		mav.addObject("mavAtt", fbd);
		return mav;
		
	}
	
	@RequestMapping(value = "booking-detail", method = RequestMethod.POST)
	public ModelAndView showPage2(FlightBookingDto fbd) {
		System.out.println(fbd.getTrip().toString());
		String trip, airline;
		trip = fbd.getTrip();
		airline = fbd.getAirline();
		
		PriceService ps = new PriceService();
		String price = ps.calculatePrice(trip,airline);
		
		ModelAndView mav2 = new ModelAndView("booking-detail");
		fbd.setPrice(price);
		
		System.out.println(fbd.getPrice());
		mav2.addObject("mavAtt2", fbd);
		return mav2;
	}
}
