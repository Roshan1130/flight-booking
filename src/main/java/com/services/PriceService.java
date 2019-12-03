package com.services;

public class PriceService {
	public String calculatePrice(String trip, String airline) {
		String price = null;
		
		if (airline.contentEquals("United Airlines")) {
			if (trip.contentEquals("otrip")) {
				price = "400";
			}else
				price = "600";
		}else if (airline.contentEquals("American Airlines")) {
			if (trip.contentEquals("otrip")) {
				price = "450";
			}else
				price = "650";
		}else if(airline.contentEquals("Spirit Airlines")) {
			if (trip.contentEquals("otrip")) {
				price = "300";
			}else
				price = "550";
		}
	
		return price;
	}

}
