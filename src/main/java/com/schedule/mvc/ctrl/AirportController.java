package com.schedule.mvc.ctrl;

import com.schedule.mvc.entities.*;
import com.schedule.mvc.export.FileExporter;
import com.schedule.mvc.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/airport")
public class AirportController {

    @Autowired
    private IAirportService airportService;

    @Autowired
    @Qualifier("airportExporter")
    private FileExporter exporter;


    @RequestMapping(value = "/")
    public String airport(Model model) {

        List<Airport> airports = airportService.selectAll();
        if (airports == null) {
            airports = new ArrayList<Airport>();
        }

        model.addAttribute("airports", airports);

        return "airport/airport";

    }

    @GetMapping(value = "/new")
    public String addAirport(Model model) {

        Airport airport = new Airport();
        model.addAttribute("airport", airport);
        return "airport/addAirport";
    }

    @PostMapping(value = "/save")
    public String saveAirport(Model model, Airport airport) {

        if(airport.getAirport_id() != null) {

            airportService.update(airport);

        } else {
            airportService.save(airport);
        }
        return "redirect:/airport/";
    }


    @RequestMapping(value = "/update/{airport_id}")
    public String updateAirport(Model model, @PathVariable Long airport_id) {

        if (airport_id != null){

            Airport airport = airportService.getById(airport_id);

            if (airport != null){
                model.addAttribute("airport", airport);
            }

        }

        return "airport/addAirport";
    }

    @RequestMapping(value = "/remove/{airport_id}")
    public String removeAirport(Model model, @PathVariable Long airport_id) {

        if (airport_id != null){
            Airport airport = airportService.getById(airport_id);
            if (airport != null){
                // TODO relations of the element in the database before deletion
                airportService.remove(airport_id);
            }
        }
        return "redirect:/airport/";
    }

    @RequestMapping(value = "/export/")
    public String exportAirports (HttpServletResponse response) {

        exporter.export(response, null, null);
        return "airport/airport";
    }

}
