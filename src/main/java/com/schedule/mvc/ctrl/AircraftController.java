package com.schedule.mvc.ctrl;

import com.schedule.mvc.entities.Aircraft;
import com.schedule.mvc.entities.Airline;
import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.services.IAircraftService;
import com.schedule.mvc.services.IAirlineService;
import com.schedule.mvc.services.IAirportService;
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
@RequestMapping(value = "/aircraft")
public class AircraftController {



    @Autowired
    private IAircraftService aircraftService;

    @Autowired
    private IAirlineService airlineService;


    @RequestMapping(value = "/")
    public String aircraft(Model model) {

        List<Aircraft> aircrafts = aircraftService.selectAll();
        if (aircrafts == null) {
            aircrafts = new ArrayList<Aircraft>();
        }

        model.addAttribute("aircrafts", aircrafts);

        return "aircraft/aircraft";

    }



    @GetMapping(value = "/new")
    public String addAircraft(Model model) {

        Aircraft aircraft = new Aircraft();

        List<Airline> airlines = airlineService.selectAll();
        if (airlines == null) {
            airlines = new ArrayList<Airline>();
        }

        model.addAttribute("aircraft", aircraft);
        model.addAttribute("airlines", airlines);
        return "aircraft/addAircraft";
    }

    @PostMapping(value = "/save")
    public String saveAircraft(Model model, Aircraft aircraft, MultipartFile file) {

        if (aircraft != null){
            if(file != null && !file.isEmpty()){
                InputStream stream =null;
            }
        }

        if(aircraft.getAircraft_id() != null) {

            aircraftService.update(aircraft);

        } else {
            aircraftService.save(aircraft);
        }

        return "redirect:/aircraft/";
    }


    @RequestMapping(value = "/update/{aircraft_id}")
    public String updateAircraft(Model model, @PathVariable Long aircraft_id) {

        if (aircraft_id != null) {

            Aircraft aircraft = aircraftService.getById(aircraft_id);

            List<Airline> airlines = airlineService.selectAll();
            if (airlines == null) {
                airlines = new ArrayList<Airline>();
            }
            model.addAttribute("airlines", airlines);

            if (aircraft != null) {
                model.addAttribute("aircraft", aircraft);
            }

        }
        return "aircraft/addAircraft";
    }

    @RequestMapping(value = "/remove/{aircraft_id}")
    public String removeAircraft(Model model, @PathVariable Long aircraft_id) {

        if (aircraft_id != null){
            Aircraft aircraft = aircraftService.getById(aircraft_id);
            if (aircraft != null){
                // TODO relations of the element in the database before deletion
                aircraftService.remove(aircraft_id);
            }
        }
        return "redirect:/aircraft/";
    }

}
