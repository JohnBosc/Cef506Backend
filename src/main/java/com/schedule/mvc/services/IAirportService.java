package com.schedule.mvc.services;

import com.schedule.mvc.entities.Airport;

import java.util.List;

public interface IAirportService {

    public Airport save(Airport entity);

    public Airport update(Airport entity);

    public List<Airport> selectAll();

    public List<Airport> selectAll(String sortField, String sort);

    public Airport getById(int id);

    public void remove(int id);

    public Airport findOne(String paramName, Object paramValue);

    public Airport findOne(String[] paramNames, Object[] paramValues);

    public int findCountBy(String paramName, String paramValue);
}
