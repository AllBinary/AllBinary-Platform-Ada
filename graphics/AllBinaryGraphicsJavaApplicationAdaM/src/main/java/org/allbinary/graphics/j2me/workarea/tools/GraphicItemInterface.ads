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
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
package org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References is
   type GraphicItemInterface_Access is access all org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package.GraphicItemInterface'Class;
   type GraphicItemInterface_Access_Array is array (Natural range <>) of GraphicItemInterface_Access;
   type GraphicItemInterface_Access_Array_Access is access all GraphicItemInterface_Access_Array;
   type GraphicItemInterface_Access_Array_Access_Array is array (Natural range <>) of GraphicItemInterface_Access_Array_Access;
   type GraphicItemInterface_Access_Array_Access_Array_Access is access all GraphicItemInterface_Access_Array_Access_Array;
   type GraphicItemInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicItemInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicItemInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicItemInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicItemInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicItemInterface_Access_Array_Access is (if Value /= null and then Value.all in GraphicItemInterface_Access_Array_Object'Class then GraphicItemInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GraphicItemInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GraphicItemInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GraphicItemInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GraphicItemInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GraphicItemInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GraphicItemInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GraphicItemInterface_Access_Array_Access_Array_Object'Class then GraphicItemInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;
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
limited with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
with org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
--  with java.awt.event.MouseEvent_Package; use java.awt.event.MouseEvent_Package;
limited with org.allbinary.graphics.j2me.workarea.tools.Color_Package;
with org.allbinary.graphics.j2me.workarea.tools.Color_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Points_Package;
with org.allbinary.graphics.j2me.workarea.tools.Points_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CanvasDom_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;
   package IntegerDimension_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package KeyEvent_Package renames Standard.java.awt.event.KeyEvent_Package;
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


   type GraphicItemInterface is interface;
   subtype GraphicItemInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access;
   function "=" (Left, Right : GraphicItemInterface_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array;
   function "=" (Left, Right : GraphicItemInterface_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   function Java_Box (Value : GraphicItemInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.Java_Box;
   function Java_Unbox_GraphicItemInterface_Access_Array (Value : access Java_Object'Class) return GraphicItemInterface_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.Java_Unbox_GraphicItemInterface_Access_Array;
   subtype GraphicItemInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   subtype GraphicItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicItemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References."=";
   function Java_Box (Value : GraphicItemInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.Java_Box;
   function Java_Unbox_GraphicItemInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GraphicItemInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.Java_Unbox_GraphicItemInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GraphicItemInterface (Value : GraphicItemInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
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
   procedure toDom (This : in out GraphicItemInterface; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) is abstract;
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


