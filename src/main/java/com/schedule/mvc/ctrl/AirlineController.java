package com.schedule.mvc.ctrl;

import com.schedule.mvc.entities.Airline;
import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.services.IAirlineService;
import com.schedule.mvc.services.IAirportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/airline")
public class AirlineController {


    @Autowired
    private IAirlineService airlineService;


    @RequestMapping(value = "/")
    public String airline(Model model) {

        List<Airline> airlines = airlineService.selectAll();
        if (airlines == null) {
            airlines = new ArrayList<Airline>();
        }

        model.addAttribute("airlines", airlines);

        return "airline/airline";

    }

    @GetMapping(value = "/new")
    public String addAirline(Model model) {

        Airline airline = new Airline();
        model.addAttribute("airline", airline);
        return "airline/addAirline";
    }

    @PostMapping(value = "/save")
    public String saveAirline(Model model, Airline airline) {

        if(airline.getAirline_id() != null) {

            airlineService.update(airline);

        } else {
            airlineService.save(airline);
        }

        return "redirect:/airline/";
    }


    @RequestMapping(value = "/update/{airline_id}")
    public String updateAirline(Model model, @PathVariable Long airline_id) {

        if (airline_id != null) {

            Airline airline = airlineService.getById(airline_id);

            if (airline != null) {
                model.addAttribute("airline", airline);
            }

        }
        return "airline/addAirline";
    }


    @RequestMapping(value = "/remove/{airline_id}")
    public String removeAirline(Model model, @PathVariable Long airline_id) {

        if (airline_id != null){
            Airline airline = airlineService.getById(airline_id);
            if (airline != null){
                // TODO relations of the element in the database before deletion
                airlineService.remove(airline_id);
            }
        }
        return "redirect:/airline/";
    }


}
