package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "aircraft")
public class Aircraft implements Serializable {

    @Id
    @GeneratedValue
    private int aircraft_id;

    private String aircraft_code;


    @OneToOne(mappedBy = "aircraft")
    private Flight flight;

    @OneToMany(mappedBy = "aircraft")
    private List<Route> routes;

    @ManyToOne
    @JoinColumn(name = "airline_id")
    private Airline airline;


    //constructor
    public Aircraft () {

    }


    public int getAircraft_id() {
        return aircraft_id;
    }

    public void setAircraft_id(int aircraft_id) {
        this.aircraft_id = aircraft_id;
    }

    public String getAircraft_code() {
        return aircraft_code;
    }

    public void setAircraft_code(String aircraft_code) {
        this.aircraft_code = aircraft_code;
    }

    public Airline getAirline() {
        return airline;
    }

    public void setAirline(Airline airline) {
        this.airline = airline;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public List<Route> getRoutes() {
        return routes;
    }

    public void setRoutes(List<Route> routes) {
        this.routes = routes;
    }
}
