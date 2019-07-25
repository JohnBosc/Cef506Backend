package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

@Entity
@Table(name = "route")
public class Route implements Serializable {


    @Id
    @GeneratedValue
    private Long route_id;

    private int stops;




    @ManyToOne
    @JoinColumn(name = "airline_id")
    private Airline airline;


    @OneToOne
    @JoinColumn(name = "flight_id")
    private Flight flight;

    @ManyToOne
    @JoinColumn(name = "aircraft_id")
    private Aircraft aircraft;

    @ManyToMany
    @JoinTable(
            name = "Route_Airport",
            joinColumns = {@JoinColumn(name = "Route_route_id", referencedColumnName = "route_id")},
            inverseJoinColumns = {@JoinColumn(name = "Airport_airport_id", referencedColumnName = "airport_id")}
    )
    private Collection<Airport> airports;





    //constructor
    public Route () {
    }


    public Long getRoute_id() {
        return route_id;
    }

    public void setRoute_id(Long route_id) {
        this.route_id = route_id;
    }


    public Airline getAirline() {
        return airline;
    }

    public void setAirline(Airline airline) {
        this.airline = airline;
    }


    public int getStops() {
        return stops;
    }

    public void setStops(int stops) {
        this.stops = stops;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public Aircraft getAircraft() {
        return aircraft;
    }

    public void setAircraft(Aircraft aircraft) {
        this.aircraft = aircraft;
    }

    public Collection<Airport> getAirports() {
        return airports;
    }

    public void setAirports(Collection<Airport> airports) {
        this.airports = airports;
    }
}


