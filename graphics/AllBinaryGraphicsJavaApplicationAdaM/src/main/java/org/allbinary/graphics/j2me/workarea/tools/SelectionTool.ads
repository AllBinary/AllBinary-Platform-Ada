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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.RectangleCollisionPointUtil_Package; use org.allbinary.math.RectangleCollisionPointUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package; use org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;
with org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package; use org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;

package org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package RectangleCollisionPointUtil_Package renames Standard.org.allbinary.math.RectangleCollisionPointUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type SelectionTool is tagged;
   type SelectionTool_Access is access all SelectionTool'Class;
   type SelectionTool_Access_Array is array (Natural range <>) of SelectionTool_Access;
   type SelectionTool_Access_Array_Access is access all SelectionTool_Access_Array;

   type SelectionTool is new GraphicItemInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      canvasJPanel : CanvasJPanel_Access;
      active : Boolean;
      controlIdDown : Boolean;
      rectColor : Color_Access;
      startPoint : GPoint_Access;
      endPoint : GPoint_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out SelectionTool'Class; canvasJPanel_Param : access CanvasJPanel'Class);
   function Create (canvasJPanel_Param : access CanvasJPanel'Class) return SelectionTool_Access;
   procedure setColor (This : in out SelectionTool; color_Param : access Color'Class);
   function getTreeNode (This : in out SelectionTool) return MutableTreeNode_Access;
   function getPointsInterface (This : in out SelectionTool) return Points_Access;
   procedure setPointsInterface (This : in out SelectionTool; points_Param : access Points'Class);
   function isValid (This : in out SelectionTool) return Boolean;
   function isActive (This : in out SelectionTool) return Boolean;
   procedure deactivate (This : in out SelectionTool);
   procedure activate (This : in out SelectionTool);
   procedure setFulcrumPoint (This : in out SelectionTool; point_Param : access GPoint'Class);
   procedure translate (This : in out SelectionTool; x : Integer; y : Integer);
   procedure setRotate (This : in out SelectionTool; theta : Long_Float);
   procedure addRotate (This : in out SelectionTool; theta : Long_Float);
   procedure setAngle (This : in out SelectionTool; angle : Long_Float);
   procedure addAngle (This : in out SelectionTool; angle : Long_Float);
   function getAngle (This : in out SelectionTool) return Long_Float;
   procedure makeSelection (This : in out SelectionTool);
   function getXRect (This : in out SelectionTool) return Integer;
   function getYRect (This : in out SelectionTool) return Integer;
   procedure paint (This : in out SelectionTool; g_Param : access Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension'Class; x : Integer; y : Integer);
   function toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom'Class) return Node_Access;
   procedure toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom'Class);
   function removePoint (This : in out SelectionTool) return GPoint_Access;
   procedure addPoint (This : in out SelectionTool; point_Param : access GPoint'Class);
   function getName (This : in out SelectionTool) return Unbounded_String;
   function getStaticName return Unbounded_String;
   procedure mouseClicked (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseMoved (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseEntered (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseExited (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class);
   procedure mousePressed (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseReleased (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseDragged (This : in out SelectionTool; mouseEvent_Param : access MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure keyPressed (This : in out SelectionTool; keyEvent_Param : access KeyEvent'Class);
   procedure keyReleased (This : in out SelectionTool; keyEvent_Param : access KeyEvent'Class);
   procedure keyTyped (This : in out SelectionTool; keyEvent_Param : access KeyEvent'Class);
   function duplicate (This : in out SelectionTool) return GraphicItemInterface_Access;

end org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;


