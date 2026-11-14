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

with AllBinary_Java;
limited with org.allbinary.graphics.j2me.MyFrame_Package;
package org.allbinary.graphics.j2me.MyFrame_Package_References is
   type MyFrame_Access is access all org.allbinary.graphics.j2me.MyFrame_Package.MyFrame'Class;
   type MyFrame_Access_Array is array (Natural range <>) of MyFrame_Access;
   type MyFrame_Access_Array_Access is access all MyFrame_Access_Array;
   type MyFrame_Access_Array_Access_Array is array (Natural range <>) of MyFrame_Access_Array_Access;
   type MyFrame_Access_Array_Access_Array_Access is access all MyFrame_Access_Array_Access_Array;
   type MyFrame_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyFrame_Access_Array_Access;
   end record;
   function Java_Box (Value : MyFrame_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyFrame_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyFrame_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyFrame_Access_Array_Access is (if Value /= null and then Value.all in MyFrame_Access_Array_Object'Class then MyFrame_Access_Array_Object'Class (Value.all).Value else null);
   type MyFrame_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyFrame_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyFrame_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyFrame_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyFrame_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyFrame_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyFrame_Access_Array_Access_Array_Object'Class then MyFrame_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.MyFrame_Package_References;

with org.allbinary.graphics.j2me.MyFrame_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.data.tree.dom.XslHelper_Package;
with org.allbinary.data.tree.dom.XslHelper_Package_References;
limited with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
with org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References;
limited with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References;
limited with org.allbinary.gui.dialog.FileJDialog_Package;
with org.allbinary.gui.dialog.FileJDialog_Package_References;
with org.allbinary.gui.dialog.FileJDialogListenerInterface_Package; use org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
with org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package; use org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
limited with org.allbinary.logic.communication.log.GuiLog_Package;
with org.allbinary.logic.communication.log.GuiLog_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
--  with java.awt.BorderLayout_Package; use java.awt.BorderLayout_Package;
--  with java.awt.Dimension_Package; use java.awt.Dimension_Package;
--  with java.awt.GridLayout_Package; use java.awt.GridLayout_Package;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
--  with java.awt.event.ActionListener_Package; use java.awt.event.ActionListener_Package;
with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
--  with java.awt.event.KeyListener_Package; use java.awt.event.KeyListener_Package;
--  with java.awt.event.MouseAdapter_Package; use java.awt.event.MouseAdapter_Package;
--  with java.awt.event.MouseEvent_Package; use java.awt.event.MouseEvent_Package;
--  with java.awt.event.WindowAdapter_Package; use java.awt.event.WindowAdapter_Package;
--  with java.awt.event.WindowEvent_Package; use java.awt.event.WindowEvent_Package;
--  with javax.swing.JButton_Package; use javax.swing.JButton_Package;
--  with javax.swing.JFrame_Package; use javax.swing.JFrame_Package;
--  with javax.swing.JLabel_Package; use javax.swing.JLabel_Package;
--  with javax.swing.JMenu_Package; use javax.swing.JMenu_Package;
--  with javax.swing.JMenuBar_Package; use javax.swing.JMenuBar_Package;
--  with javax.swing.JMenuItem_Package; use javax.swing.JMenuItem_Package;
--  with javax.swing.JPanel_Package; use javax.swing.JPanel_Package;
--  with javax.swing.JTabbedPane_Package; use javax.swing.JTabbedPane_Package;
--  with javax.swing.JToolBar_Package; use javax.swing.JToolBar_Package;
--  with javax.swing.event.ChangeEvent_Package; use javax.swing.event.ChangeEvent_Package;
--  with javax.swing.event.ChangeListener_Package; use javax.swing.event.ChangeListener_Package;

package org.allbinary.graphics.j2me.MyFrame_Package is

   package File_Package renames Standard.java.io.File_Package;
   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package XslHelper_Package renames Standard.org.allbinary.data.tree.dom.XslHelper_Package;
   package RotateJDialog_Package renames Standard.org.allbinary.graphics.j2me.dialog.RotateJDialog_Package;
   package WorkAreaJPanelInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
   package FileJDialog_Package renames Standard.org.allbinary.gui.dialog.FileJDialog_Package;
   package FileJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;
   package HashMapJDialogListenerInterface_Package renames Standard.org.allbinary.gui.dialog.HashMapJDialogListenerInterface_Package;
   package GuiLog_Package renames Standard.org.allbinary.logic.communication.log.GuiLog_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package KeyEvent_Package renames Standard.java.awt.event.KeyEvent_Package;
   package Reference_Types is
   subtype XslHelper_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access;
   use type XslHelper_Access;
   subtype XslHelper_Access_Array is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array;
   use type XslHelper_Access_Array;
   subtype XslHelper_Access_Array_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access;
   use type XslHelper_Access_Array_Access;
   subtype XslHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access_Array;
   use type XslHelper_Access_Array_Access_Array;
   subtype XslHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.XslHelper_Package_References.XslHelper_Access_Array_Access_Array_Access;
   use type XslHelper_Access_Array_Access_Array_Access;
   subtype RotateJDialog_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access;
   use type RotateJDialog_Access;
   subtype RotateJDialog_Access_Array is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array;
   use type RotateJDialog_Access_Array;
   subtype RotateJDialog_Access_Array_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access;
   use type RotateJDialog_Access_Array_Access;
   subtype RotateJDialog_Access_Array_Access_Array is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array;
   use type RotateJDialog_Access_Array_Access_Array;
   subtype RotateJDialog_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.dialog.RotateJDialog_Package_References.RotateJDialog_Access_Array_Access_Array_Access;
   use type RotateJDialog_Access_Array_Access_Array_Access;
   subtype WorkAreaJPanelInterface_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access;
   use type WorkAreaJPanelInterface_Access;
   subtype WorkAreaJPanelInterface_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array;
   use type WorkAreaJPanelInterface_Access_Array;
   subtype WorkAreaJPanelInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access;
   use type WorkAreaJPanelInterface_Access_Array_Access;
   subtype WorkAreaJPanelInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access_Array;
   use type WorkAreaJPanelInterface_Access_Array_Access_Array;
   subtype WorkAreaJPanelInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access_Array_Access;
   use type WorkAreaJPanelInterface_Access_Array_Access_Array_Access;
   subtype FileJDialog_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access;
   use type FileJDialog_Access;
   subtype FileJDialog_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array;
   use type FileJDialog_Access_Array;
   subtype FileJDialog_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access;
   use type FileJDialog_Access_Array_Access;
   subtype FileJDialog_Access_Array_Access_Array is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array;
   use type FileJDialog_Access_Array_Access_Array;
   subtype FileJDialog_Access_Array_Access_Array_Access is org.allbinary.gui.dialog.FileJDialog_Package_References.FileJDialog_Access_Array_Access_Array_Access;
   use type FileJDialog_Access_Array_Access_Array_Access;
   subtype GuiLog_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access;
   use type GuiLog_Access;
   subtype GuiLog_Access_Array is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array;
   use type GuiLog_Access_Array;
   subtype GuiLog_Access_Array_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access;
   use type GuiLog_Access_Array_Access;
   subtype GuiLog_Access_Array_Access_Array is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access_Array;
   use type GuiLog_Access_Array_Access_Array;
   subtype GuiLog_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.GuiLog_Package_References.GuiLog_Access_Array_Access_Array_Access;
   use type GuiLog_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MyFrame_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access;
   function "=" (Left, Right : MyFrame_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array;
   function "=" (Left, Right : MyFrame_Access_Array) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access;
   function "=" (Left, Right : MyFrame_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   function Java_Box (Value : MyFrame_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.MyFrame_Package_References.Java_Box;
   function Java_Unbox_MyFrame_Access_Array (Value : access Java_Object'Class) return MyFrame_Access_Array_Access renames org.allbinary.graphics.j2me.MyFrame_Package_References.Java_Unbox_MyFrame_Access_Array;
   subtype MyFrame_Access_Array_Access_Array is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array;
   function "=" (Left, Right : MyFrame_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   subtype MyFrame_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.MyFrame_Package_References.MyFrame_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFrame_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.MyFrame_Package_References."=";
   function Java_Box (Value : MyFrame_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.MyFrame_Package_References.Java_Box;
   function Java_Unbox_MyFrame_Access_Array_Access_Array (Value : access Java_Object'Class) return MyFrame_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.MyFrame_Package_References.Java_Unbox_MyFrame_Access_Array_Access_Array;

   type MyFrame is new Java_Object and FileJDialogListenerInterface and HashMapJDialogListenerInterface with record
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
   MAXWORKAREAS : constant Integer := 10;
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


