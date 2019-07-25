package com.schedule.mvc.export;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface FileExporter {

    boolean export(HttpServletResponse response, String fileName, String encodage);

    boolean importDataFromExcel();
}
