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
with org.allbinary.graphics.j2me.workarea.tools.JPanel_Package; use org.allbinary.graphics.j2me.workarea.tools.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
with org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;

package org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package is


   type ToolJPanel is tagged;
   type ToolJPanel_Access is access all ToolJPanel'Class;
   type ToolJPanel_Access_Array is array (Natural range <>) of ToolJPanel_Access;
   type ToolJPanel_Access_Array_Access is access all ToolJPanel_Access_Array;

   type ToolJPanel is new JPanel with record
      arcJButton : JButton_Access;
      charJButton : JButton_Access;
      colorJList : JList_Access;
      colorJPanel : JPanel_Access;
      dottedArcJButton : JButton_Access;
      dottedFillArcJButton : JButton_Access;
      dottedFillRectJButton : JButton_Access;
      dottedFillRountRectJButton : JButton_Access;
      dottedLineJButton : JButton_Access;
      dottedRectButton : JButton_Access;
      fillArcJButton : JButton_Access;
      fillRectJButton : JButton_Access;
      fillRoundRectJButton : JButton_Access;
      imageJButton : JButton_Access;
      lineJButton : JButton_Access;
      rectJButton : JButton_Access;
      roundRectJButton : JButton_Access;
      stringJButton : JButton_Access;
   end record;

   procedure Initialize (This : in out ToolJPanel'Class);
   function Create return ToolJPanel_Access;
   procedure initComponents (This : in out ToolJPanel);
   procedure dottedFillRountRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure dottedFillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure dottedFillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure dottedArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure dottedRectButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure dottedLineJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure fillRoundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure fillRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure fillArcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure imageJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure roundRectJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure charJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure stringJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure arcJButtonMousePressed (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure rectJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);
   procedure lineJButtonMouseClicked (This : in out ToolJPanel; evt_Param : access MouseEvent'Class);

end org.allbinary.graphics.j2me.workarea.tools.ToolJPanel_Package;


