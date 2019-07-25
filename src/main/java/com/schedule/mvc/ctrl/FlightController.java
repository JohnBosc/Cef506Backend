package com.schedule.mvc.ctrl;

import com.schedule.mvc.entities.Aircraft;
import com.schedule.mvc.entities.Airline;
import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.entities.Flight;
import com.schedule.mvc.services.IAircraftService;
import com.schedule.mvc.services.IAirlineService;
import com.schedule.mvc.services.IAirportService;
import com.schedule.mvc.services.IFlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/flight")
public class FlightController {

    @Autowired
    private IFlightService flightService;

    @Autowired
    private IAircraftService aircraftService;

    @RequestMapping(value = "/")
    public String flight(Model model) {

        List<Flight> flights = flightService.selectAll();
        if (flights == null) {
            flights = new ArrayList<Flight>();
        }

        model.addAttribute("flights", flights);

        return "flight/flight";

    }

    @GetMapping(value = "/new")
    public String addFlight(Model model) {

        Flight flight = new Flight();

        List<Aircraft> aircrafts = aircraftService.selectAll();
        if (aircrafts == null) {
            aircrafts = new ArrayList<Aircraft>();
        }

        model.addAttribute("flight", flight);
        model.addAttribute("aircrafts", aircrafts);
        return "flight/addFlight";
    }

    @PostMapping(value = "/save")
    public String saveFlight(Model model, Flight flight, MultipartFile file) {

//        if (flight != null){
//            if(file != null && !file.isEmpty()){
//                InputStream stream =null;
//            }
//        }


        if(flight.getFlight_id() != null) {

            flightService.update(flight);

        } else {
            flightService.save(flight);
        }

        return "redirect:/flight/";
    }


    @RequestMapping(value = "/update/{flight_id}")
    public String updateFlight(Model model, @PathVariable Long flight_id) {

        if (flight_id != null) {

            Flight flight = flightService.getById(flight_id);

            List<Aircraft> aircrafts = aircraftService.selectAll();
            if (aircrafts == null) {
                aircrafts = new ArrayList<Aircraft>();
            }
            model.addAttribute("aircrafts", aircrafts);


            if (flight != null) {
                model.addAttribute("flight", flight);
            }

        }
        return "flight/addFlight";
    }



    @RequestMapping(value = "/remove/{flight_id}")
    public String removeFlight(Model model, @PathVariable Long flight_id) {

        if (flight_id != null){
            Flight flight = flightService.getById(flight_id);
            if (flight != null){
                // TODO relations of the element in the database before deletion
                flightService.remove(flight_id);
            }
        }
        return "redirect:/flight/";
    }


}
