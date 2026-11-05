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

limited with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;
package org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References is
   type GraphicsItemInterfaceFactoryInterface_Access is access all org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package.GraphicsItemInterfaceFactoryInterface'Class;
   type GraphicsItemInterfaceFactoryInterface_Access_Array is array (Natural range <>) of GraphicsItemInterfaceFactoryInterface_Access;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access is access all GraphicsItemInterfaceFactoryInterface_Access_Array;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   type GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
with org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package_References;
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package is

   package CanvasJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;
   package Reference_Types is
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
   subtype GraphicItemInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access;
   use type GraphicItemInterface_Access;
   subtype GraphicItemInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array;
   use type GraphicItemInterface_Access_Array;
   subtype GraphicItemInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access;
   use type GraphicItemInterface_Access_Array_Access;
   subtype GraphicItemInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array;
   use type GraphicItemInterface_Access_Array_Access_Array;
   subtype GraphicItemInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References.GraphicItemInterface_Access_Array_Access_Array_Access;
   use type GraphicItemInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type GraphicsItemInterfaceFactoryInterface is interface;
   subtype GraphicsItemInterfaceFactoryInterface_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access;
   function "=" (Left, Right : GraphicsItemInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References."=";
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : GraphicsItemInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References."=";
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GraphicsItemInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References."=";
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References."=";
   subtype GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References.GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GraphicsItemInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_GraphicsItemInterfaceFactoryInterface (Value : GraphicsItemInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out GraphicsItemInterfaceFactoryInterface; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return GraphicItemInterface_Access is abstract;
   procedure getInstance (This : in out GraphicsItemInterfaceFactoryInterface; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) is abstract;

end org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;


