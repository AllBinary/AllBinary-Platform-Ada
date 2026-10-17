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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.dom.DomHelper_Package; use org.allbinary.dom.DomHelper_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package; use org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics2D_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics2D_Package;
with org.allbinary.graphics.j2me.workarea.tools.BasicStroke_Package; use org.allbinary.graphics.j2me.workarea.tools.BasicStroke_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;

package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomHelper_Package renames Standard.org.allbinary.dom.DomHelper_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package StatusFactory_Package renames Standard.org.allbinary.graphics.j2me.StatusFactory_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type LinesGraphicItem is tagged;
   type LinesGraphicItem_Access is access all LinesGraphicItem'Class;
   type LinesGraphicItem_Access_Array is array (Natural range <>) of LinesGraphicItem_Access;
   type LinesGraphicItem_Access_Array_Access is access all LinesGraphicItem_Access_Array;

   type LinesGraphicItem is new GraphicItemInterface with record
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
   procedure init (This : in out LinesGraphicItem);
   procedure translate (This : in out LinesGraphicItem; x : Integer; y : Integer);
   procedure setRotate (This : in out LinesGraphicItem; theta_Param : Long_Float);
   procedure addRotate (This : in out LinesGraphicItem; theta : Long_Float);
   procedure setAngle (This : in out LinesGraphicItem; angle : Long_Float);
   procedure addAngle (This : in out LinesGraphicItem; angle : Long_Float);
   function getTreeNode (This : in out LinesGraphicItem) return MutableTreeNode_Access;
   function getName (This : in out LinesGraphicItem) return Unbounded_String;
   function getStaticName return Unbounded_String;
   procedure addPoint (This : in out LinesGraphicItem; pointNodes : NodeList_Access);
   procedure addPoint (This : in out LinesGraphicItem; point : GPoint_Access);
   function removePoint (This : in out LinesGraphicItem) return GPoint_Access;
   function isActive (This : in out LinesGraphicItem) return Boolean;
   procedure deactivate (This : in out LinesGraphicItem);
   procedure activate (This : in out LinesGraphicItem);
   procedure duplicatePoints (This : in out LinesGraphicItem; list : BasicArrayList_Access);
   function duplicate (This : in out LinesGraphicItem) return GraphicItemInterface_Access;
   function getAngle (This : in out LinesGraphicItem) return Long_Float;
   procedure setFulcrumPoint (This : in out LinesGraphicItem; point : GPoint_Access);
   procedure paint (This : in out LinesGraphicItem; g : Graphics_Access; canvasAngle : Long_Float; dimension : IntegerDimension_Access; x : Integer; y : Integer);
   function toDom (This : in out LinesGraphicItem; canvasDom : CanvasDom_Access) return Node_Access;
   procedure toDom (This : in out LinesGraphicItem; canvasDom : CanvasDom_Access);
   function isValid (This : in out LinesGraphicItem) return Boolean;
   function getPointsInterface (This : in out LinesGraphicItem) return Points_Access;
   procedure setPointsInterface (This : in out LinesGraphicItem; points : Points_Access);
   function getColor (This : in out LinesGraphicItem) return Color_Access;
   procedure setColor (This : in out LinesGraphicItem; color : Color_Access);
   procedure mouseClicked (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access; x : Integer; y : Integer);
   procedure mouseEntered (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access);
   procedure mouseExited (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access);
   procedure mousePressed (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseReleased (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseDragged (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access; xPixelsPerCell : Integer; yPixelsPerCell : Integer);
   procedure mouseMoved (This : in out LinesGraphicItem; mouseEvent : MouseEvent_Access; x : Integer; y : Integer);
   procedure keyPressed (This : in out LinesGraphicItem; keyEvent : KeyEvent_Access);
   procedure keyReleased (This : in out LinesGraphicItem; keyEvent : KeyEvent_Access);
   procedure keyTyped (This : in out LinesGraphicItem; keyEvent : KeyEvent_Access);

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;


