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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package; use org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;

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

   type LinesGraphicItem is tagged;
   type LinesGraphicItem_Access is access all LinesGraphicItem'Class;
   type LinesGraphicItem_Access_Array is array (Natural range <>) of LinesGraphicItem_Access;
   type LinesGraphicItem_Access_Array_Access is access all LinesGraphicItem_Access_Array;
   type LinesGraphicItem_Access_Array_Access_Array is array (Natural range <>) of LinesGraphicItem_Access_Array_Access;
   type LinesGraphicItem_Access_Array_Access_Array_Access is access all LinesGraphicItem_Access_Array_Access_Array;

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


