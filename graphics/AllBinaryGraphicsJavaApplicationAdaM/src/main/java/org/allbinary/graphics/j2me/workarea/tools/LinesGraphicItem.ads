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

limited with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References is
   type LinesGraphicItem_Access is access all org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package.LinesGraphicItem'Class;
   type LinesGraphicItem_Access_Array is array (Natural range <>) of LinesGraphicItem_Access;
   type LinesGraphicItem_Access_Array_Access is access all LinesGraphicItem_Access_Array;
   type LinesGraphicItem_Access_Array_Access_Array is array (Natural range <>) of LinesGraphicItem_Access_Array_Access;
   type LinesGraphicItem_Access_Array_Access_Array_Access is access all LinesGraphicItem_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
limited with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameInputStrings_Package_References;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.w3c.dom.NodeList_Package;
with org.w3c.dom.NodeList_Package_References;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
limited with org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   use type GameInputStrings_Access;
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   use type GameInputStrings_Access_Array;
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access;
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   use type GameInputStrings_Access_Array_Access_Array;
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   use type GameInputStrings_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   use type NodeList_Access;
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   use type NodeList_Access_Array;
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   use type NodeList_Access_Array_Access;
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   use type NodeList_Access_Array_Access_Array;
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   use type NodeList_Access_Array_Access_Array_Access;
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


   subtype LinesGraphicItem_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References.LinesGraphicItem_Access;
   function "=" (Left, Right : LinesGraphicItem_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References."=";
   subtype LinesGraphicItem_Access_Array is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References.LinesGraphicItem_Access_Array;
   function "=" (Left, Right : LinesGraphicItem_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References."=";
   subtype LinesGraphicItem_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References.LinesGraphicItem_Access_Array_Access;
   function "=" (Left, Right : LinesGraphicItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References."=";
   subtype LinesGraphicItem_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References.LinesGraphicItem_Access_Array_Access_Array;
   function "=" (Left, Right : LinesGraphicItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References."=";
   subtype LinesGraphicItem_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References.LinesGraphicItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LinesGraphicItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package_References."=";

   type LinesGraphicItem is new Java_Object and GraphicItemInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      gameInputStrings : GameInputStrings_Access;
      treeNode : DefaultMutableTreeNode_Access;
      pointTreeNodeVector : BasicArrayList_Access;
      currentMousePoint : GPoint_Access;
      fulcrumPoint : GPoint_Access;
      active : Boolean;
      theta : Long_Float;
      color : Color_Access;
      points : Points_Access;
   end record;
   RECT : Unbounded_String;
   ARC : Unbounded_String;
   STRING_Id : Unbounded_String;
   CHAR : Unbounded_String;
   IMAGE : Unbounded_String;
   item : Integer;
   NAME : Unbounded_String;

   procedure Initialize (This : in out LinesGraphicItem'Class);
   function Create return LinesGraphicItem_Access;
   procedure Initialize (This : in out LinesGraphicItem'Class; linesNode_Param : access Node_Package.Node'Class);
   function Create (linesNode_Param : access Node_Package.Node'Class) return LinesGraphicItem_Access;
   procedure init (This : in out LinesGraphicItem);
   procedure translate (This : in out LinesGraphicItem; x : Integer; y : Integer);
   procedure setRotate (This : in out LinesGraphicItem; theta_Param : Long_Float);
   procedure addRotate (This : in out LinesGraphicItem; theta : Long_Float);
   procedure setAngle (This : in out LinesGraphicItem; angle : Long_Float);
   procedure addAngle (This : in out LinesGraphicItem; angle : Long_Float);
   function getTreeNode (This : in out LinesGraphicItem) return MutableTreeNode_Access;
   function getName (This : in out LinesGraphicItem) return Unbounded_String;
   function getStaticName return Unbounded_String;
   procedure addPoint (This : in out LinesGraphicItem; pointNodes_Param : access NodeList_Package.NodeList'Class);
   procedure addPoint (This : in out LinesGraphicItem; point_Param : access GPoint_Package.GPoint'Class);
   function removePoint (This : in out LinesGraphicItem) return GPoint_Access;
   function isActive (This : in out LinesGraphicItem) return Boolean;
   procedure deactivate (This : in out LinesGraphicItem);
   procedure activate (This : in out LinesGraphicItem);
   procedure duplicatePoints (This : in out LinesGraphicItem; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function duplicate (This : in out LinesGraphicItem) return GraphicItemInterface_Access;
   function getAngle (This : in out LinesGraphicItem) return Long_Float;
   procedure setFulcrumPoint (This : in out LinesGraphicItem; point_Param : access GPoint_Package.GPoint'Class);
   procedure paint (This : in out LinesGraphicItem; g_Param : access Graphics_Package.Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class; x : Integer; y : Integer);
   function toDom (This : in out LinesGraphicItem; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return Node_Access;
   procedure toDom (This : in out LinesGraphicItem; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class);
   function isValid (This : in out LinesGraphicItem) return Boolean;
   function getPointsInterface (This : in out LinesGraphicItem) return Points_Access;
   procedure setPointsInterface (This : in out LinesGraphicItem; points_Param : access Points_Package.Points'Class);
   function getColor (This : in out LinesGraphicItem) return Color_Access;
   procedure setColor (This : in out LinesGraphicItem; color_Param : access Color_Package.Color'Class);
   procedure mouseClicked (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; x : Integer; y : Integer);
   procedure mouseEntered (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure mouseExited (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class);
   procedure mousePressed (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseReleased (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseDragged (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseMoved (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; x : Integer; y : Integer);
   procedure keyPressed (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyReleased (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);
   procedure keyTyped (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class);

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;


