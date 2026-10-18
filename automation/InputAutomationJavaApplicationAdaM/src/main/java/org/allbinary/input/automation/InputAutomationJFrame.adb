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


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;
with org.allbinary.gui.swing.workers.JListSwingWorker_Package; use org.allbinary.gui.swing.workers.JListSwingWorker_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package; use org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.osgi.DesktopBundle_Package; use org.allbinary.input.automation.osgi.DesktopBundle_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.java.help.JavaHelpUtil_Package; use org.allbinary.logic.java.help.JavaHelpUtil_Package;
with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package; use org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
with org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;

package body org.allbinary.input.automation.InputAutomationJFrame_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package BasicTextJDialog_Package renames Standard.org.allbinary.gui.dialog.BasicTextJDialog_Package;
   package JListSwingWorker_Package renames Standard.org.allbinary.gui.swing.workers.JListSwingWorker_Package;
   package InputAutomationConfiguration_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
   package InputAutomationConfigurationFactory_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;
   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package DesktopBundle_Package renames Standard.org.allbinary.input.automation.osgi.DesktopBundle_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package JavaHelpUtil_Package renames Standard.org.allbinary.logic.java.help.JavaHelpUtil_Package;
   package WebappClassLoaderInfo_Package renames Standard.org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
   package InputAutomationClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;
   procedure Initialize_Fields (This : in out InputAutomationJFrame'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.inputAutomationModuleConfigurations := InputAutomationModuleConfigurations_Package.Create;
      This.inputAutomationModuleFactory := null;
      This.inputAutomationModuleInterface := null;
      This.runnableInterface := null;
      This.thread := null;
      
      This.uri := URI_Package.Create (To_Unbounded_String ("http://geocities.com/allbinary/"));
      This.aboutJMenuItem := null;
      This.automationModuleConfigurationJPanel := null;
      This.gameRobotJTabbedPane := null;
      This.helpJMenuItem := null;
      This.inputAutomationModuleJList := null;
      This.inputAutomationModuleJPanel := null;
      This.jScrollPane1 := null;
      This.mainJMenuBar := null;
      This.modulesJMenuItem := null;
      This.noModuleSelectedJDialog := null;
      This.noModuleSelectedJLabel := null;
      This.optionsJMenu := null;
      This.processingJMenu := null;
      This.startJMenuItem := null;
      This.stopJMenuItem := null;
      This.stopOnFocusJCheckBoxMenuItem := null;
      This.subscriptionJMenuItem := null;
      This.toolsJMenu := null;
      This.updatesJMenuItem := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationJFrame'Class) is
      url : URL_Access;
      imageIcon : ImageIcon_Access;
   begin
      JFrame_Package.Initialize (This);
      Initialize_Fields (This);
        InputAutomationJFrame'Class (This).initComponents;
        url := This.all'Tag.getResource (To_Unbounded_String ("/help/Help.hs"));
        This.logUtil.putF (To_Unbounded_String ("URL: ") & Java_Image (url), InputAutomationJFrame_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.helpSet := JavaHelpUtil_Package.getInstance.getHelpSet (url);
        url := This.all'Tag.getResource (To_Unbounded_String ("/resources/allbinaryicon8bit.jpg"));
        imageIcon := ImageIcon_Package.Create (url);
        InputAutomationJFrame'Class (This).setIconImage (imageIcon.getImage);
        InputAutomationJFrame'Class (This).init;
   end Initialize;

   function Create return InputAutomationJFrame_Access is
      This : constant InputAutomationJFrame_Access := new InputAutomationJFrame;
   begin
      InputAutomationJFrame_Package.Initialize (This.all);
      return This;
   end Create;

   procedure helpSetAdded (This : in out InputAutomationJFrame; helpSetEvent_Param : access HelpSetEvent_Package.HelpSetEvent'Class) is
      helpSetEvent : constant HelpSetEvent_Access := HelpSetEvent_Access (helpSetEvent_Param);
   begin
        This.helpSet.add (helpSetEvent.getHelpSet);
   end helpSetAdded;

   procedure helpSetRemoved (This : in out InputAutomationJFrame; helpSetEvent_Param : access HelpSetEvent_Package.HelpSetEvent'Class) is
      helpSetEvent : constant HelpSetEvent_Access := HelpSetEvent_Access (helpSetEvent_Param);
   begin
        This.helpSet.remove (helpSetEvent.getHelpSet);
   end helpSetRemoved;

   --  throws Exception
   procedure init (This : in out InputAutomationJFrame) is
      inputAutomationConfigurationFactory : InputAutomationConfigurationFactory_Access;
      inputAutomationModuleConfigurationList : List_Access;
   begin
        inputAutomationConfigurationFactory := InputAutomationConfigurationFactory_Package.getInstance;
        inputAutomationConfigurationFactory.init (InputAutomationClientInformationFactory_Package.getInstance);
        inputAutomationModuleConfigurationList := inputAutomationConfigurationFactory.inputAutomationConfiguration.getInputAutomationModuleConfigurationList;
        if (inputAutomationModuleConfigurationList) = (null) then
            null;
        else
            This.inputAutomationModuleConfigurations := InputAutomationModuleConfigurations_Package.Create (inputAutomationModuleConfigurationList);
        end if;
        This.inputAutomationModuleFactory := InputAutomationModuleFactoryFactory_Package.Create (This.inputAutomationModuleConfigurations, InputAutomationJFrame_Access'(This'Unchecked_Access));
        (JListSwingWorker_Package.Create (This.inputAutomationModuleJList, This.inputAutomationModuleFactory.getListModel)).execute;
        This.gameRobotJTabbedPane.setEnabledAt (1, False);
        This.gameRobotJTabbedPane.setSelectedIndex (0);
   end init;

   procedure initComponents (This : in out InputAutomationJFrame) is
      noModuleSelectedJDialogLayout : GroupLayout_Access;
      inputAutomationModuleJPanelLayout : GroupLayout_Access;
      automationModuleConfigurationJPanelLayout : GroupLayout_Access;
      layout : GroupLayout_Access;
   begin
        This.noModuleSelectedJDialog := JDialog_Package.Create;
        This.noModuleSelectedJLabel := JLabel_Package.Create;
        This.gameRobotJTabbedPane := JTabbedPane_Package.Create;
        This.inputAutomationModuleJPanel := JPanel_Package.Create;
        This.jScrollPane1 := JScrollPane_Package.Create;
        This.inputAutomationModuleJList := JList_Package.Create;
        This.automationModuleConfigurationJPanel := JPanel_Package.Create;
        This.mainJMenuBar := JMenuBar_Package.Create;
        This.processingJMenu := JMenu_Package.Create;
        This.startJMenuItem := JMenuItem_Package.Create;
        This.stopJMenuItem := JMenuItem_Package.Create;
        This.optionsJMenu := JMenu_Package.Create;
        This.stopOnFocusJCheckBoxMenuItem := JCheckBoxMenuItem_Package.Create;
        This.toolsJMenu := JMenu_Package.Create;
        This.helpJMenuItem := JMenuItem_Package.Create;
        This.updatesJMenuItem := JMenuItem_Package.Create;
        This.subscriptionJMenuItem := JMenuItem_Package.Create;
        This.modulesJMenuItem := JMenuItem_Package.Create;
        This.aboutJMenuItem := JMenuItem_Package.Create;
        This.noModuleSelectedJDialog.setMinimumSize (Dimension_Package.Create (200, 100));
        This.noModuleSelectedJLabel.setText (To_Unbounded_String ("Please Select A Module"));
        noModuleSelectedJDialogLayout := GroupLayout_Package.Create (This.noModuleSelectedJDialog.getContentPane);
        This.noModuleSelectedJDialog.getContentPane.setLayout (noModuleSelectedJDialogLayout);
        noModuleSelectedJDialogLayout.setHorizontalGroup (noModuleSelectedJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (noModuleSelectedJDialogLayout.createSequentialGroup.addContainerGap.addComponent (This.noModuleSelectedJLabel).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
        noModuleSelectedJDialogLayout.setVerticalGroup (noModuleSelectedJDialogLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.noModuleSelectedJLabel, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 48, Short_Integer'Last));
        InputAutomationJFrame'Class (This).setDefaultCloseOperation (javax_Package.swing.WindowConstants.EXIT_ON_CLOSE);
        InputAutomationJFrame'Class (This).setMinimumSize (Dimension_Package.Create (325, 215));
        InputAutomationJFrame'Class (This).setResizable (False);
        InputAutomationJFrame'Class (This).addWindowFocusListener (WindowFocusListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure windowGainedFocus (This : in out ; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
--        evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).formWindowGainedFocus (evt);
--     end windowGainedFocus;
--              
--     procedure windowLostFocus (This : in out ; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
--        evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).formWindowLostFocus (evt);
--     end windowLostFocus;
);
        InputAutomationJFrame'Class (This).addFocusListener (FocusAdapter_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure focusGained (This : in out ; evt_Param : access FocusEvent_Package.FocusEvent'Class) is
--        evt : constant FocusEvent_Access := FocusEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).formFocusGained (evt);
--     end focusGained;
--              
--     procedure focusLost (This : in out ; evt_Param : access FocusEvent_Package.FocusEvent'Class) is
--        evt : constant FocusEvent_Access := FocusEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).formFocusLost (evt);
--     end focusLost;
);
        This.gameRobotJTabbedPane.setMinimumSize (Dimension_Package.Create (320, 200));
        This.inputAutomationModuleJList.setMinimumSize (Dimension_Package.Create (200, 0));
        This.inputAutomationModuleJList.addListSelectionListener (ListSelectionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure valueChanged (This : in out ; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class) is
--        evt : constant ListSelectionEvent_Access := ListSelectionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).inputAutomationModuleJListValueChanged (evt);
--     end valueChanged;
);
        This.jScrollPane1.setViewportView (This.inputAutomationModuleJList);
        inputAutomationModuleJPanelLayout := GroupLayout_Package.Create (This.inputAutomationModuleJPanel);
        This.inputAutomationModuleJPanel.setLayout (inputAutomationModuleJPanelLayout);
        inputAutomationModuleJPanelLayout.setHorizontalGroup (inputAutomationModuleJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (inputAutomationModuleJPanelLayout.createSequentialGroup.addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 199, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap (367, Short_Integer'Last)));
        inputAutomationModuleJPanelLayout.setVerticalGroup (inputAutomationModuleJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGroup (inputAutomationModuleJPanelLayout.createSequentialGroup.addComponent (This.jScrollPane1, javax_Package.swing.GroupLayout.PREFERRED_SIZE, 330, javax_Package.swing.GroupLayout.PREFERRED_SIZE).addContainerGap (javax_Package.swing.GroupLayout.DEFAULT_SIZE, Short_Integer'Last)));
        This.gameRobotJTabbedPane.addTab (To_Unbounded_String ("Modules"), This.inputAutomationModuleJPanel);
        automationModuleConfigurationJPanelLayout := GroupLayout_Package.Create (This.automationModuleConfigurationJPanel);
        This.automationModuleConfigurationJPanel.setLayout (automationModuleConfigurationJPanelLayout);
        automationModuleConfigurationJPanelLayout.setHorizontalGroup (automationModuleConfigurationJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 566, Short_Integer'Last));
        automationModuleConfigurationJPanelLayout.setVerticalGroup (automationModuleConfigurationJPanelLayout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 334, Short_Integer'Last));
        This.gameRobotJTabbedPane.addTab (To_Unbounded_String ("Configuration"), This.automationModuleConfigurationJPanel);
        This.processingJMenu.setText (To_Unbounded_String ("Processing"));
        This.processingJMenu.setToolTipText (To_Unbounded_String ("Set module processing state"));
        This.startJMenuItem.setText (This.commonStrings.START);
        This.startJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).startJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.startJMenuItem);
        This.stopJMenuItem.setText (To_Unbounded_String ("Stop"));
        This.stopJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).stopJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.processingJMenu.add (This.stopJMenuItem);
        This.mainJMenuBar.add (This.processingJMenu);
        This.optionsJMenu.setText (To_Unbounded_String ("Options"));
        This.optionsJMenu.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).optionsJMenuActionPerformed (evt);
--     end actionPerformed;
);
        This.stopOnFocusJCheckBoxMenuItem.setSelected (True);
        This.stopOnFocusJCheckBoxMenuItem.setEnabled (False);
        This.stopOnFocusJCheckBoxMenuItem.setLabel (To_Unbounded_String ("Stop Module On Focus"));
        This.stopOnFocusJCheckBoxMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).stopOnFocusJCheckBoxMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.optionsJMenu.add (This.stopOnFocusJCheckBoxMenuItem);
        This.mainJMenuBar.add (This.optionsJMenu);
        This.toolsJMenu.setText (To_Unbounded_String ("Help"));
        This.helpJMenuItem.setText (To_Unbounded_String ("Help"));
        This.helpJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).helpJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.toolsJMenu.add (This.helpJMenuItem);
        This.updatesJMenuItem.setText (To_Unbounded_String ("Updates"));
        This.updatesJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).updatesJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.toolsJMenu.add (This.updatesJMenuItem);
        This.subscriptionJMenuItem.setText (To_Unbounded_String ("Subscription"));
        This.subscriptionJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).subscriptionJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.toolsJMenu.add (This.subscriptionJMenuItem);
        This.modulesJMenuItem.setText (To_Unbounded_String ("Module Manager"));
        This.modulesJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).modulesJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.toolsJMenu.add (This.modulesJMenuItem);
        This.aboutJMenuItem.setText (To_Unbounded_String ("About"));
        This.aboutJMenuItem.addActionListener (ActionListener_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure actionPerformed (This : in out ; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
--        evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
--     begin
--                  InputAutomationJFrame'Class (This).aboutJMenuItemActionPerformed (evt);
--     end actionPerformed;
);
        This.toolsJMenu.add (This.aboutJMenuItem);
        This.mainJMenuBar.add (This.toolsJMenu);
        InputAutomationJFrame'Class (This).setJMenuBar (This.mainJMenuBar);
        layout := GroupLayout_Package.Create (InputAutomationJFrame'Class (This).getContentPane);
        InputAutomationJFrame'Class (This).getContentPane.setLayout (layout);
        layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.gameRobotJTabbedPane, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 571, Short_Integer'Last));
        layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addComponent (This.gameRobotJTabbedPane, javax_Package.swing.GroupLayout.Alignment.TRAILING, javax_Package.swing.GroupLayout.DEFAULT_SIZE, 359, Short_Integer'Last));
        InputAutomationJFrame'Class (This).pack;
   end initComponents;

   procedure subscriptionJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            Desktop_Package.getDesktop.browse (This.uri);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("subscriptionJMenuItemActionPerformed"), e);
                end;
        end;
   end subscriptionJMenuItemActionPerformed;

   procedure updatesJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            Desktop_Package.getDesktop.browse (This.uri);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("updatesJMenuItemActionPerformed"), e);
                end;
        end;
   end updatesJMenuItemActionPerformed;

   procedure aboutJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
      textJDialog : JDialog_Access;
   begin
        textJDialog := JDialog_Access (BasicTextJDialog_Package.Create (To_Unbounded_String ("Copyright (c) 2002-2007 AllBinary")));
        textJDialog.setVisible (True);
        textJDialog.setLocationRelativeTo (InputAutomationJFrame_Access'(This'Unchecked_Access));
   end aboutJMenuItemActionPerformed;

   procedure modulesJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            DesktopBundle_Package.Create.start;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("modulesJMenuItemActionPerformed"), e);
                end;
        end;
   end modulesJMenuItemActionPerformed;

   procedure helpJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        JavaHelpUtil_Package.getInstance.show (This.helpSet);
   end helpJMenuItemActionPerformed;

   procedure stopOnFocusJCheckBoxMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end stopOnFocusJCheckBoxMenuItemActionPerformed;

   procedure optionsJMenuActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        null;
   end optionsJMenuActionPerformed;

   procedure formWindowLostFocus (This : in out InputAutomationJFrame; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
      evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Nothing"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("focusLost"));
   end formWindowLostFocus;

   procedure formWindowGainedFocus (This : in out InputAutomationJFrame; evt_Param : access WindowEvent_Package.WindowEvent'Class) is
      evt : constant WindowEvent_Access := WindowEvent_Access (evt_Param);
   begin
        if This.stopOnFocusJCheckBoxMenuItem.isSelected then
            This.logUtil.putF (To_Unbounded_String ("Stopping"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("focusGained"));
            if (This.runnableInterface) /= (null) then
                This.runnableInterface.setRunning (False);
            end if;
        end if;
   end formWindowGainedFocus;

   procedure formFocusLost (This : in out InputAutomationJFrame; evt_Param : access FocusEvent_Package.FocusEvent'Class) is
      evt : constant FocusEvent_Access := FocusEvent_Access (evt_Param);
   begin
        null;
   end formFocusLost;

   procedure formFocusGained (This : in out InputAutomationJFrame; evt_Param : access FocusEvent_Package.FocusEvent'Class) is
      evt : constant FocusEvent_Access := FocusEvent_Access (evt_Param);
   begin
        null;
   end formFocusGained;

   procedure inputAutomationModuleJListValueChanged (This : in out InputAutomationJFrame; evt_Param : access ListSelectionEvent_Package.ListSelectionEvent'Class) is
      evt : constant ListSelectionEvent_Access := ListSelectionEvent_Access (evt_Param);
      gameAutomationRobotModuleNameString : Unbounded_String;
      layout : GroupLayout_Access;
   begin
        begin
            gameAutomationRobotModuleNameString := Java_Unbox (This.inputAutomationModuleJList.getSelectedValue);
            if (gameAutomationRobotModuleNameString) /= (Null_Unbounded_String) then
                This.inputAutomationModuleInterface := This.inputAutomationModuleFactory.getInstance (gameAutomationRobotModuleNameString);
                InputAutomationJFrame'Class (This).getAutomationModuleConfigurationJPanel.removeAll;
                layout := GroupLayout_Access (InputAutomationJFrame'Class (This).getAutomationModuleConfigurationJPanel.getLayout);
                layout.setHorizontalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 395, Short_Integer'Last).addComponent (This.inputAutomationModuleInterface.getConfigurationJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
                layout.setVerticalGroup (layout.createParallelGroup (javax_Package.swing.GroupLayout.Alignment.LEADING).addGap (0, 256, Short_Integer'Last).addComponent (This.inputAutomationModuleInterface.getConfigurationJPanel, javax_Package.swing.GroupLayout.PREFERRED_SIZE, javax_Package.swing.GroupLayout.DEFAULT_SIZE, javax_Package.swing.GroupLayout.PREFERRED_SIZE));
                This.gameRobotJTabbedPane.setEnabledAt (1, True);
                This.logUtil.putF (To_Unbounded_String ("Setting Module: ") & gameAutomationRobotModuleNameString & To_Unbounded_String (" and Configuration JPanel"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("gameAutomationRobotModuleJListValueChanged"));
            else
                This.logUtil.putF (To_Unbounded_String ("Module name was null"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("gameAutomationRobotModuleJListValueChanged"));
                This.gameRobotJTabbedPane.setEnabledAt (1, False);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("gameAutomationRobotModuleJListValueChanged"), e);
                end;
        end;
   end inputAutomationModuleJListValueChanged;

   procedure stopJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        if (This.runnableInterface) /= (null) then
            This.runnableInterface.setRunning (False);
        else
            This.noModuleSelectedJDialog.setVisible (True);
            This.noModuleSelectedJDialog.setLocationRelativeTo (InputAutomationJFrame_Access'(This'Unchecked_Access));
        end if;
   end stopJMenuItemActionPerformed;

   procedure startJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class) is
      evt : constant ActionEvent_Access := ActionEvent_Access (evt_Param);
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Starting"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("startJMenuItemActionPerformed"));
            if (This.inputAutomationModuleInterface) /= (null) then
                This.runnableInterface := This.inputAutomationModuleInterface.getInstance;
                if (This.runnableInterface) /= (null) then
                    This.thread := Thread_Package.Create (This.runnableInterface);
                    This.thread.setPriority ((Thread_Package.MIN_PRIORITY) + (1));
                    This.thread.start;
                else
                    This.logUtil.putF (To_Unbounded_String ("Runnnable was null"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("startJMenuItemActionPerformed"));
                    This.noModuleSelectedJDialog.setVisible (True);
                    This.noModuleSelectedJDialog.setLocationRelativeTo (InputAutomationJFrame_Access'(This'Unchecked_Access));
                end if;
            else
                This.logUtil.putF (To_Unbounded_String ("InputAutomationModuleInterface was null"), InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("startJMenuItemActionPerformed"));
                This.noModuleSelectedJDialog.setVisible (True);
                This.noModuleSelectedJDialog.setLocationRelativeTo (InputAutomationJFrame_Access'(This'Unchecked_Access));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("startJMenuItemActionPerformed"), e);
                end;
        end;
   end startJMenuItemActionPerformed;

   function getInstance return InputAutomationJFrame_Access is
   begin
        return InputAutomationJFrame_Package.INPUTAUTOMATION_JFRAME;
   end getInstance;

   procedure destroy is
   begin
        InputAutomationJFrame_Package.INPUTAUTOMATION_JFRAME.setVisible (False);
   end destroy;

   procedure create (inputAutomationBundleActivatorListenerInterface_Param : access InputAutomationBundleActivatorListenerInterface_Package.InputAutomationBundleActivatorListenerInterface'Class) is
      inputAutomationBundleActivatorListenerInterface : constant InputAutomationBundleActivatorListenerInterface_Access := InputAutomationBundleActivatorListenerInterface_Access (inputAutomationBundleActivatorListenerInterface_Param);
      appUrlGlobals : AppUrlGlobals_Access;
   begin
        LogConfigTypeFactory_Package.getInstance;
        appUrlGlobals := AppUrlGlobals_Package.Create;
        appUrlGlobals.setWebappPath (To_Unbounded_String ("G:/mnt/bc/mydev/work_automation/automation/run/"));
        URLGLOBALS_Package.init (appUrlGlobals);
        WebappClassLoaderInfo_Package.setLoader (appUrlGlobals.all'Tag.getClassLoader);
        java_Package.awt.EventQueue.invokeLater (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     procedure run (This : in out ) is
--        logUtil : LogUtil_Access;
--        commonStrings : CommonStrings_Access;
--     begin
--                  logUtil := LogUtil_Package.getInstance;
--                  commonStrings := CommonStrings_Package.getInstance;
--                  begin
--                      logUtil.putF (To_Unbounded_String ("Running"), InputAutomationJFrame_Access'(This'Unchecked_Access), commonStrings.RUN);
--                      INPUTAUTOMATION_JFRAME := InputAutomationJFrame_Package.Create;
--                      InputRobotFactory_Package.getInstance.addListener (InputAutomationJFrame_Package.getInstance);
--                      if (inputAutomationBundleActivatorListenerInterface) /= (null) then
--                          inputAutomationBundleActivatorListenerInterface.registerAsService;
--                          inputAutomationBundleActivatorListenerInterface.useServices;
--                      end if;
--                      INPUTAUTOMATION_JFRAME.setVisible (True);
--                  exception
--                      when Java_Occurrence : others =>
--                          declare
--                              e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                          begin
--                      logUtil.put (commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                          end;
--                  end;
--     end run;
);
   end create;

   --  throws Exception
   procedure main (args : Unbounded_String_Array_Access) is
   begin
        InputAutomationJFrame_Package.create (null);
   end main;

   function getAutomationModuleConfigurationJPanel (This : in out InputAutomationJFrame) return JPanel_Access is
   begin
        return This.automationModuleConfigurationJPanel;
   end getAutomationModuleConfigurationJPanel;

   procedure setAutomationModuleConfigurationJPanel (This : in out InputAutomationJFrame; automationModuleConfigurationJPanel_Param : access JPanel_Package.JPanel'Class) is
      automationModuleConfigurationJPanel : constant JPanel_Access := JPanel_Access (automationModuleConfigurationJPanel_Param);
   begin
        This.automationModuleConfigurationJPanel := automationModuleConfigurationJPanel;
   end setAutomationModuleConfigurationJPanel;

   procedure onAdd (This : in out InputAutomationJFrame; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent_Package.InputAutomationRobotChangeEvent'Class) is
      inputAutomationRobotChangeEvent : constant InputAutomationRobotChangeEvent_Access := InputAutomationRobotChangeEvent_Access (inputAutomationRobotChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onAdd"));
            InputRobotFactory_Package.getInstance.add (inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper.getInputRobotInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onAdd"), e);
                end;
        end;
   end onAdd;

   procedure onRemove (This : in out InputAutomationJFrame; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent_Package.InputAutomationRobotChangeEvent'Class) is
      inputAutomationRobotChangeEvent : constant InputAutomationRobotChangeEvent_Access := InputAutomationRobotChangeEvent_Access (inputAutomationRobotChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onRemove"));
            InputRobotFactory_Package.getInstance.add (inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper.getInputRobotInterface);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onRemove"), e);
                end;
        end;
   end onRemove;

   procedure onAdd (This : in out InputAutomationJFrame; inputAutomationConfigurationChangeEvent_Param : access InputAutomationConfigurationModuleChangeEvent_Package.InputAutomationConfigurationModuleChangeEvent'Class) is
      inputAutomationConfigurationChangeEvent : constant InputAutomationConfigurationModuleChangeEvent_Access := InputAutomationConfigurationModuleChangeEvent_Access (inputAutomationConfigurationChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onAdd"));
            This.inputAutomationModuleConfigurations.add (inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration);
            InputAutomationJFrame'Class (This).init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onAdd"), e);
                end;
        end;
   end onAdd;

   procedure onRemove (This : in out InputAutomationJFrame; inputAutomationConfigurationChangeEvent_Param : access InputAutomationConfigurationModuleChangeEvent_Package.InputAutomationConfigurationModuleChangeEvent'Class) is
      inputAutomationConfigurationChangeEvent : constant InputAutomationConfigurationModuleChangeEvent_Access := InputAutomationConfigurationModuleChangeEvent_Access (inputAutomationConfigurationChangeEvent_Param);
      inputAutomationConfiguration : InputAutomationConfiguration_Access;
      inputAutomationModuleConfigurationList : List_Access;
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onRemove"));
            inputAutomationConfiguration := InputAutomationConfigurationFactory_Package.getInstance.inputAutomationConfiguration;
            inputAutomationModuleConfigurationList := inputAutomationConfiguration.getInputAutomationModuleConfigurationList;
            if (inputAutomationModuleConfigurationList) = (null) then
                logUtil := LogUtil_Package.getInstance;
                commonStrings := CommonStrings_Package.getInstance;
                logUtil.putF (To_Unbounded_String ("inputAutomationModuleConfigurationList: ") & Java_Image (inputAutomationModuleConfigurationList), InputAutomationJFrame_Access'(This'Unchecked_Access), commonStrings.INIT);
                Java_Throw (Java_New_Exception ("Exception"));
            end if;
            inputAutomationModuleConfigurations := InputAutomationModuleConfigurations_Package.Create (inputAutomationConfiguration.getInputAutomationModuleConfigurationList);
            inputAutomationModuleConfigurations.remove (inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration);
            InputAutomationJFrame'Class (This).init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationJFrame_Access'(This'Unchecked_Access), To_Unbounded_String ("onRemove"), e);
                end;
        end;
   end onRemove;

begin
   null;
   INPUTAUTOMATION_JFRAME := null;

end org.allbinary.input.automation.InputAutomationJFrame_Package;


