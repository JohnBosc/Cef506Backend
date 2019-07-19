package com.schedule.mvc.services;

import com.schedule.mvc.entities.Route;

import java.util.List;

public interface IRouteService {

    public Route save(Route entity);

    public Route update(Route entity);

    public List<Route> selectAll();

    public List<Route> selectAll(String sortField, String sort);

    public Route getById(int id);

    public void remove(int id);

    public Route findOne(String paramName, Object paramValue);

    public Route findOne(String[] paramNames, Object[] paramValues);

    public int findCountBy(String paramName, String paramValue);
}
