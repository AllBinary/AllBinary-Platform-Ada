--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.graphics.j2me.MyFrame_Package is

   procedure Initialize_Fields (This : in out MyFrame'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.guiLog := GuiLog_Package.getInstance;
      This.xslHelper := XslHelper_Package.getInstance;
      This.JAVA_TEMPLATE := To_Unbounded_String ("svgExport.xsl");
      This.SAVEEXTENSION := To_Unbounded_String (".gxml");
      This.JAVAEXTENSION := To_Unbounded_String (".javax");
      
      
      This.animateJButton := null;
      This.autoDamageJMenuItem := null;
      This.autoExplodeJMenuItem := null;
      This.autoGrowJMenuItem := null;
      This.autoRotateGenerationJMenuItem := null;
      This.autoSheildMenuItem := null;
      This.autoShrinkJMenuItem := null;
      This.centerJMenuItem := null;
      This.copyJMenuItem1 := null;
      This.exitJMenuItem := null;
      This.explodeAllJMenuItem := null;
      This.exportJMenuItem1 := null;
      This.fileJMenu := null;
      This.frameJMenu := null;
      This.generateJMenu := null;
      This.insertAfterJMenuItem := null;
      This.insertBeforeJMenuItem := null;
      This.jButton1 := null;
      This.jButton2 := null;
      This.jButton3 := null;
      This.jButton4 := null;
      This.jButton41 := null;
      This.jButton5 := null;
      This.jMenu1 := null;
      This.jMenuItem1 := null;
      This.jPanel1 := null;
      This.jTabbedPane := null;
      This.jToolBar1 := null;
      This.mainJPanel := null;
      This.menuJMenuBar := null;
      This.newJMenuItem := null;
      This.nextFrameJMenuItem := null;
      This.objectJMenu := null;
      This.openJButton := null;
      This.openJMenuItem := null;
      This.playJButton := null;
      This.previousFrameJMenuItem := null;
      This.removeJMenuItem := null;
      This.saveAsJMenuItem := null;
      This.saveJButton := null;
      This.saveJMenuItem := null;
      This.statusJPanel := null;
      This.stopJjButton := null;
      This.viewJMenu := null;
      This.zoomInJMenuItem := null;
      This.zoomOutJMenuItem := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MyFrame'Class) is
   begin
      JFrame_Package.Initialize (This);
      Initialize_Fields (This);
        This.initComponents;
        This.setSize (Dimension_Package.Create (550, 400));
        This.mainJPanel.setSize (Dimension_Package.Create (550, 400));
        This.jTabbedPane.setSize (Dimension_Package.Create (550, 400));
        This.fileJDialog := FileJDialog_Package.Create;
        This.fileJDialog.addFinishedListener (MyFrame_Access'(This'Unchecked_Access));
        This.rotateJDialog := RotateJDialog_Package.Create (MyFrame_Access'(This'Unchecked_Access), False);
   end Initialize;

   function Create return MyFrame_Access is
      This : constant MyFrame_Access := new MyFrame;
   begin
      MyFrame_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initComponents (This : in out MyFrame) is
   begin
        This.jToolBar1 := JToolBar_Package.Create;
        This.jButton2 := JButton_Package.Create;
        This.saveJButton := JButton_Package.Create;
        This.jButton1 := JButton_Package.Create;
        This.openJButton := JButton_Package.Create;
        This.jButton3 := JButton_Package.Create;
        This.jButton4 := JButton_Package.Create;
        This.jButton41 := JButton_Package.Create;
        This.jButton5 := JButton_Package.Create;
        This.animateJButton := JButton_Package.Create;
        This.playJButton := JButton_Package.Create;
        This.stopJjButton := JButton_Package.Create;
        This.jPanel1 := JPanel_Package.Create;
        This.mainJPanel := JPanel_Package.Create;
        This.jTabbedPane := JTabbedPane_Package.Create;
        This.statusJPanel := JPanel_Package.Create;
        MyFrame_Package.statusJLabel := JLabel_Package.Create;
        This.menuJMenuBar := JMenuBar_Package.Create;
        This.fileJMenu := JMenu_Package.Create;
        This.newJMenuItem := JMenuItem_Package.Create;
        This.openJMenuItem := JMenuItem_Package.Create;
        This.saveJMenuItem := JMenuItem_Package.Create;
        This.saveAsJMenuItem := JMenuItem_Package.Create;
        This.exportJMenuItem1 := JMenuItem_Package.Create;
        This.exitJMenuItem := JMenuItem_Package.Create;
        This.viewJMenu := JMenu_Package.Create;
        This.zoomInJMenuItem := JMenuItem_Package.Create;
        This.zoomOutJMenuItem := JMenuItem_Package.Create;
        This.objectJMenu := JMenu_Package.Create;
        This.explodeAllJMenuItem := JMenuItem_Package.Create;
        This.frameJMenu := JMenu_Package.Create;
        This.previousFrameJMenuItem := JMenuItem_Package.Create;
        This.nextFrameJMenuItem := JMenuItem_Package.Create;
        This.removeJMenuItem := JMenuItem_Package.Create;
        This.copyJMenuItem1 := JMenuItem_Package.Create;
        This.insertAfterJMenuItem := JMenuItem_Package.Create;
        This.insertBeforeJMenuItem := JMenuItem_Package.Create;
        This.generateJMenu := JMenu_Package.Create;
        This.centerJMenuItem := JMenuItem_Package.Create;
        This.autoDamageJMenuItem := JMenuItem_Package.Create;
        This.autoExplodeJMenuItem := JMenuItem_Package.Create;
        This.autoGrowJMenuItem := JMenuItem_Package.Create;
        This.jMenuItem1 := JMenuItem_Package.Create;
        This.autoRotateGenerationJMenuItem := JMenuItem_Package.Create;
        This.autoSheildMenuItem := JMenuItem_Package.Create;
        This.autoShrinkJMenuItem := JMenuItem_Package.Create;
        This.jMenu1 := JMenu_Package.Create;
        This.addWindowListener (WindowAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure windowClosing (This : in out ; evt_Param : access WindowEvent'Class) is
--        evt : WindowEvent_Access := WindowEvent_Access (evt_Param);
--     begin
--                  This.exitForm (evt);
--     end windowClosing;
);
        This.jButton2.setText (To_Unbounded_String ("New"));
        This.jButton2.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jButton2ActionPerformed (evt);
--     end actionPerformed;
);
        This.jToolBar1.add (This.jButton2);
        This.saveJButton.setText (To_Unbounded_String ("Save"));
        This.saveJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.saveJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jToolBar1.add (This.saveJButton);
        This.jButton1.setText (To_Unbounded_String ("Export"));
        This.jButton1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jButton1ActionPerformed (evt);
--     end actionPerformed;
);
        This.jToolBar1.add (This.jButton1);
        This.openJButton.setText (To_Unbounded_String ("Open"));
        This.openJButton.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.openJButtonActionPerformed (evt);
--     end actionPerformed;
);
        This.jToolBar1.add (This.openJButton);
        This.jButton3.setText (To_Unbounded_String ("Copy"));
        This.jToolBar1.add (This.jButton3);
        This.jButton4.setText (To_Unbounded_String ("Insert Before"));
        This.jToolBar1.add (This.jButton4);
        This.jButton41.setText (To_Unbounded_String ("Insert After"));
        This.jToolBar1.add (This.jButton41);
        This.jButton5.setText (To_Unbounded_String ("Delete"));
        This.jToolBar1.add (This.jButton5);
        This.animateJButton.setText (To_Unbounded_String ("AnimateEdit"));
        This.jToolBar1.add (This.animateJButton);
        This.playJButton.setText (To_Unbounded_String ("Play"));
        This.playJButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.playJButtonMousePressed (evt);
--     end mousePressed;
);
        This.jToolBar1.add (This.playJButton);
        This.stopJjButton.setText (To_Unbounded_String ("Stop"));
        This.stopJjButton.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.stopJjButtonMousePressed (evt);
--     end mousePressed;
);
        This.jToolBar1.add (This.stopJjButton);
        This.getContentPane.add (This.jToolBar1, java_Package.awt.BorderLayout.NORTH);
        This.jPanel1.setLayout (GridLayout_Package.Create (1, 0));
        This.mainJPanel.setLayout (GridLayout_Package.Create (1, 0));
        This.jTabbedPane.setMinimumSize (Dimension_Package.Create (550, 400));
        This.jTabbedPane.addChangeListener (ChangeListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure stateChanged (This : in out ; evt_Param : access ChangeEvent'Class) is
--        evt : ChangeEvent_Access := ChangeEvent_Access (evt_Param);
--     begin
--                  This.jTabbedPaneStateChanged (evt);
--     end stateChanged;
);
        This.mainJPanel.add (This.jTabbedPane);
        This.jPanel1.add (This.mainJPanel);
        This.getContentPane.add (This.jPanel1, java_Package.awt.BorderLayout.CENTER);
        This.statusJPanel.setLayout (GridLayout_Package.Create (1, 0));
        MyFrame_Package.statusJLabel.setText (To_Unbounded_String ("Status Bar"));
        This.statusJPanel.add (MyFrame_Package.statusJLabel);
        This.getContentPane.add (This.statusJPanel, java_Package.awt.BorderLayout.SOUTH);
        This.fileJMenu.setText (To_Unbounded_String ("File"));
        This.fileJMenu.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.fileJMenuActionPerformed (evt);
--     end actionPerformed;
);
        This.newJMenuItem.setText (To_Unbounded_String ("New"));
        This.newJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.newJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.fileJMenu.add (This.newJMenuItem);
        This.openJMenuItem.setText (To_Unbounded_String ("Open"));
        This.openJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.openJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.fileJMenu.add (This.openJMenuItem);
        This.saveJMenuItem.setText (To_Unbounded_String ("Save"));
        This.saveJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.saveJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.fileJMenu.add (This.saveJMenuItem);
        This.saveAsJMenuItem.setText (To_Unbounded_String ("SaveAs"));
        This.fileJMenu.add (This.saveAsJMenuItem);
        This.exportJMenuItem1.setText (To_Unbounded_String ("Export"));
        This.exportJMenuItem1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.exportJMenuItem1ActionPerformed (evt);
--     end actionPerformed;
);
        This.fileJMenu.add (This.exportJMenuItem1);
        This.exitJMenuItem.setText (To_Unbounded_String ("Exit"));
        This.exitJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.exitJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.fileJMenu.add (This.exitJMenuItem);
        This.menuJMenuBar.add (This.fileJMenu);
        This.viewJMenu.setText (To_Unbounded_String ("View"));
        This.zoomInJMenuItem.setText (To_Unbounded_String ("Zoom In"));
        This.zoomInJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.zoomInJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.viewJMenu.add (This.zoomInJMenuItem);
        This.zoomOutJMenuItem.setText (To_Unbounded_String ("Zoom Out"));
        This.zoomOutJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.zoomOutJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.viewJMenu.add (This.zoomOutJMenuItem);
        This.menuJMenuBar.add (This.viewJMenu);
        This.objectJMenu.setText (To_Unbounded_String ("Objects"));
        This.explodeAllJMenuItem.setText (To_Unbounded_String ("Explode All"));
        This.explodeAllJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.explodeAllJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.objectJMenu.add (This.explodeAllJMenuItem);
        This.menuJMenuBar.add (This.objectJMenu);
        This.frameJMenu.setText (To_Unbounded_String ("Frame"));
        This.frameJMenu.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.frameJMenuActionPerformed (evt);
--     end actionPerformed;
);
        This.previousFrameJMenuItem.setText (To_Unbounded_String ("Previous"));
        This.frameJMenu.add (This.previousFrameJMenuItem);
        This.nextFrameJMenuItem.setText (CommonLabels_Package.getInstance.NEXT);
        This.frameJMenu.add (This.nextFrameJMenuItem);
        This.removeJMenuItem.setText (To_Unbounded_String ("Remove"));
        This.frameJMenu.add (This.removeJMenuItem);
        This.copyJMenuItem1.setText (To_Unbounded_String ("Copy"));
        This.frameJMenu.add (This.copyJMenuItem1);
        This.insertAfterJMenuItem.setText (To_Unbounded_String ("Ins After"));
        This.frameJMenu.add (This.insertAfterJMenuItem);
        This.insertBeforeJMenuItem.setText (To_Unbounded_String ("Ins Before"));
        This.frameJMenu.add (This.insertBeforeJMenuItem);
        This.menuJMenuBar.add (This.frameJMenu);
        This.generateJMenu.setText (To_Unbounded_String ("Generate"));
        This.centerJMenuItem.setText (To_Unbounded_String ("Center"));
        This.centerJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.centerJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.generateJMenu.add (This.centerJMenuItem);
        This.autoDamageJMenuItem.setText (To_Unbounded_String ("Damage"));
        This.generateJMenu.add (This.autoDamageJMenuItem);
        This.autoExplodeJMenuItem.setText (To_Unbounded_String ("Explode"));
        This.autoExplodeJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.autoExplodeJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.generateJMenu.add (This.autoExplodeJMenuItem);
        This.autoGrowJMenuItem.setText (To_Unbounded_String ("Grow"));
        This.generateJMenu.add (This.autoGrowJMenuItem);
        This.jMenuItem1.setText (To_Unbounded_String ("Mirror"));
        This.jMenuItem1.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent'Class) is
--        evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  This.jMenuItem1ActionPerformed (evt);
--     end actionPerformed;
);
        This.generateJMenu.add (This.jMenuItem1);
        This.autoRotateGenerationJMenuItem.setText (To_Unbounded_String ("Rotate"));
        This.autoRotateGenerationJMenuItem.addMouseListener (MouseAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure mousePressed (This : in out ; evt_Param : access MouseEvent'Class) is
--        evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
--     begin
--                  This.autoRotateGenerationJMenuItemMousePressed (evt);
--     end mousePressed;
);
        This.generateJMenu.add (This.autoRotateGenerationJMenuItem);
        This.autoSheildMenuItem.setText (To_Unbounded_String ("Shield"));
        This.generateJMenu.add (This.autoSheildMenuItem);
        This.autoShrinkJMenuItem.setText (To_Unbounded_String ("Shrink"));
        This.generateJMenu.add (This.autoShrinkJMenuItem);
        This.menuJMenuBar.add (This.generateJMenu);
        This.jMenu1.setText (To_Unbounded_String ("Help"));
        This.menuJMenuBar.add (This.jMenu1);
        This.setJMenuBar (This.menuJMenuBar);
        This.pack;
   end initComponents;

   procedure explodeAllJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        begin
            MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.EXPLODE, null))));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("explodeAllJMenuItemMousePressed"), e);
                end;
        end;
   end explodeAllJMenuItemMousePressed;

   procedure autoExplodeJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        begin
            MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.AUTOEXPLODE, null))));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("autoExplodeJMenuItemMousePressed"), e);
                end;
        end;
   end autoExplodeJMenuItemMousePressed;

   procedure stopJjButtonMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.getSelectedWorkArea.stop;
   end stopJjButtonMousePressed;

   procedure playJButtonMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.getSelectedWorkArea.play;
   end playJButtonMousePressed;

   procedure autoRotateGenerationJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.rotateJDialog.setVisible (True);
   end autoRotateGenerationJMenuItemMousePressed;

   procedure zoomOutJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.getSelectedWorkArea.changeZoom (-(1));
   end zoomOutJMenuItemMousePressed;

   procedure zoomInJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.getSelectedWorkArea.changeZoom (1);
   end zoomInJMenuItemMousePressed;

   procedure openJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.openGraphics;
   end openJMenuItemActionPerformed;

   procedure exportJMenuItem1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.export;
   end exportJMenuItem1ActionPerformed;

   procedure saveJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent'Class) is
      evt : MouseEvent_Access := MouseEvent_Access (evt_Param);
   begin
        This.save;
   end saveJMenuItemMousePressed;

   procedure jTabbedPaneStateChanged (This : in out MyFrame; evt_Param : access ChangeEvent'Class) is
      evt : ChangeEvent_Access := ChangeEvent_Access (evt_Param);
   begin
        This.updateSelectedWorkArea;
   end jTabbedPaneStateChanged;

   procedure frameJMenuActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end frameJMenuActionPerformed;

   procedure exitJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        System_Package.exit_Id (0);
   end exitJMenuItemActionPerformed;

   procedure newJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.newGraphics;
   end newJMenuItemActionPerformed;

   procedure fileJMenuActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end fileJMenuActionPerformed;

   procedure exitForm (This : in out MyFrame; evt_Param : access WindowEvent'Class) is
      evt : WindowEvent_Access := WindowEvent_Access (evt_Param);
   begin
        System_Package.exit_Id (0);
   end exitForm;

   procedure openJButtonActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.openGraphics;
   end openJButtonActionPerformed;

   procedure jButton2ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.newGraphics;
   end jButton2ActionPerformed;

   procedure centerJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            MyCanvasEventService_Package.fire (MyCanvasEvent_Package.Create (Java_Object_Access (MyCanvasEventSource_Package.Create (MyCanvasEventService_Package.CENTER, null))));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("centerJMenuItemActionPerformed"), e);
                end;
        end;
   end centerJMenuItemActionPerformed;

   procedure saveJButtonActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.save;
   end saveJButtonActionPerformed;

   procedure jButton1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        This.export;
   end jButton1ActionPerformed;

   procedure jMenuItem1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent'Class) is
      evt : ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            This.getSelectedWorkArea.autoMirror;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("centerJMenuItemActionPerformed"), e);
                end;
        end;
   end jMenuItem1ActionPerformed;

   procedure onFiles (This : in out MyFrame; files : File_Access_Array_Access) is
      document : Document_Access;
      workAreaJPanel : WorkAreaJPanel_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Reading: ") & Java_Image (files), MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onFiles"));
            for index in 0 .. (files'Length) - 1 loop
                document := DomHelper_Package.getInstance.createDocument (files (index));
                workAreaJPanel := WorkAreaJPanel_Package.Create (WorkAreaDom_Package.Create (document), This.getSize);
                workAreaJPanel.setLayout (GridLayout_Package.Create (1, 1));
                This.add (WorkAreaJPanelInterface_Access (workAreaJPanel));
            end loop;
            This.fileJDialog.setVisible (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onFiles"), e);
                end;
        end;
   end onFiles;

   procedure newGraphics (This : in out MyFrame) is
      newName : Unbounded_String;
      dim : Dimension_Access;
      newDialog : NewWorkAreaJDialog_Access;
   begin
        begin
            newName := To_Unbounded_String ("graphic") & Java_Image (MyFrame_Package.numberOfWorkAreas);
            dim := This.getSize;
            newDialog := NewWorkAreaJDialog_Package.Create (MyFrame_Access'(This'Unchecked_Access), False, dim, newName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.MENUEVENT) then
                This.guiLog.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("newJMenuItemActionPerformed"), e);
            end if;
                end;
        end;
   end newGraphics;

   procedure openGraphics (This : in out MyFrame) is
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("openImageJMenuItemActionPerformed"));
            This.fileJDialog.setVisible (True);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.MENUEVENT) then
                This.guiLog.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("open"), e);
            end if;
                end;
        end;
   end openGraphics;

   procedure export (This : in out MyFrame) is
      workAreaJPanel : WorkAreaJPanelInterface_Access;
      file : File_Access;
      document : Document_Access;
   begin
        begin
            workAreaJPanel := WorkAreaJPanelInterface_Access (This.jTabbedPane.getSelectedComponent);
            file := File_Package.Create (SAVE_PATH & To_Unbounded_String ("/") & workAreaJPanel.getName & This.JAVAEXTENSION);
            document := workAreaJPanel.toDocument;
            This.logUtil.putF (To_Unbounded_String ("Export: ") & DomHelper_Package.getInstance.toString (document), MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("exportJMenuItem1ActionPerformed"));
            This.xslHelper.export (file, Java_Image (MyFrame_Package.TEMPLATE_EXPORT_PATH) & To_Unbounded_String ("/") & This.JAVA_TEMPLATE, document);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.MENUEVENT) then
                This.guiLog.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("export"), e);
            end if;
                end;
        end;
   end export;

   procedure save (This : in out MyFrame) is
      workAreaJPanel : WorkAreaJPanelInterface_Access;
   begin
        begin
            workAreaJPanel := WorkAreaJPanelInterface_Access (This.jTabbedPane.getSelectedComponent);
            DomHelper_Package.getInstance.save (File_Package.Create (SAVE_PATH & To_Unbounded_String ("/") & workAreaJPanel.getName & This.SAVEEXTENSION), workAreaJPanel.toDocument);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.MENUEVENT) then
                This.guiLog.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), This.commonStrings.SAVE, e);
            end if;
                end;
        end;
   end save;

   --  throws Exception
   procedure onHashMap (This : in out MyFrame; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
      angleIncrementInteger : Integer;
      totalRotationInteger : Integer;
   begin
        angleIncrementInteger := Integer (hashMap.get (To_Unbounded_String (Java_Image (0))));
        totalRotationInteger := Integer (hashMap.get (To_Unbounded_String (Java_Image (1))));
        This.getSelectedWorkArea.autoRotate (angleIncrementInteger.intValue, totalRotationInteger.intValue);
   end onHashMap;

   function getSelectedWorkArea (This : in out MyFrame) return WorkAreaJPanelInterface_Access is
   begin
        return WorkAreaJPanelInterface_Access (This.jTabbedPane.getSelectedComponent);
   end getSelectedWorkArea;

   procedure updateSelectedWorkArea (This : in out MyFrame) is
      numberOfTabs : Integer;
      workAreaJPanel : WorkAreaJPanelInterface_Access;
      index : Integer;
   begin
        numberOfTabs := This.jTabbedPane.getTabCount;
        for index in 0 .. (numberOfTabs) - 1 loop
            workAreaJPanel := WorkAreaJPanelInterface_Access (This.jTabbedPane.getComponentAt (index));
            workAreaJPanel.deselect;
        end loop;
        workAreaJPanel := WorkAreaJPanelInterface_Access (This.jTabbedPane.getSelectedComponent);
        if (workAreaJPanel) /= (null) then
            workAreaJPanel.select_Id;
        end if;
   end updateSelectedWorkArea;

   --  throws Exception
   procedure add (This : in out MyFrame; newCanvasInterface_Param : access WorkAreaJPanelInterface'Class) is
      newCanvasInterface : WorkAreaJPanelInterface_Access := WorkAreaJPanelInterface_Access (newCanvasInterface_Param);
      animationThread : Thread_Access;
   begin
        begin
            numberOfWorkAreas := numberOfWorkAreas + 1;
            if (numberOfWorkAreas) = (MyFrame_Package.MAXWORKAREAS) then
                Java_Throw (Java_New_Exception ("Exception"));
            end if;
            This.jTabbedPane.addTab (newCanvasInterface.getName, JPanel_Access (newCanvasInterface));
            This.jTabbedPane.setSelectedComponent (JPanel_Access (newCanvasInterface));
            animationThread := Thread_Package.Create (Runnable_Access (newCanvasInterface));
            animationThread.start;
            This.updateSelectedWorkArea;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.GRAPHICSCREATION) then
                This.guiLog.put (This.commonStrings.EXCEPTION_Id, MyFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("addNewCanvas"), e);
            end if;
                end;
        end;
   end add;

   procedure keyPressed (This : in out MyFrame; keyEvent_Param : access KeyEvent'Class) is
      keyEvent : KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        This.getSelectedWorkArea.keyPressed (keyEvent);
   end keyPressed;

   procedure keyReleased (This : in out MyFrame; keyEvent_Param : access KeyEvent'Class) is
      keyEvent : KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyReleased;

   procedure keyTyped (This : in out MyFrame; keyEvent_Param : access KeyEvent'Class) is
      keyEvent : KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyTyped;

   procedure main (args : Unbounded_String_Array_Access) is
      logUtil : LogUtil_Access;
   begin
        begin
            AngleFactory_Package.getInstance;
            SmallIntegerSingletonFactory_Package.getInstance.init;
            MyFrame_Package.Create.show;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            logUtil.put (CommonStrings_Package.getInstance.EXCEPTION_Id, null, To_Unbounded_String ("main"), e);
                end;
        end;
   end main;

begin
   null;
   MAXWORKAREAS := 10;
   numberOfWorkAreas := 0;
   PATH := To_Unbounded_String ("G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication");
   SAVE_PATH := Java_Image (MyFrame_Package.PATH) & To_Unbounded_String ("/save");
   TEMPLATE_EXPORT_PATH := Java_Image (MyFrame_Package.PATH) & To_Unbounded_String ("/templates/export");
   statusJLabel := null;

end org.allbinary.graphics.j2me.MyFrame_Package;


