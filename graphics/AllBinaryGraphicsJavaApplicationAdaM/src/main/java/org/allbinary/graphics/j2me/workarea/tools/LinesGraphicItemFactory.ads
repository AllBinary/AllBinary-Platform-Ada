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

limited with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package;
package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References is
   type LinesGraphicItemFactory_Access is access all org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package.LinesGraphicItemFactory'Class;
   type LinesGraphicItemFactory_Access_Array is array (Natural range <>) of LinesGraphicItemFactory_Access;
   type LinesGraphicItemFactory_Access_Array_Access is access all LinesGraphicItemFactory_Access_Array;
   type LinesGraphicItemFactory_Access_Array_Access_Array is array (Natural range <>) of LinesGraphicItemFactory_Access_Array_Access;
   type LinesGraphicItemFactory_Access_Array_Access_Array_Access is access all LinesGraphicItemFactory_Access_Array_Access_Array;
end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References;

with org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References;
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
with org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package; use org.allbinary.graphics.j2me.workarea.tools.GraphicsItemInterfaceFactoryInterface_Package;
limited with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package;
with org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface_Package_References;

package org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package is

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


   subtype LinesGraphicItemFactory_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References.LinesGraphicItemFactory_Access;
   function "=" (Left, Right : LinesGraphicItemFactory_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References."=";
   subtype LinesGraphicItemFactory_Access_Array is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References.LinesGraphicItemFactory_Access_Array;
   function "=" (Left, Right : LinesGraphicItemFactory_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References."=";
   subtype LinesGraphicItemFactory_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References.LinesGraphicItemFactory_Access_Array_Access;
   function "=" (Left, Right : LinesGraphicItemFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References."=";
   subtype LinesGraphicItemFactory_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References.LinesGraphicItemFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LinesGraphicItemFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References."=";
   subtype LinesGraphicItemFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References.LinesGraphicItemFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LinesGraphicItemFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package_References."=";

   type LinesGraphicItemFactory is new Java_Object and GraphicsItemInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out LinesGraphicItemFactory'Class);
   function Create return LinesGraphicItemFactory_Access;
   function getInstance (This : in out LinesGraphicItemFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return GraphicItemInterface_Access;
   procedure getInstance (This : in out LinesGraphicItemFactory; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class);

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItemFactory_Package;


