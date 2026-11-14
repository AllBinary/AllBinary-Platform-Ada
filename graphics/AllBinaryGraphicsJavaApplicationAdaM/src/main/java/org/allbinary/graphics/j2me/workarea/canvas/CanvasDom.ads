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
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
package org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References is
   type CanvasDom_Access is access all org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package.CanvasDom'Class;
   type CanvasDom_Access_Array is array (Natural range <>) of CanvasDom_Access;
   type CanvasDom_Access_Array_Access is access all CanvasDom_Access_Array;
   type CanvasDom_Access_Array_Access_Array is array (Natural range <>) of CanvasDom_Access_Array_Access;
   type CanvasDom_Access_Array_Access_Array_Access is access all CanvasDom_Access_Array_Access_Array;
   type CanvasDom_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasDom_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasDom_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasDom_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasDom_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasDom_Access_Array_Access is (if Value /= null and then Value.all in CanvasDom_Access_Array_Object'Class then CanvasDom_Access_Array_Object'Class (Value.all).Value else null);
   type CanvasDom_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CanvasDom_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CanvasDom_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CanvasDom_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CanvasDom_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CanvasDom_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CanvasDom_Access_Array_Access_Array_Object'Class then CanvasDom_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References;

with org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.graphics.GraphicsStrings_Package;
with org.allbinary.graphics.GraphicsStrings_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;
with org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References;

package org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package GraphicsStrings_Package renames Standard.org.allbinary.graphics.GraphicsStrings_Package;
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
   subtype GraphicsStrings_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access;
   use type GraphicsStrings_Access;
   subtype GraphicsStrings_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array;
   use type GraphicsStrings_Access_Array;
   subtype GraphicsStrings_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access;
   use type GraphicsStrings_Access_Array_Access;
   subtype GraphicsStrings_Access_Array_Access_Array is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array;
   use type GraphicsStrings_Access_Array_Access_Array;
   subtype GraphicsStrings_Access_Array_Access_Array_Access is org.allbinary.graphics.GraphicsStrings_Package_References.GraphicsStrings_Access_Array_Access_Array_Access;
   use type GraphicsStrings_Access_Array_Access_Array_Access;
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
   subtype Grid_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access;
   use type Grid_Access;
   subtype Grid_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array;
   use type Grid_Access_Array;
   subtype Grid_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access;
   use type Grid_Access_Array_Access;
   subtype Grid_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access_Array;
   use type Grid_Access_Array_Access_Array;
   subtype Grid_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.Grid_Package_References.Grid_Access_Array_Access_Array_Access;
   use type Grid_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CanvasDom_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access;
   function "=" (Left, Right : CanvasDom_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References."=";
   subtype CanvasDom_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array;
   function "=" (Left, Right : CanvasDom_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References."=";
   subtype CanvasDom_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access;
   function "=" (Left, Right : CanvasDom_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References."=";
   function Java_Box (Value : CanvasDom_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.Java_Box;
   function Java_Unbox_CanvasDom_Access_Array (Value : access Java_Object'Class) return CanvasDom_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.Java_Unbox_CanvasDom_Access_Array;
   subtype CanvasDom_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access_Array;
   function "=" (Left, Right : CanvasDom_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References."=";
   subtype CanvasDom_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.CanvasDom_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CanvasDom_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References."=";
   function Java_Box (Value : CanvasDom_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.Java_Box;
   function Java_Unbox_CanvasDom_Access_Array_Access_Array (Value : access Java_Object'Class) return CanvasDom_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package_References.Java_Unbox_CanvasDom_Access_Array_Access_Array;

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

   procedure Initialize (This : in out CanvasDom'Class; canvasNode_Param : access Node_Package.Node'Class);
   function Create (canvasNode_Param : access Node_Package.Node'Class) return CanvasDom_Access;
   procedure Initialize (This : in out CanvasDom'Class; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class);
   function Create (canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return CanvasDom_Access;
   function getAngle (This : in out CanvasDom) return Long_Float;
   function getGraphicItemHashMap (This : in out CanvasDom) return HashMap_Access;
   procedure setAngle (This : in out CanvasDom; angle : Long_Float);
   procedure setWorkArea (This : in out CanvasDom; x : Integer; y : Integer);
   procedure setGrid (This : in out CanvasDom; gridX : Integer; gridY : Integer);
   function getPointNode (This : in out CanvasDom; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String) return Node_Access;
   procedure getPointNode (This : in out CanvasDom; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String);
   function toDom (This : in out CanvasDom) return Node_Access;
   function getDimension (This : in out CanvasDom) return IntegerDimension_Access;
   procedure setDimension (This : in out CanvasDom; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class);
   function getGrid (This : in out CanvasDom) return Grid_Access;

end org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;


