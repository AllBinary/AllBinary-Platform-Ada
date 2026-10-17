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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.XslHelper_Package; use org.allbinary.data.tree.dom.XslHelper_Package;
with org.allbinary.dom.DomHelper_Package; use org.allbinary.dom.DomHelper_Package;
with org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package; use org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;
with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package; use org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
with org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package; use org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
with org.allbinary.gui.dialog.FileJDialog_Package; use org.allbinary.gui.dialog.FileJDialog_Package;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package; use org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
with org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package; use org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
with org.allbinary.log.LOGGING_Package; use org.allbinary.log.LOGGING_Package;
with org.allbinary.logic.communication.log.GuiLog_Package; use org.allbinary.logic.communication.log.GuiLog_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.graphics.j2me.JFrame_Package; use org.allbinary.graphics.j2me.JFrame_Package;
with org.allbinary.graphics.j2me.KeyListener_Package; use org.allbinary.graphics.j2me.KeyListener_Package;
with org.allbinary.graphics.j2me.Dimension_Package; use org.allbinary.graphics.j2me.Dimension_Package;
with org.allbinary.graphics.j2me.GridLayout_Package; use org.allbinary.graphics.j2me.GridLayout_Package;
with org.allbinary.graphics.j2me.JPanel_Package; use org.allbinary.graphics.j2me.JPanel_Package;

package org.allbinary.graphics.j2me.MyFrame_Package is

   package XslHelper_Package renames Standard.org.allbinary.data.tree.dom.XslHelper_Package;
   package DomHelper_Package renames Standard.org.allbinary.dom.DomHelper_Package;
   package NewWorkAreaJDialog_Package renames Standard.org.allbinary.graphics.j2me.dialog.NewWorkAreaJDialog_Package;
   package RotateJDialog_Package renames Standard.org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
   package WorkAreaDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;
   package WorkAreaJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
   package WorkAreaJPanelInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
   package MyCanvasEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEvent_Package;
   package MyCanvasEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventService_Package;
   package MyCanvasEventSource_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventSource_Package;
   package FileJDialog_Package renames Standard.org.allbinary.gui.dialog.FileJDialog_Package;
   package FileJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
   package HashMapJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
   package LOGGING_Package renames Standard.org.allbinary.log.LOGGING_Package;
   package GuiLog_Package renames Standard.org.allbinary.logic.communication.log.GuiLog_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type MyFrame is tagged;
   type MyFrame_Access is access all MyFrame'Class;
   type MyFrame_Access_Array is array (Natural range <>) of MyFrame_Access;
   type MyFrame_Access_Array_Access is access all MyFrame_Access_Array;

   type MyFrame is new JFrame and FileJDialogListenerInterface and HashMapJDialogListenerInterface and KeyListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      guiLog : GuiLog_Access;
      xslHelper : XslHelper_Access;
      JAVA_TEMPLATE : Unbounded_String;
      SAVEEXTENSION : Unbounded_String;
      JAVAEXTENSION : Unbounded_String;
      fileJDialog : FileJDialog_Access;
      rotateJDialog : RotateJDialog_Access;
      animateJButton : JButton_Access;
      autoDamageJMenuItem : JMenuItem_Access;
      autoExplodeJMenuItem : JMenuItem_Access;
      autoGrowJMenuItem : JMenuItem_Access;
      autoRotateGenerationJMenuItem : JMenuItem_Access;
      autoSheildMenuItem : JMenuItem_Access;
      autoShrinkJMenuItem : JMenuItem_Access;
      centerJMenuItem : JMenuItem_Access;
      copyJMenuItem1 : JMenuItem_Access;
      exitJMenuItem : JMenuItem_Access;
      explodeAllJMenuItem : JMenuItem_Access;
      exportJMenuItem1 : JMenuItem_Access;
      fileJMenu : JMenu_Access;
      frameJMenu : JMenu_Access;
      generateJMenu : JMenu_Access;
      insertAfterJMenuItem : JMenuItem_Access;
      insertBeforeJMenuItem : JMenuItem_Access;
      jButton1 : JButton_Access;
      jButton2 : JButton_Access;
      jButton3 : JButton_Access;
      jButton4 : JButton_Access;
      jButton41 : JButton_Access;
      jButton5 : JButton_Access;
      jMenu1 : JMenu_Access;
      jMenuItem1 : JMenuItem_Access;
      jPanel1 : JPanel_Access;
      jTabbedPane : JTabbedPane_Access;
      jToolBar1 : JToolBar_Access;
      mainJPanel : JPanel_Access;
      menuJMenuBar : JMenuBar_Access;
      newJMenuItem : JMenuItem_Access;
      nextFrameJMenuItem : JMenuItem_Access;
      objectJMenu : JMenu_Access;
      openJButton : JButton_Access;
      openJMenuItem : JMenuItem_Access;
      playJButton : JButton_Access;
      previousFrameJMenuItem : JMenuItem_Access;
      removeJMenuItem : JMenuItem_Access;
      saveAsJMenuItem : JMenuItem_Access;
      saveJButton : JButton_Access;
      saveJMenuItem : JMenuItem_Access;
      statusJPanel : JPanel_Access;
      stopJjButton : JButton_Access;
      viewJMenu : JMenu_Access;
      zoomInJMenuItem : JMenuItem_Access;
      zoomOutJMenuItem : JMenuItem_Access;
   end record;
   MAXWORKAREAS : Integer;
   numberOfWorkAreas : Integer;
   PATH : Unbounded_String;
   SAVE_PATH : Unbounded_String;
   TEMPLATE_EXPORT_PATH : Unbounded_String;
   statusJLabel : JLabel_Access;

   procedure Initialize (This : in out MyFrame'Class);
   function Create return MyFrame_Access;
   procedure initComponents (This : in out MyFrame);
   procedure explodeAllJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure autoExplodeJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure stopJjButtonMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure playJButtonMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure autoRotateGenerationJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure zoomOutJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure zoomInJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure openJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure exportJMenuItem1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure saveJMenuItemMousePressed (This : in out MyFrame; evt_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure jTabbedPaneStateChanged (This : in out MyFrame; evt_Param : access ChangeEvent_Package.ChangeEvent'Class);
   procedure frameJMenuActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure exitJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure newJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure fileJMenuActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure exitForm (This : in out MyFrame; evt_Param : access WindowEvent_Package.WindowEvent'Class);
   procedure openJButtonActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure jButton2ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure centerJMenuItemActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure saveJButtonActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure jButton1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure jMenuItem1ActionPerformed (This : in out MyFrame; evt_Param : access ActionEvent_Package.ActionEvent'Class);
   procedure onFiles (This : in out MyFrame; files : File_Access_Array_Access);
   procedure newGraphics (This : in out MyFrame);
   procedure openGraphics (This : in out MyFrame);
   procedure export (This : in out MyFrame);
   procedure save (This : in out MyFrame);
   procedure onHashMap (This : in out MyFrame; hashMap_Param : access HashMap_Package.HashMap'Class);
   function getSelectedWorkArea (This : in out MyFrame) return WorkAreaJPanelInterface_Access;
   procedure updateSelectedWorkArea (This : in out MyFrame);
   procedure add (This : in out MyFrame; newCanvasInterface_Param : access WorkAreaJPanelInterface_Package.WorkAreaJPanelInterface'Class);
   procedure keyPressed (This : in out MyFrame; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyReleased (This : in out MyFrame; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyTyped (This : in out MyFrame; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.graphics.j2me.MyFrame_Package;


