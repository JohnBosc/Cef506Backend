package com.schedule.mvc.ctrl;

import com.schedule.mvc.entities.Airline;
import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.entities.Route;
import com.schedule.mvc.services.IAirlineService;
import com.schedule.mvc.services.IAirportService;
import com.schedule.mvc.services.IRouteService;
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
@RequestMapping(value = "/route")
public class RouteController {

    @Autowired
    private IRouteService routeService;

    @Autowired
    private IAirlineService airlineService;

    @Autowired
    private IAirportService airportService;

    @RequestMapping(value = "/")
    public String route(Model model) {

        List<Route> routes = routeService.selectAll();
        if (routes == null) {
            routes = new ArrayList<Route>();
        }

        model.addAttribute("routes", routes);

        return "route/route";
    }

    @GetMapping(value = "/new")
    public String addRoute(Model model) {

        Route route = new Route();

        List<Airline> airlines = airlineService.selectAll();
        if (airlines == null) {
            airlines = new ArrayList<Airline>();
        }

        List<Airport> airports = airportService.selectAll();
        if (airports == null) {
            airports = new ArrayList<Airport>();
        }

        model.addAttribute("route", route);
        model.addAttribute("airlines", airlines);
        model.addAttribute("airports", airports);
        return "route/addRoute";
    }

    @PostMapping(value = "/save")
    public String saveRoute(Model model, Route route, MultipartFile file) {

//        if (route != null){
//            if(file != null && !file.isEmpty()){
//                InputStream stream =null;
//            }
//        }

        if(route.getRoute_id() != null) {

            routeService.update(route);

        } else {
            routeService.save(route);
        }

        return "redirect:/route/";
    }


    @RequestMapping(value = "/update/{route_id}")
    public String updateRoute(Model model, @PathVariable Long route_id) {

        if (route_id != null) {

            Route route = routeService.getById(route_id);

            List<Airline> airlines = airlineService.selectAll();
            if (airlines == null) {
                airlines = new ArrayList<Airline>();
            }
            model.addAttribute("airlines", airlines);

            List<Airport> airports = airportService.selectAll();
            if (airports == null) {
                airports = new ArrayList<Airport>();
            }
            model.addAttribute("airports", airports);

            if (route != null) {
                model.addAttribute("route", route);
            }

        }
        return "route/addRoute";
    }


    @RequestMapping(value = "/remove/{route_id}")
    public String removeRoute(Model model, @PathVariable Long route_id) {

        if (route_id != null){
            Route route = routeService.getById(route_id);
            if (route != null){
                // TODO relations of the element in the database before deletion
                routeService.remove(route_id);
            }
        }
        return "redirect:/route/";
    }

}
