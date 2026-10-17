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
with org.allbinary.animation.vector.VectorCenterGenerator_Package; use org.allbinary.animation.vector.VectorCenterGenerator_Package;
with org.allbinary.dom.DomHelper_Package; use org.allbinary.dom.DomHelper_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GraphicsStrings_Package; use org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package; use org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package is

   package VectorCenterGenerator_Package renames Standard.org.allbinary.animation.vector.VectorCenterGenerator_Package;
   package DomHelper_Package renames Standard.org.allbinary.dom.DomHelper_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package WorkAreaJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
   package GraphicItemFactory_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory_Package;
   package GraphicItemInterface_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
   package LinesGraphicItem_Package renames Standard.org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CanvasDom is tagged;
   type CanvasDom_Access is access all CanvasDom'Class;
   type CanvasDom_Access_Array is array (Natural range <>) of CanvasDom_Access;
   type CanvasDom_Access_Array_Access is access all CanvasDom_Access_Array;

   type CanvasDom is new Java_Object with record
      graphicsStrings : GraphicsStrings_Access;
      graphicItemHashMap : HashMap_Access;
      angle : Long_Float;
      dimension : IntegerDimension_Access;
      grid_Case : Grid_Access;
   end record;
   FRAME : Unbounded_String;
   ROTATE : Unbounded_String;
   SIZE : Unbounded_String;
   X : Unbounded_String;
   Y : Unbounded_String;
   ZOOM : Unbounded_String;
   GRID : Unbounded_String;
   ENABLED : Unbounded_String;
   POSSIBLE : Unbounded_String;
   GRAPHICITEMS : Unbounded_String;
   REAL_SIZE : Unbounded_String;

   procedure Initialize (This : in out CanvasDom'Class; canvasNode : Node_Access);
   function Create (canvasNode : Node_Access) return CanvasDom_Access;
   function getAngle (This : in out CanvasDom) return Long_Float;
   procedure getAngle (This : in out CanvasDom);
   function getGraphicItemHashMap (This : in out CanvasDom) return HashMap_Access;
   procedure getGraphicItemHashMap (This : in out CanvasDom);
   procedure setAngle (This : in out CanvasDom; angle : Long_Float);
   procedure setWorkArea (This : in out CanvasDom; x_Case : Integer; y_Case : Integer);
   procedure setGrid (This : in out CanvasDom; gridX : Integer; gridY : Integer);
   function getPointNode (This : in out CanvasDom; point : GPoint_Access; pointName : Unbounded_String) return Node_Access;
   procedure getPointNode (This : in out CanvasDom; point : GPoint_Access; pointName : Unbounded_String);
   function toDom (This : in out CanvasDom) return Node_Access;
   procedure toDom (This : in out CanvasDom);
   function getDimension (This : in out CanvasDom) return IntegerDimension_Access;
   procedure getDimension (This : in out CanvasDom);
   procedure setDimension (This : in out CanvasDom; dimension : IntegerDimension_Access);
   function getGrid (This : in out CanvasDom) return Grid_Access;
   procedure getGrid (This : in out CanvasDom);

end org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;


