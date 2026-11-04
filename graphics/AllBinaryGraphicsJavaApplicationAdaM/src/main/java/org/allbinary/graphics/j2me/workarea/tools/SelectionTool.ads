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

limited with org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;
package org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References is
   type SelectionTool_Access is access all org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package.SelectionTool'Class;
   type SelectionTool_Access_Array is array (Natural range <>) of SelectionTool_Access;
   type SelectionTool_Access_Array_Access is access all SelectionTool_Access_Array;
   type SelectionTool_Access_Array_Access_Array is array (Natural range <>) of SelectionTool_Access_Array_Access;
   type SelectionTool_Access_Array_Access_Array_Access is access all SelectionTool_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
limited with org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype CanvasDom_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access;
   use type CanvasDom_Access;
   subtype CanvasDom_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array;
   use type CanvasDom_Access_Array;
   subtype CanvasDom_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access;
   use type CanvasDom_Access_Array_Access;
   subtype CanvasDom_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access_Array;
   use type CanvasDom_Access_Array_Access_Array;
   subtype CanvasDom_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access_Array_Access;
   use type CanvasDom_Access_Array_Access_Array_Access;
   subtype CanvasJPanel_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access;
   use type CanvasJPanel_Access;
   subtype CanvasJPanel_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array;
   use type CanvasJPanel_Access_Array;
   subtype CanvasJPanel_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access;
   use type CanvasJPanel_Access_Array_Access;
   subtype CanvasJPanel_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array;
   use type CanvasJPanel_Access_Array_Access_Array;
   subtype CanvasJPanel_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References.CanvasJPanel_Access_Array_Access_Array_Access;
   use type CanvasJPanel_Access_Array_Access_Array_Access;
   subtype IntegerDimension_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access;
   use type IntegerDimension_Access;
   subtype IntegerDimension_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array;
   use type IntegerDimension_Access_Array;
   subtype IntegerDimension_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access;
   use type IntegerDimension_Access_Array_Access;
   subtype IntegerDimension_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access_Array;
   use type IntegerDimension_Access_Array_Access_Array;
   subtype IntegerDimension_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References.IntegerDimension_Access_Array_Access_Array_Access;
   use type IntegerDimension_Access_Array_Access_Array_Access;
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
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype Color_Access is org.allbinary.graphics.j2me.workarea.tools.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   subtype Points_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access;
   use type Points_Access;
   subtype Points_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array;
   use type Points_Access_Array;
   subtype Points_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access;
   use type Points_Access_Array_Access;
   subtype Points_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access_Array;
   use type Points_Access_Array_Access_Array;
   subtype Points_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Points_Package_References.Points_Access_Array_Access_Array_Access;
   use type Points_Access_Array_Access_Array_Access;
   subtype Graphics_Access is org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SelectionTool_Access is org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References.SelectionTool_Access;
   function "=" (Left, Right : SelectionTool_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References."=";
   subtype SelectionTool_Access_Array is org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References.SelectionTool_Access_Array;
   function "=" (Left, Right : SelectionTool_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References."=";
   subtype SelectionTool_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References.SelectionTool_Access_Array_Access;
   function "=" (Left, Right : SelectionTool_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References."=";
   subtype SelectionTool_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References.SelectionTool_Access_Array_Access_Array;
   function "=" (Left, Right : SelectionTool_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References."=";
   subtype SelectionTool_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References.SelectionTool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectionTool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package_References."=";

   type SelectionTool is new Java_Object and GraphicItemInterface with record
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

   procedure Initialize (This : in out SelectionTool'Class; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class);
   function Create (canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return SelectionTool_Access;
   procedure setColor (This : in out SelectionTool; color_Param : access Color_Package.Color'Class);
   function getTreeNode (This : in out SelectionTool) return MutableTreeNode_Access;
   function getPointsInterface (This : in out SelectionTool) return Points_Access;
   procedure setPointsInterface (This : in out SelectionTool; points_Param : access Points_Package.Points'Class);
   function isValid (This : in out SelectionTool) return Boolean;
   function isActive (This : in out SelectionTool) return Boolean;
   procedure deactivate (This : in out SelectionTool);
   procedure activate (This : in out SelectionTool);
   procedure setFulcrumPoint (This : in out SelectionTool; point_Param : access GPoint_Package.GPoint'Class);
   procedure translate (This : in out SelectionTool; x : Integer; y : Integer);
   procedure setRotate (This : in out SelectionTool; theta : Long_Float);
   procedure addRotate (This : in out SelectionTool; theta : Long_Float);
   procedure setAngle (This : in out SelectionTool; angle : Long_Float);
   procedure addAngle (This : in out SelectionTool; angle : Long_Float);
   function getAngle (This : in out SelectionTool) return Long_Float;
   procedure makeSelection (This : in out SelectionTool);
   function getXRect (This : in out SelectionTool) return Integer;
   function getYRect (This : in out SelectionTool) return Integer;
   procedure paint (This : in out SelectionTool; g_Param : access Graphics_Package.Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class; x : Integer; y : Integer);
   function toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return Node_Access;
   procedure toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class);
   function removePoint (This : in out SelectionTool) return GPoint_Access;
   procedure addPoint (This : in out SelectionTool; point_Param : access GPoint_Package.GPoint'Class);
   function getName (This : in out SelectionTool) return Unbounded_String;
   function getStaticName return Unbounded_String;
   procedure mouseClicked (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseMoved (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseEntered (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure mouseExited (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure mousePressed (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseReleased (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseDragged (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure keyPressed (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyReleased (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyTyped (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   function duplicate (This : in out SelectionTool) return GraphicItemInterface_Access;

end org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;


