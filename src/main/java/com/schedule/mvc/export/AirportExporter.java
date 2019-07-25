package com.schedule.mvc.export;

import com.schedule.mvc.entities.Airport;
import com.schedule.mvc.services.IAirportService;
import com.schedule.mvc.util.ApplicationConstants;
import jxl.CellView;
import jxl.Workbook;
import jxl.WorkbookSettings;
import jxl.write.Label;
import jxl.write.WritableCellFeatures;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Component("airportExporter")
public class AirportExporter implements FileExporter {

    @Autowired
    private IAirportService airportService;

    private static final String FILE_NAME = "Airport list";

    @Override
    public boolean export(HttpServletResponse response, String fileName, String encodage) {

        if (StringUtils.isEmpty(fileName)){
            fileName = FILE_NAME;
        }

        if (StringUtils.isEmpty(encodage)){
            encodage = ApplicationConstants.DEFAULT_ENCODAGE;
        }

        response.setContentType(ApplicationConstants.EXCEL_CONTENT_TYPE);
        response.setHeader(ApplicationConstants.CONTENT_DISPOSITION, "attachment; filename=" + fileName + ".xls");
        WorkbookSettings workbookSettings = new WorkbookSettings();
        workbookSettings.setEncoding(encodage);
        try{
            WritableWorkbook workbook = Workbook.createWorkbook(response.getOutputStream(), workbookSettings);
            WritableSheet sheet = workbook.createSheet(fileName, 0);

//            Sheet header
            Label labelCode = new Label(0, 0, ApplicationConstants.NAME_AIRPORT);
            labelCode.setCellFeatures(new WritableCellFeatures());
            labelCode.getCellFeatures().setComment("");
            sheet.addCell(labelCode);

            Label labelCity = new Label(1, 0, ApplicationConstants.CITY_AIRPORT);
            labelCity.setCellFeatures(new WritableCellFeatures());
            labelCity.getCellFeatures().setComment("");
            sheet.addCell(labelCity);

            Label labelCountry = new Label(2, 0, ApplicationConstants.COUNTRY_AIRPORT);
            labelCountry.setCellFeatures(new WritableCellFeatures());
            labelCountry.getCellFeatures().setComment("");
            sheet.addCell(labelCountry);

            Label labelIata = new Label(3, 0, ApplicationConstants.IATA_AIRPORT);
            labelIata.setCellFeatures(new WritableCellFeatures());
            labelIata.getCellFeatures().setComment("");
            sheet.addCell(labelIata);

            Label labelIcao = new Label(4, 0, ApplicationConstants.ICAO_AIRPORT);
            labelIcao.setCellFeatures(new WritableCellFeatures());
            labelIcao.getCellFeatures().setComment("");
            sheet.addCell(labelIcao);

            Label labelTimezone = new Label(5, 0, ApplicationConstants.TIMEZONE_AIRPORT);
            labelTimezone.setCellFeatures(new WritableCellFeatures());
            labelTimezone.getCellFeatures().setComment("");
            sheet.addCell(labelTimezone);

            int currentRow = 1;
            List<Airport> airports = airportService.selectAll();
            if (airports != null && !airports.isEmpty()){
                /**
                 * Writing in the sheet
                 */
                for (Airport airport : airports) {
                    sheet.addCell(new Label(0, currentRow, airport.getName()));
                    sheet.addCell(new Label(1, currentRow, airport.getCity()));
                    sheet.addCell(new Label(2, currentRow, airport.getCountry()));
                    sheet.addCell(new Label(3, currentRow, airport.getIata()));
                    sheet.addCell(new Label(4, currentRow, airport.getIcao()));
                    sheet.addCell(new Label(5, currentRow, airport.getTimezone()));

                    currentRow ++;
                }

                CellView cellView = new CellView();
                cellView.setAutosize(true);
                //cellView.setSize(500);
                sheet.setColumnView(0, cellView);
                sheet.setColumnView(1, cellView);
                sheet.setColumnView(2, cellView);
                sheet.setColumnView(3, cellView);
                sheet.setColumnView(4, cellView);
                sheet.setColumnView(5, cellView);

                /**
                 * write to exec sheet
                 */
                workbook.write();
                /**
                 * Closing workbook
                 */
                workbook.close();

                response.getOutputStream().flush();
                response.getOutputStream().close();
            }

            return true;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean importDataFromExcel() {
        return false;
    }
}
