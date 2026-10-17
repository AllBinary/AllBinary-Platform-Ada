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
--  with javax.swing.tree.MutableTreeNode_Package; use javax.swing.tree.MutableTreeNode_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package; use org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package; use org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package; use org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package; use org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GraphicItemInterface is interface;
   type GraphicItemInterface_Access is access all GraphicItemInterface'Class;
   type GraphicItemInterface_Access_Array is array (Natural range <>) of GraphicItemInterface_Access;
   type GraphicItemInterface_Access_Array_Access is access all GraphicItemInterface_Access_Array;
   function getName (This : in out GraphicItemInterface) return Unbounded_String is abstract;
   procedure setColor (This : in out GraphicItemInterface; color_Param : access Color_Package.Color'Class) is abstract;
   function getTreeNode (This : in out GraphicItemInterface) return MutableTreeNode_Access is abstract;
   function getPointsInterface (This : in out GraphicItemInterface) return Points_Access is abstract;
   procedure setPointsInterface (This : in out GraphicItemInterface; points_Param : access Points_Package.Points'Class) is abstract;
   function isValid (This : in out GraphicItemInterface) return Boolean is abstract;
   function isActive (This : in out GraphicItemInterface) return Boolean is abstract;
   procedure deactivate (This : in out GraphicItemInterface) is abstract;
   procedure activate (This : in out GraphicItemInterface) is abstract;
   procedure setFulcrumPoint (This : in out GraphicItemInterface; point_Param : access GPoint_Package.GPoint'Class) is abstract;
   procedure translate (This : in out GraphicItemInterface; x : Integer; y : Integer) is abstract;
   procedure setRotate (This : in out GraphicItemInterface; theta : Long_Float) is abstract;
   procedure addRotate (This : in out GraphicItemInterface; theta : Long_Float) is abstract;
   procedure setAngle (This : in out GraphicItemInterface; angle : Long_Float) is abstract;
   procedure addAngle (This : in out GraphicItemInterface; angle : Long_Float) is abstract;
   function getAngle (This : in out GraphicItemInterface) return Long_Float is abstract;
   procedure paint (This : in out GraphicItemInterface; g_Param : access Graphics_Package.Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class; x : Integer; y : Integer) is abstract;
   function toDom (This : in out GraphicItemInterface; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return Node_Access is abstract;
   function removePoint (This : in out GraphicItemInterface) return GPoint_Access is abstract;
   procedure addPoint (This : in out GraphicItemInterface; point_Param : access GPoint_Package.GPoint'Class) is abstract;
   procedure mouseClicked (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is abstract;
   procedure mouseEntered (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is abstract;
   procedure mouseExited (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is abstract;
   procedure mousePressed (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is abstract;
   procedure mouseReleased (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is abstract;
   procedure mouseDragged (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is abstract;
   procedure mouseMoved (This : in out GraphicItemInterface; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is abstract;
   procedure keyPressed (This : in out GraphicItemInterface; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is abstract;
   procedure keyReleased (This : in out GraphicItemInterface; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is abstract;
   procedure keyTyped (This : in out GraphicItemInterface; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is abstract;
   function duplicate (This : in out GraphicItemInterface) return GraphicItemInterface_Access is abstract;

end org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;


