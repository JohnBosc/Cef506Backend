package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "airline")
public class Airline implements Serializable {

    @Id
    @GeneratedValue
    private Long airline_id;

    private String name;

    private String alias;

    private String iata;

    private String icao;

    private String callSign;

    private String country;

    private char active;


    @OneToMany(mappedBy = "airline")
    private List<Route> routes;


    @ManyToOne
    @JoinColumn(name = "airport_id")
    private Airport airport;


    @OneToMany(mappedBy = "airline")
    private List<Aircraft> aircrafts;


    //constructor
    public Airline () {

    }


    public Long getAirline_id() {
        return airline_id;
    }

    public void setAirline_id(Long airline_id) {
        this.airline_id = airline_id;
    }


    public List<Route> getRoutes() {
        return routes;
    }

    public void setRoutes(List<Route> routes) {
        this.routes = routes;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
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

    public String getCallSign() {
        return callSign;
    }

    public void setCallSign(String callSign) {
        this.callSign = callSign;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public char getActive() {
        return active;
    }

    public void setActive(char active) {
        this.active = active;
    }

    public List<Aircraft> getAircrafts() {
        return aircrafts;
    }

    public void setAircrafts(List<Aircraft> aircrafts) {
        this.aircrafts = aircrafts;
    }

    public Airport getAirport() {
        return airport;
    }

    public void setAirport(Airport airport) {
        this.airport = airport;
    }
}
