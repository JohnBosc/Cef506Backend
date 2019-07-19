package com.schedule.mvc.services;

import com.schedule.mvc.entities.Flight;

import java.util.List;

public interface IFlightService {

    public Flight save(Flight entity);

    public Flight update(Flight entity);

    public List<Flight> selectAll();

    public List<Flight> selectAll(String sortField, String sort);

    public Flight getById(int id);

    public void remove(int id);

    public Flight findOne(String paramName, Object paramValue);

    public Flight findOne(String[] paramNames, Object[] paramValues);

    public int findCountBy(String paramName, String paramValue);
}
