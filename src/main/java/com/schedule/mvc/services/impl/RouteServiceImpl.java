package com.schedule.mvc.services.impl;

import com.schedule.mvc.dao.IRouteDao;
import com.schedule.mvc.entities.Route;
import com.schedule.mvc.services.IRouteService;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public class RouteServiceImpl implements IRouteService {

    private IRouteDao dao;

    public void setDao(IRouteDao dao) {
        this.dao = dao;
    }


    @Override
    public Route save(Route entity) {
        return dao.save(entity);
    }

    @Override
    public Route update(Route entity) {
        return dao.update(entity);
    }

    @Override
    public List<Route> selectAll() {
        return dao.selectAll();
    }

    @Override
    public List<Route> selectAll(String sortField, String sort) {
        return dao.selectAll(sortField, sort);
    }

    @Override
    public Route getById(Long id) {
        return dao.getById(id);
    }

    @Override
    public void remove(Long id) {
        dao.remove(id);
    }

    @Override
    public Route findOne(String paramName, Object paramValue) {
        return dao.findOne(paramName, paramValue);
    }

    @Override
    public Route findOne(String[] paramNames, Object[] paramValues) {
        return dao.findOne(paramNames, paramValues);
    }

    @Override
    public int findCountBy(String paramName, String paramValue) {
        return dao.findCountBy(paramName, paramValue);
    }
}
