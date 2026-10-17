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
--  with javax.swing.tree.DefaultMutableTreeNode_Package; use javax.swing.tree.DefaultMutableTreeNode_Package;
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.animation.VectorExplosionGenerator_Package; use org.allbinary.animation.VectorExplosionGenerator_Package;
with org.allbinary.animation.VectorMirrorGenerator_Package; use org.allbinary.animation.VectorMirrorGenerator_Package;
with org.allbinary.animation.vector.VectorCenterGenerator_Package; use org.allbinary.animation.vector.VectorCenterGenerator_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.j2me.GraphicsException_Package; use org.allbinary.graphics.j2me.GraphicsException_Package;
with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
with org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package; use org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
with org.allbinary.graphics.pipeline.RandomRotationFactory_Package; use org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
with org.allbinary.log.LOGGING_Package; use org.allbinary.log.LOGGING_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.GuiLog_Package; use org.allbinary.logic.communication.log.GuiLog_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.graphics.j2me.workarea.canvas.JPanel_Package; use org.allbinary.graphics.j2me.workarea.canvas.JPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.MouseListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.MouseListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.MouseMotionListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.MouseMotionListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.KeyListener_Package; use org.allbinary.graphics.j2me.workarea.canvas.KeyListener_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasTreeLabel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Color_Package; use org.allbinary.graphics.j2me.workarea.canvas.Color_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package; use org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Dimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.Dimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Graphics_Package; use org.allbinary.graphics.j2me.workarea.canvas.Graphics_Package;

package org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package is

   package VectorExplosionGenerator_Package renames Standard.org.allbinary.animation.VectorExplosionGenerator_Package;
   package VectorMirrorGenerator_Package renames Standard.org.allbinary.animation.VectorMirrorGenerator_Package;
   package VectorCenterGenerator_Package renames Standard.org.allbinary.animation.vector.VectorCenterGenerator_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package GraphicsException_Package renames Standard.org.allbinary.graphics.j2me.GraphicsException_Package;
   package StatusFactory_Package renames Standard.org.allbinary.graphics.j2me.StatusFactory_Package;
   package WorkAreaJTreeJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel_Package;
   package GraphicItemFactory_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;
   package GraphicItemInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
   package LinesGraphicItem_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
   package MouseStrings_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;
   package Points_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.Points_Package;
   package ToolFactory_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.ToolFactory_Package;
   package MyGraphicItemEvent_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;
   package MyGraphicItemEventListener_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;
   package MyGraphicItemEventService_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService_Package;
   package RandomRotationFactory_Package renames Standard.org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
   package LOGGING_Package renames Standard.org.allbinary.log.LOGGING_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package GuiLog_Package renames Standard.org.allbinary.logic.communication.log.GuiLog_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CanvasJPanel is tagged;
   type CanvasJPanel_Access is access all CanvasJPanel'Class;
   type CanvasJPanel_Access_Array is array (Natural range <>) of CanvasJPanel_Access;
   type CanvasJPanel_Access_Array_Access is access all CanvasJPanel_Access_Array;

   type CanvasJPanel is new JPanel and MouseListener and MouseMotionListener and KeyListener and MyGraphicItemEventListener with record
      logUtil : LogUtil_Access;
      guiLog : GuiLog_Access;
      gameInputStrings : GameInputStrings_Access;
      selectedTool : GraphicItemInterface_Access;
      graphicItemHashMap : HashMap_Access;
      canvasDimension : IntegerDimension_Access;
      angle : Long_Float;
      canvasTreeNode : DefaultMutableTreeNode_Access;
      frameLabel : CanvasTreeLabel_Access;
      workAreaJTreeJPanel : WorkAreaJTreeJPanel_Access;
      grid : Grid_Access;
   end record;
   frame : Integer;
   gridColor : Color_Access;
   backgroundColor : Color_Access;

   procedure Initialize (This : in out CanvasJPanel'Class; workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension'Class; x : Integer; y : Integer);
   function Create (workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension'Class; x : Integer; y : Integer) return CanvasJPanel_Access;
   procedure Initialize (This : in out CanvasJPanel'Class; workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension'Class; canvasDom_Param : access CanvasDom'Class);
   function Create (workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension'Class; canvasDom_Param : access CanvasDom'Class) return CanvasJPanel_Access;
   procedure initMyComponents (This : in out CanvasJPanel);
   function getTreeNode (This : in out CanvasJPanel) return MutableTreeNode_Access;
   procedure initComponents (This : in out CanvasJPanel);
   procedure setCanvasSize (This : in out CanvasJPanel; x : Integer; y : Integer);
   procedure setGrid (This : in out CanvasJPanel; point_Param : access GPoint'Class);
   procedure setGrid (This : in out CanvasJPanel; xSize : Integer; ySize : Integer);
   procedure setDefaultGrid (This : in out CanvasJPanel);
   function getAngle (This : in out CanvasJPanel) return Long_Float;
   procedure setAngle (This : in out CanvasJPanel; angle : Long_Float);
   procedure addAngle (This : in out CanvasJPanel; angle : Long_Float);
   procedure explodeAll (This : in out CanvasJPanel);
   procedure explode (This : in out CanvasJPanel; howMuch : Integer; explosionType : Integer);
   procedure mirror (This : in out CanvasJPanel);
   procedure center (This : in out CanvasJPanel);
   procedure setNewTool (This : in out CanvasJPanel);
   procedure duplicateGraphicItem (This : in out CanvasJPanel; graphicItem_Param : access GraphicItemInterface'Class);
   procedure duplicateGraphicItemHashMap (This : in out CanvasJPanel; hashMap_Param : access HashMap'Class);
   function getGraphicItemHashMap (This : in out CanvasJPanel) return HashMap_Access;
   function getXPixelsPerWorkAreaPixel (This : in out CanvasJPanel) return Integer;
   function getYPixelsPerWorkAreaPixel (This : in out CanvasJPanel) return Integer;
   function getSelectedTool (This : in out CanvasJPanel) return GraphicItemInterface_Access;
   procedure drawItems (This : in out CanvasJPanel; graphics_Param : access Graphics'Class);
   procedure drawGrid (This : in out CanvasJPanel; graphics_Param : access Graphics'Class);
   procedure paint (This : in out CanvasJPanel; graphics_Param : access Graphics'Class);
   procedure repaint (This : in out CanvasJPanel);
   function toDom (This : in out CanvasJPanel) return Node_Access;
   procedure changed (This : in out CanvasJPanel);
   procedure mouseClicked (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseEntered (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseExited (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mousePressed (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseReleased (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseDragged (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure mouseMoved (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   function logMouseEvent (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class) return Unbounded_String;
   procedure logMouseEvent (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent'Class);
   procedure keyPressed (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent'Class);
   procedure keyReleased (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent'Class);
   procedure keyTyped (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent'Class);
   procedure delete (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent'Class);
   procedure deselect (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent'Class);
   procedure highlight (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent'Class);
   function duplicate (This : in out CanvasJPanel) return CanvasJPanel_Access;
   procedure duplicate (This : in out CanvasJPanel; event_Param : access MyGraphicItemEvent'Class);
   procedure rotate (This : in out CanvasJPanel; event_Param : access MyGraphicItemEvent'Class);
   function getCanvasDimension (This : in out CanvasJPanel) return IntegerDimension_Access;
   procedure setCanvasDimension (This : in out CanvasJPanel; canvasDimension_Param : access IntegerDimension'Class);
   function getGrid (This : in out CanvasJPanel) return Grid_Access;

end org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;


