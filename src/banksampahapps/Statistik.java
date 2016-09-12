/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package banksampahapps;
import java.awt.Color;   
import java.sql.*;   
import org.jfree.chart.*;   
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.jdbc.JDBCCategoryDataset;
import org.jfree.ui.ApplicationFrame;   

/**
 *
 * @author BangFirdam
 */
public class Statistik extends ApplicationFrame {
    public Statistik(String s)   
    {   
        super(s);   
        CategoryDataset categorydataset = readData();   
        JFreeChart jfreechart = ChartFactory.createLineChart("STATISTIK HARGA TOTAL BERDASARKAN TANGGAL", "TAHUN-BULAN-TANGGAL", "HARGA TOTAL SAMPAH", categorydataset, PlotOrientation.VERTICAL, false, true, true);
        
        // Setting Lain
        BarRenderer renderer = null;
        CategoryPlot plot = null;
        renderer = new BarRenderer();
        jfreechart.setBackgroundPaint(Color.white);   
        ChartPanel chartpanel = new ChartPanel(jfreechart);   
        setContentPane(chartpanel);  
    }   
   
    public static CategoryDataset readData()   
    {   
        JDBCCategoryDataset jdbccategorydataset = null;   
        String s = "jdbc:mysql://localhost/karang_taruna";   
        try   
        {   
            Class.forName("com.mysql.jdbc.Driver");   
        }   
        catch(ClassNotFoundException classnotfoundexception)   
        {   
            System.err.print("ClassNotFoundException: ");   
            System.err.println(classnotfoundexception.getMessage());   
        }   
        try   
        {   
            try (Connection connection = DriverManager.getConnection(s, "root", "")) {
                jdbccategorydataset = new JDBCCategoryDataset(connection);
                String s1 = "SELECT tbl_sampah.tgl_setor,SUM(tbl_sampah.harga_total) FROM tbl_sampah GROUP BY tbl_sampah.tgl_setor ORDER BY tbl_sampah.tgl_setor;";
                jdbccategorydataset.executeQuery(s1);
            }   
        }   
        catch(SQLException sqlexception)   
        {   
            System.err.print("SQLException: ");   
            System.err.println(sqlexception.getMessage());   
        }   
        catch(Exception exception)   
        {   
            System.err.print("Exception: ");   
            System.err.println(exception.getMessage());   
        }   
        return jdbccategorydataset;   
    }
}
