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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
--  with java.net.URI_Package; use java.net.URI_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
--  with java.awt.Desktop_Package; use java.awt.Desktop_Package;
--  with java.util.List_Package; use java.util.List_Package;
--  with javax.swing.ImageIcon_Package; use javax.swing.ImageIcon_Package;
--  with javax.swing.JDialog_Package; use javax.swing.JDialog_Package;
--  with javax.help.HelpSet_Package; use javax.help.HelpSet_Package;
--  with javax.help.event.HelpSetEvent_Package; use javax.help.event.HelpSetEvent_Package;
--  with javax.help.event.HelpSetListener_Package; use javax.help.event.HelpSetListener_Package;
with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package; use bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;
with bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package; use bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
with bundle.input.automation.robot.InputAutomationRobotChangeListener_Package; use bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
with org.allbinary.globals.AppUrlGlobals_Package; use org.allbinary.globals.AppUrlGlobals_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.gui.dialog.BasicTextJDialog_Package; use org.allbinary.gui.dialog.BasicTextJDialog_Package;
with org.allbinary.gui.swing.workers.JListSwingWorker_Package; use org.allbinary.gui.swing.workers.JListSwingWorker_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package; use org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
with org.allbinary.input.automation.osgi.DesktopBundle_Package; use org.allbinary.input.automation.osgi.DesktopBundle_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.java.help.JavaHelpUtil_Package; use org.allbinary.logic.java.help.JavaHelpUtil_Package;
with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package; use org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
with org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.RunnableInterface_Package; use org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.input.automation.JFrame_Package; use org.allbinary.input.automation.JFrame_Package;

package org.allbinary.input.automation.InputAutomationJFrame_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package InputAutomationBundleActivatorListenerInterface_Package renames Standard.bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;
   package InputAutomationConfigurationModuleChangeListener_Package renames Standard.bundle.input.automation.module.configuration.InputAutomationConfigurationModuleChangeListener_Package;
   package InputAutomationRobotChangeListener_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotChangeListener_Package;
   package AppUrlGlobals_Package renames Standard.org.allbinary.globals.AppUrlGlobals_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package BasicTextJDialog_Package renames Standard.org.allbinary.gui.dialog.BasicTextJDialog_Package;
   package JListSwingWorker_Package renames Standard.org.allbinary.gui.swing.workers.JListSwingWorker_Package;
   package InputAutomationConfiguration_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;
   package InputAutomationConfigurationFactory_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;
   package InputAutomationConfigurationModuleChangeEvent_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
   package InputAutomationModuleFactoryFactory_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package InputAutomationModuleConfigurations_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
   package DesktopBundle_Package renames Standard.org.allbinary.input.automation.osgi.DesktopBundle_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputAutomationRobotChangeEvent_Package renames Standard.org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package JavaHelpUtil_Package renames Standard.org.allbinary.logic.java.help.JavaHelpUtil_Package;
   package WebappClassLoaderInfo_Package renames Standard.org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
   package InputAutomationClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package RunnableInterface_Package renames Standard.org.allbinary.thread.RunnableInterface_Package;

   type InputAutomationJFrame is tagged;
   type InputAutomationJFrame_Access is access all InputAutomationJFrame'Class;
   type InputAutomationJFrame_Access_Array is array (Natural range <>) of InputAutomationJFrame_Access;
   type InputAutomationJFrame_Access_Array_Access is access all InputAutomationJFrame_Access_Array;

   type InputAutomationJFrame is new JFrame and InputAutomationConfigurationModuleChangeListener and InputAutomationRobotChangeListener and HelpSetListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access;
      inputAutomationModuleFactory : InputAutomationModuleFactoryFactory_Access;
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access;
      runnableInterface : RunnableInterface_Access;
      thread : Thread_Access;
      helpSet : HelpSet_Access;
      uri : URI_Access;
      aboutJMenuItem : JMenuItem_Access;
      automationModuleConfigurationJPanel : JPanel_Access;
      gameRobotJTabbedPane : JTabbedPane_Access;
      helpJMenuItem : JMenuItem_Access;
      inputAutomationModuleJList : JList_Access;
      inputAutomationModuleJPanel : JPanel_Access;
      jScrollPane1 : JScrollPane_Access;
      mainJMenuBar : JMenuBar_Access;
      modulesJMenuItem : JMenuItem_Access;
      noModuleSelectedJDialog : JDialog_Access;
      noModuleSelectedJLabel : JLabel_Access;
      optionsJMenu : JMenu_Access;
      processingJMenu : JMenu_Access;
      startJMenuItem : JMenuItem_Access;
      stopJMenuItem : JMenuItem_Access;
      stopOnFocusJCheckBoxMenuItem : JCheckBoxMenuItem_Access;
      subscriptionJMenuItem : JMenuItem_Access;
      toolsJMenu : JMenu_Access;
      updatesJMenuItem : JMenuItem_Access;
   end record;
   INPUTAUTOMATION_JFRAME : InputAutomationJFrame_Access;

   procedure Initialize (This : in out InputAutomationJFrame'Class);
   function Create return InputAutomationJFrame_Access;
   procedure helpSetAdded (This : in out InputAutomationJFrame; helpSetEvent_Param : access HelpSetEvent'Class);
   procedure helpSetRemoved (This : in out InputAutomationJFrame; helpSetEvent_Param : access HelpSetEvent'Class);
   procedure init (This : in out InputAutomationJFrame);
   procedure initComponents (This : in out InputAutomationJFrame);
   procedure subscriptionJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure updatesJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure aboutJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure modulesJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure helpJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure stopOnFocusJCheckBoxMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure optionsJMenuActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure formWindowLostFocus (This : in out InputAutomationJFrame; evt_Param : access WindowEvent'Class);
   procedure formWindowGainedFocus (This : in out InputAutomationJFrame; evt_Param : access WindowEvent'Class);
   procedure formFocusLost (This : in out InputAutomationJFrame; evt_Param : access FocusEvent'Class);
   procedure formFocusGained (This : in out InputAutomationJFrame; evt_Param : access FocusEvent'Class);
   procedure inputAutomationModuleJListValueChanged (This : in out InputAutomationJFrame; evt_Param : access ListSelectionEvent'Class);
   procedure stopJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   procedure startJMenuItemActionPerformed (This : in out InputAutomationJFrame; evt_Param : access ActionEvent'Class);
   function getInstance return InputAutomationJFrame_Access;
   procedure destroy;
   procedure create (inputAutomationBundleActivatorListenerInterface_Param : access InputAutomationBundleActivatorListenerInterface'Class);
   procedure main (args : Unbounded_String_Array_Access);
   function getAutomationModuleConfigurationJPanel (This : in out InputAutomationJFrame) return JPanel_Access;
   procedure setAutomationModuleConfigurationJPanel (This : in out InputAutomationJFrame; automationModuleConfigurationJPanel_Param : access JPanel'Class);
   procedure onAdd (This : in out InputAutomationJFrame; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent'Class);
   procedure onRemove (This : in out InputAutomationJFrame; inputAutomationRobotChangeEvent_Param : access InputAutomationRobotChangeEvent'Class);
   procedure onAdd (This : in out InputAutomationJFrame; inputAutomationConfigurationChangeEvent_Param : access InputAutomationConfigurationModuleChangeEvent'Class);
   procedure onRemove (This : in out InputAutomationJFrame; inputAutomationConfigurationChangeEvent_Param : access InputAutomationConfigurationModuleChangeEvent'Class);

end org.allbinary.input.automation.InputAutomationJFrame_Package;


