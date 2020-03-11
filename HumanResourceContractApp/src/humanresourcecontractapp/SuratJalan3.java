/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package humanresourcecontractapp;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.awt.BorderLayout;
import java.awt.Container;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author achma
 */
public class SuratJalan3 extends javax.swing.JInternalFrame {

    /**
     * Creates new form SuratJalan12
     */
    
    Connection connection;
    Statement stat;
    ResultSet rs;
    String sql,idContract;
    public SuratJalan3(String val1) {
        try {
            initComponents();
            ConnectionDB condb = new ConnectionDB();
            condb.Config();
            connection = (Connection) condb.connect;
            stat = (Statement) condb.stmt;
            idContract = val1;
            ThreeMonth();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(SuratJalan3.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 394, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 274, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    private void ThreeMonth() throws FileNotFoundException
    {
        try{
            ConnectionDB condb = new ConnectionDB();
            condb.Config();
            connection = (Connection) condb.connect;
            stat = (Statement) condb.stmt;
            
            Map prs = new HashMap();
        
            String reportPath = System.getProperty("user.dir") + "/src/Report/SuratJalan3.jrxml";
        
            JasperDesign jd1 = JRXmlLoader.load (new FileInputStream(new File(reportPath)));
            
            
            sql = "SELECT\n" +
                    "id_contract,\n" +
                    "sdm_name,\n" +
                    "sdm_ttl,\n" +
                    "sdm_ktp,\n" +
                    "sdm_alamatasal,\n" +
                    "contractor_name,\n" +
                    "contractor_ktp,\n" +
                    "contractor_telp,\n" +
                    "contractor_address,\n" +
                    "contractor_naddress,\n" +
                    "contract_start,\n" +
                    "contract_end,\n" +
                    "contractor_subname,\n" +
                    "contractor_subage,\n" +
                    "payment_admin,\n" +
                    "payment_sdm,\n" +
                    "paymennt_cuti\n" +
                    "FROM\n" +
                    "contract\n" +
                    "WHERE\n" +
                    "id_contract = '"+idContract+"'";
            JRDesignQuery newQuery = new JRDesignQuery();
            newQuery.setText(sql);
            jd1.setQuery(newQuery);
            JasperReport Jrpt1 = JasperCompileManager.compileReport(jd1);
            JasperPrint jp1 = JasperFillManager.fillReport(Jrpt1, prs,condb.connect);
            net.sf.jasperreports.view.JRViewer viewer1 = new net.sf.jasperreports.view.JRViewer(jp1);
            Container c1 = getContentPane();
            c1.setLayout(new BorderLayout());
            c1.add(viewer1);
        
        }catch(JRException e){
            JOptionPane.showMessageDialog(null, e);
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}