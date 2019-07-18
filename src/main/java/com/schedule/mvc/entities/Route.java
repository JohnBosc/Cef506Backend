package com.schedule.mvc.entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "route")
public class Route implements Serializable {


    @Id
    @GeneratedValue
    private int route_id;

    private String airline_iata;

    private String srcAirport;

    private int srcAirport_id;

    private String dstAirport_iata;

    private int dstAirport_id;

    private int stops;


    @OneToOne
    @JoinColumn(name = "flight_id")
    private Flight flight;

    @ManyToOne
    @JoinColumn(name = "aircraft_id")
    private Aircraft aircraft;

    @ManyToOne
    @JoinColumn(name = "airport_id")
    private Airport airport;



    //constructor
    public Route () {
    }


    public int getRoute_id() {
        return route_id;
    }

    public void setRoute_id(int route_id) {
        this.route_id = route_id;
    }

    public String getAirline_iata() {
        return airline_iata;
    }

    public void setAirline_iata(String airline_iata) {
        this.airline_iata = airline_iata;
    }

    public String getSrcAirport() {
        return srcAirport;
    }

    public void setSrcAirport(String srcAirport) {
        this.srcAirport = srcAirport;
    }

    public int getSrcAirport_id() {
        return srcAirport_id;
    }

    public void setSrcAirport_id(int srcAirport_id) {
        this.srcAirport_id = srcAirport_id;
    }

    public String getDstAirport_iata() {
        return dstAirport_iata;
    }

    public void setDstAirport_iata(String dstAirport_iata) {
        this.dstAirport_iata = dstAirport_iata;
    }

    public int getDstAirport_id() {
        return dstAirport_id;
    }

    public void setDstAirport_id(int dstAirport_id) {
        this.dstAirport_id = dstAirport_id;
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

    public Airport getAirport() {
        return airport;
    }

    public void setAirport(Airport airport) {
        this.airport = airport;
    }
}


