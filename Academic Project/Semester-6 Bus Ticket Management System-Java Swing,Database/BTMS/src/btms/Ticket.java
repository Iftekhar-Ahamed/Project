/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package btms;

import java.awt.Color;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.StringTokenizer;
import javax.swing.JButton;

/**
 *
 * @author iftek
 */
public class Ticket extends javax.swing.JFrame {

    /**
     * Creates new form CounterUser
     */
    static Integer id;
    static String Allbookseats="";

    public Ticket(String date,String time) {
        initComponents();
        initseat(date,time);
        
    }
    
    public Ticket() {
        initComponents();
    }
    
    private void initseat(String date,String time){
        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/btms", "root", "");
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("SELECT `ID`,`Seats` FROM `ticket` WHERE `DATE`=? AND `TIME` =?");
            stmt.setString(1, date);
            stmt.setString(2, time);
            
            ResultSet res = (ResultSet) stmt.executeQuery();

            if (res.next()) {
                id = res.getInt("ID");
                String sit = res.getString("Seats");
                Allbookseats = sit;
                StringTokenizer tocken = new StringTokenizer(sit, ",");
                while (tocken.hasMoreTokens()) {
                    String s = tocken.nextToken();
                    if (s.equals("A1")) {
                        A1.setBackground(Color.RED);
                    } else if (s.equals("A2")) {
                        A2.setBackground(Color.RED);
                    } else if (s.equals("A3")) {
                        A3.setBackground(Color.RED);
                    } else if (s.equals("A4")) {
                        A4.setBackground(Color.RED);
                    } else if (s.equals("B1")) {
                        B1.setBackground(Color.RED);
                    } else if (s.equals("B2")) {
                        B2.setBackground(Color.RED);
                    } else if (s.equals("B3")) {
                        B3.setBackground(Color.RED);
                    } else if (s.equals("B4")) {
                        B4.setBackground(Color.RED);
                    } else if (s.equals("C1")) {
                        C1.setBackground(Color.RED);
                    } else if (s.equals("C2")) {
                        C2.setBackground(Color.RED);
                    } else if (s.equals("C3")) {
                        C3.setBackground(Color.RED);
                    } else if (s.equals("C4")) {
                        C4.setBackground(Color.RED);
                    } else if (s.equals("D1")) {
                        D1.setBackground(Color.RED);
                    } else if (s.equals("D2")) {
                        D2.setBackground(Color.RED);
                    } else if (s.equals("D3")) {
                        D3.setBackground(Color.RED);
                    } else if (s.equals("D4")) {
                        D4.setBackground(Color.RED);
                    } else if (s.equals("E1")) {
                        E1.setBackground(Color.RED);
                    } else if (s.equals("E2")) {
                        E2.setBackground(Color.RED);
                    } else if (s.equals("E3")) {
                        E3.setBackground(Color.RED);
                    } else if (s.equals("E4")) {
                        E4.setBackground(Color.RED);
                    } else if (s.equals("F1")) {
                        F1.setBackground(Color.RED);
                    } else if (s.equals("F3")) {
                        F3.setBackground(Color.RED);
                    } else if (s.equals("F2")) {
                        F2.setBackground(Color.RED);
                    } else if (s.equals("F4")) {
                        F4.setBackground(Color.RED);
                    } else if (s.equals("G1")) {
                        G1.setBackground(Color.RED);
                    } else if (s.equals("G2")) {
                        G2.setBackground(Color.RED);
                    } else if (s.equals("G3")) {
                        G3.setBackground(Color.RED);
                    } else if (s.equals("G4")) {
                        G4.setBackground(Color.RED);
                    }
                }

            } else {
                System.out.println("NO DATA FOUND");
            }
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
    

    public String selectseat() {
        String s = "";
        if (A1.getBackground().equals(Color.GREEN)) {
            s += "A1,";
        }
        if (A2.getBackground().equals(Color.GREEN)) {
            s += "A2,";
        }
        if (A3.getBackground().equals(Color.GREEN)) {
            s += "A3,";
        }
        if (A4.getBackground().equals(Color.GREEN)) {
            s += "A4,";
        }
        if (B1.getBackground().equals(Color.GREEN)) {
            s += "B1,";
        }
        if (B2.getBackground().equals(Color.GREEN)) {
            s += "B2,";
        }
        if (B3.getBackground().equals(Color.GREEN)) {
            s += "B3,";
        }
        if (B4.getBackground().equals(Color.GREEN)) {
            s += "B4,";
        }
        if (C1.getBackground().equals(Color.GREEN)) {
            s += "C1,";
        }
        if (C2.getBackground().equals(Color.GREEN)) {
            s += "C2,";
        }
        if (C3.getBackground().equals(Color.GREEN)) {
            s += "C3,";
        }
        if (C4.getBackground().equals(Color.GREEN)) {
            s += "C4,";
        }
        if (D1.getBackground().equals(Color.GREEN)) {
            s += "D1,";
        }
        if (D2.getBackground().equals(Color.GREEN)) {
            s += "D2,";
        }
        if (D3.getBackground().equals(Color.GREEN)) {
            s += "D3,";
        }
        if (D4.getBackground().equals(Color.GREEN)) {
            s += "D4,";
        }
        if (E1.getBackground().equals(Color.GREEN)) {
            s += "E1,";
        }
        if (E2.getBackground().equals(Color.GREEN)) {
            s += "E2,";
        }
        if (E3.getBackground().equals(Color.GREEN)) {
            s += "E3,";
        }
        if (E4.getBackground().equals(Color.GREEN)) {
            s += "E4,";
        }
        if (F1.getBackground().equals(Color.GREEN)) {
            s += "F1,";
        }
        if (F2.getBackground().equals(Color.GREEN)) {
            s += "F2,";
        }
        if (F3.getBackground().equals(Color.GREEN)) {
            s += "F3,";
        }
        if (F4.getBackground().equals(Color.GREEN)) {
            s += "F4,";
        }
        if (G1.getBackground().equals(Color.GREEN)) {
            s += "G1,";
        }
        if (G2.getBackground().equals(Color.GREEN)) {
            s += "G2,";
        }
        if (G3.getBackground().equals(Color.GREEN)) {
            s += "G3,";
        }
        if (G4.getBackground().equals(Color.GREEN)) {
            s += "G4,";
        }
        return s;
    }
    
    public void createTicket(String s){
        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/btms", "root", "");
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("INSERT INTO `passenger` (`PID`, `NAME`, `TID`, `DESTINATION`,`Seats`) VALUES (NULL, ?, ?, ?,?);");
            stmt.setString(1, NAME.getText());
            stmt.setString(2,  id.toString());
            stmt.setString(3,  desti.getText());
            stmt.setString(4,  s);
            //System.out.println(stmt);
            stmt.execute();
            conn.close();
        
        }catch(Exception e){
            System.out.println(e+" create");
        }
    }
    
    public void updatetotalseat(){
        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/btms", "root", "");
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("UPDATE `ticket` SET `Seats` = ? WHERE `ticket`.`ID` = ?;");
            stmt.setString(1,Allbookseats);
            stmt.setString(2,id.toString());
            stmt.execute();
            conn.close();
        }catch(Exception e){
            System.out.println(e);
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

        jPanel1 = new javax.swing.JPanel();
        A1 = new javax.swing.JButton();
        A2 = new javax.swing.JButton();
        B1 = new javax.swing.JButton();
        B2 = new javax.swing.JButton();
        C1 = new javax.swing.JButton();
        C2 = new javax.swing.JButton();
        D1 = new javax.swing.JButton();
        D2 = new javax.swing.JButton();
        E1 = new javax.swing.JButton();
        E2 = new javax.swing.JButton();
        F1 = new javax.swing.JButton();
        F2 = new javax.swing.JButton();
        G1 = new javax.swing.JButton();
        G2 = new javax.swing.JButton();
        A3 = new javax.swing.JButton();
        A4 = new javax.swing.JButton();
        B3 = new javax.swing.JButton();
        B4 = new javax.swing.JButton();
        C3 = new javax.swing.JButton();
        C4 = new javax.swing.JButton();
        D3 = new javax.swing.JButton();
        D4 = new javax.swing.JButton();
        E3 = new javax.swing.JButton();
        E4 = new javax.swing.JButton();
        F3 = new javax.swing.JButton();
        F4 = new javax.swing.JButton();
        G3 = new javax.swing.JButton();
        G4 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        NAME = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        desti = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(153, 153, 153));

        A1.setBackground(java.awt.Color.lightGray);
        A1.setText("A1");
        A1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                A1MouseClicked(evt);
            }
        });

        A2.setBackground(java.awt.Color.lightGray);
        A2.setText("A2");
        A2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                A2MouseClicked(evt);
            }
        });

        B1.setBackground(java.awt.Color.lightGray);
        B1.setText("B1");
        B1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                B1MouseClicked(evt);
            }
        });

        B2.setBackground(java.awt.Color.lightGray);
        B2.setText("B2");
        B2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                B2MouseClicked(evt);
            }
        });

        C1.setBackground(java.awt.Color.lightGray);
        C1.setText("C1");
        C1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                C1MouseClicked(evt);
            }
        });

        C2.setBackground(java.awt.Color.lightGray);
        C2.setText("C2");
        C2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                C2MouseClicked(evt);
            }
        });

        D1.setBackground(java.awt.Color.lightGray);
        D1.setText("D1");
        D1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                D1MouseClicked(evt);
            }
        });

        D2.setBackground(java.awt.Color.lightGray);
        D2.setText("D2");
        D2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                D2MouseClicked(evt);
            }
        });

        E1.setBackground(java.awt.Color.lightGray);
        E1.setText("E1");
        E1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                E1MouseClicked(evt);
            }
        });

        E2.setBackground(java.awt.Color.lightGray);
        E2.setText("E2");
        E2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                E2MouseClicked(evt);
            }
        });

        F1.setBackground(java.awt.Color.lightGray);
        F1.setText("F1");
        F1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                F1MouseClicked(evt);
            }
        });

        F2.setBackground(java.awt.Color.lightGray);
        F2.setText("F2");
        F2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                F2MouseClicked(evt);
            }
        });

        G1.setBackground(java.awt.Color.lightGray);
        G1.setText("G1");
        G1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                G1MouseClicked(evt);
            }
        });

        G2.setBackground(java.awt.Color.lightGray);
        G2.setText("G2");
        G2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                G2MouseClicked(evt);
            }
        });

        A3.setBackground(java.awt.Color.lightGray);
        A3.setText("A3");
        A3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                A3MouseClicked(evt);
            }
        });

        A4.setBackground(java.awt.Color.lightGray);
        A4.setText("A4");
        A4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                A4MouseClicked(evt);
            }
        });

        B3.setBackground(java.awt.Color.lightGray);
        B3.setText("B3");
        B3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                B3MouseClicked(evt);
            }
        });

        B4.setBackground(java.awt.Color.lightGray);
        B4.setText("B4");
        B4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                B4MouseClicked(evt);
            }
        });

        C3.setBackground(java.awt.Color.lightGray);
        C3.setText("C3");
        C3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                C3MouseClicked(evt);
            }
        });

        C4.setBackground(java.awt.Color.lightGray);
        C4.setText("C4");
        C4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                C4MouseClicked(evt);
            }
        });

        D3.setBackground(java.awt.Color.lightGray);
        D3.setText("D3");
        D3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                D3MouseClicked(evt);
            }
        });

        D4.setBackground(java.awt.Color.lightGray);
        D4.setText("D4");
        D4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                D4MouseClicked(evt);
            }
        });

        E3.setBackground(java.awt.Color.lightGray);
        E3.setText("E3");
        E3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                E3MouseClicked(evt);
            }
        });

        E4.setBackground(java.awt.Color.lightGray);
        E4.setText("E4");
        E4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                E4MouseClicked(evt);
            }
        });

        F3.setBackground(java.awt.Color.lightGray);
        F3.setText("F3");
        F3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                F3MouseClicked(evt);
            }
        });

        F4.setBackground(java.awt.Color.lightGray);
        F4.setText("F4");
        F4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                F4MouseClicked(evt);
            }
        });

        G3.setBackground(java.awt.Color.lightGray);
        G3.setText("G3");
        G3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                G3MouseClicked(evt);
            }
        });

        G4.setBackground(java.awt.Color.lightGray);
        G4.setText("G4");
        G4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                G4MouseClicked(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel3.setText("PASSENGER NAME :");

        jLabel4.setBackground(new java.awt.Color(255, 255, 255));
        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 12)); // NOI18N
        jLabel4.setText("DESTINATION : ");

        jButton2.setText("SUBMIT");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("EXIT");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(A1)
                    .addComponent(B1)
                    .addComponent(C1)
                    .addComponent(D1)
                    .addComponent(E1)
                    .addComponent(F1)
                    .addComponent(G1))
                .addGap(29, 29, 29)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(A2)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(B2)
                            .addComponent(C2)
                            .addComponent(D2)
                            .addComponent(E2))
                        .addGap(61, 61, 61)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(desti, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(NAME, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(2, 2, 2)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(G2)
                            .addComponent(F2))
                        .addGap(106, 106, 106)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 72, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(19, 19, 19)))))
                .addGap(0, 56, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(D3)
                            .addComponent(C3)
                            .addComponent(B3)
                            .addComponent(A3))
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(38, 38, 38)
                                .addComponent(C4))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(D4))))
                    .addComponent(A4, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(B4, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(E3)
                            .addGap(40, 40, 40)
                            .addComponent(E4))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(G3)
                                .addComponent(F3))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(F4, javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(G4, javax.swing.GroupLayout.Alignment.TRAILING)))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(A1)
                            .addComponent(A2)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(A3, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(A4, javax.swing.GroupLayout.Alignment.TRAILING))))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(B1)
                    .addComponent(B2)
                    .addComponent(B3)
                    .addComponent(B4)
                    .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(C1)
                    .addComponent(C2)
                    .addComponent(C3)
                    .addComponent(C4)
                    .addComponent(NAME, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(D1)
                    .addComponent(D2)
                    .addComponent(D3)
                    .addComponent(D4)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(E1)
                        .addComponent(E2)
                        .addComponent(E3)
                        .addComponent(desti))
                    .addComponent(E4))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(F1)
                        .addComponent(F2)
                        .addComponent(F3)
                        .addComponent(jButton2))
                    .addComponent(F4))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(G3)
                    .addComponent(G4)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(G2)
                        .addComponent(G1))
                    .addComponent(jButton3))
                .addContainerGap(45, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void A1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_A1MouseClicked
        // TODO add your handling code here:
        Color c = A1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            A1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            A1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_A1MouseClicked

    private void A2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_A2MouseClicked
        // TODO add your handling code here:
        Color c = A2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            A2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            A2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_A2MouseClicked

    private void B1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_B1MouseClicked
        // TODO add your handling code here:
        Color c = B1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            B1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            B1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_B1MouseClicked

    private void B2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_B2MouseClicked
        // TODO add your handling code here:
        Color c = B2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            B2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            B2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_B2MouseClicked

    private void C1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_C1MouseClicked
        // TODO add your handling code here:
        Color c = C1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            C1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            C1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_C1MouseClicked

    private void D1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_D1MouseClicked
        // TODO add your handling code here:
        Color c = D1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            D1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            D1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_D1MouseClicked

    private void E1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_E1MouseClicked
        // TODO add your handling code here:
        Color c = E1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            E1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            E1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_E1MouseClicked

    private void F1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_F1MouseClicked
        // TODO add your handling code here:
        Color c = F1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            F1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            F1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_F1MouseClicked

    private void G1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_G1MouseClicked
        // TODO add your handling code here:
        Color c = G1.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            G1.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            G1.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_G1MouseClicked

    private void C2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_C2MouseClicked
        // TODO add your handling code here:
        Color c = C2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            C2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            C2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_C2MouseClicked

    private void D2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_D2MouseClicked
        // TODO add your handling code here:
        Color c = D2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            D2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            D2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_D2MouseClicked

    private void E2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_E2MouseClicked
        // TODO add your handling code here:
        Color c = E2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            E2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            E2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_E2MouseClicked

    private void F2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_F2MouseClicked
        // TODO add your handling code here:
        Color c = F2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            F2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            F2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_F2MouseClicked

    private void G2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_G2MouseClicked
        // TODO add your handling code here:
        Color c = G2.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            G2.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            G2.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_G2MouseClicked

    private void A3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_A3MouseClicked
        // TODO add your handling code here:
        Color c = A3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            A3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            A3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_A3MouseClicked

    private void B3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_B3MouseClicked
        // TODO add your handling code here:
        Color c = B3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            B3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            B3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_B3MouseClicked

    private void C3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_C3MouseClicked
        // TODO add your handling code here:
        Color c = C3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            C3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            C3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_C3MouseClicked

    private void D3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_D3MouseClicked
        // TODO add your handling code here:
        Color c = D3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            D3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            D3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_D3MouseClicked

    private void E3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_E3MouseClicked
        // TODO add your handling code here:
        Color c = E3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            E3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            E3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_E3MouseClicked

    private void F3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_F3MouseClicked
        // TODO add your handling code here:
        Color c = F3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            F3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            F3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_F3MouseClicked

    private void G3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_G3MouseClicked
        // TODO add your handling code here:
        Color c = G3.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            G3.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            G3.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_G3MouseClicked

    private void A4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_A4MouseClicked
        // TODO add your handling code here:
        Color c = A4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            A4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            A4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_A4MouseClicked

    private void B4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_B4MouseClicked
        // TODO add your handling code here:
        Color c = B4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            B4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            B4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_B4MouseClicked

    private void C4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_C4MouseClicked
        // TODO add your handling code here:
        Color c = C4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            C4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            C4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_C4MouseClicked

    private void D4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_D4MouseClicked
        // TODO add your handling code here:
        Color c = D4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            D4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            D4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_D4MouseClicked

    private void E4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_E4MouseClicked
        // TODO add your handling code here:
        Color c = E4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            E4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            E4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_E4MouseClicked

    private void F4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_F4MouseClicked
        // TODO add your handling code here:
        Color c = F4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            F4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            F4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_F4MouseClicked

    private void G4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_G4MouseClicked
        // TODO add your handling code here:
        Color c = G4.getBackground();
        if (c.equals(Color.LIGHT_GRAY)) {
            G4.setBackground(Color.GREEN);
        } else if (c.equals(Color.GREEN)) {
            G4.setBackground(Color.LIGHT_GRAY);
        }
    }//GEN-LAST:event_G4MouseClicked

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        try {
            String s = selectseat();
            Allbookseats+=s;
            updatetotalseat();
            createTicket(s);
        } catch (Exception e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        new ShowTicketlist(false).setVisible(true);
        dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Ticket.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Ticket.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Ticket.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Ticket.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Ticket().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton A1;
    private javax.swing.JButton A2;
    private javax.swing.JButton A3;
    private javax.swing.JButton A4;
    private javax.swing.JButton B1;
    private javax.swing.JButton B2;
    private javax.swing.JButton B3;
    private javax.swing.JButton B4;
    private javax.swing.JButton C1;
    private javax.swing.JButton C2;
    private javax.swing.JButton C3;
    private javax.swing.JButton C4;
    private javax.swing.JButton D1;
    private javax.swing.JButton D2;
    private javax.swing.JButton D3;
    private javax.swing.JButton D4;
    private javax.swing.JButton E1;
    private javax.swing.JButton E2;
    private javax.swing.JButton E3;
    private javax.swing.JButton E4;
    private javax.swing.JButton F1;
    private javax.swing.JButton F2;
    private javax.swing.JButton F3;
    private javax.swing.JButton F4;
    private javax.swing.JButton G1;
    private javax.swing.JButton G2;
    private javax.swing.JButton G3;
    private javax.swing.JButton G4;
    private javax.swing.JTextField NAME;
    private javax.swing.JTextField desti;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
