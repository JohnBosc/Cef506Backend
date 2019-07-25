package com.schedule.mvc.services;

import com.schedule.mvc.entities.Aircraft;

import java.util.List;

public interface IAircraftService {

    public Aircraft save(Aircraft entity);

    public Aircraft update(Aircraft entity);

    public List<Aircraft> selectAll();

    public List<Aircraft> selectAll(String sortField, String sort);

    public Aircraft getById(Long id);

    public void remove(Long id);

    public Aircraft findOne(String paramName, Object paramValue);

    public Aircraft findOne(String[] paramNames, Object[] paramValues);

    public int findCountBy(String paramName, String paramValue);
}
