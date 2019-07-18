package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Time;
import java.util.List;

@Entity
@Table(name = "airport")
public class Airport implements Serializable {

    @Id
    @GeneratedValue
    private int airport_id;

    private String name;

    private String city;

    private String country;

    private String iata;

    private String icao;

    private Float timezone;


    @OneToMany(mappedBy = "airport")
    private List<Airline> airlines;

    @OneToMany(mappedBy = "airport")
    private List<Flight> flights;

    @OneToMany(mappedBy = "airport")
    private List<Route> routes;


    //constructor
    public Airport () {
    }


    public int getAirport_id() {
        return airport_id;
    }

    public void setAirport_id(int airport_id) {
        this.airport_id = airport_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getIata() {
        return iata;
    }

    public void setIata(String iata) {
        this.iata = iata;
    }

    public String getIcao() {
        return icao;
    }

    public void setIcao(String icao) {
        this.icao = icao;
    }

    public Float getTimezone() {
        return timezone;
    }

    public void setTimezone(Float timezone) {
        this.timezone = timezone;
    }

    public List<Airline> getAirlines() {
        return airlines;
    }

    public void setAirlines(List<Airline> airlines) {
        this.airlines = airlines;
    }

    public List<Flight> getFlights() {
        return flights;
    }

    public void setFlights(List<Flight> flights) {
        this.flights = flights;
    }

    public List<Route> getRoutes() {
        return routes;
    }

    public void setRoutes(List<Route> routes) {
        this.routes = routes;
    }
}
