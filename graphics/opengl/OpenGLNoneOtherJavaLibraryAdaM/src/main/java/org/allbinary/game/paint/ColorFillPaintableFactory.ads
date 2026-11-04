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

limited with org.allbinary.game.paint.ColorFillPaintableFactory_Package;
package org.allbinary.game.paint.ColorFillPaintableFactory_Package_References is
   type ColorFillPaintableFactory_Access is access all org.allbinary.game.paint.ColorFillPaintableFactory_Package.ColorFillPaintableFactory'Class;
   type ColorFillPaintableFactory_Access_Array is array (Natural range <>) of ColorFillPaintableFactory_Access;
   type ColorFillPaintableFactory_Access_Array_Access is access all ColorFillPaintableFactory_Access_Array;
   type ColorFillPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of ColorFillPaintableFactory_Access_Array_Access;
   type ColorFillPaintableFactory_Access_Array_Access_Array_Access is access all ColorFillPaintableFactory_Access_Array_Access_Array;
end org.allbinary.game.paint.ColorFillPaintableFactory_Package_References;

with org.allbinary.game.paint.ColorFillPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.game.paint.ColorFillBasePaintable_Package;
with org.allbinary.game.paint.ColorFillBasePaintable_Package_References;

package org.allbinary.game.paint.ColorFillPaintableFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype ColorFillBasePaintable_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access;
   use type ColorFillBasePaintable_Access;
   subtype ColorFillBasePaintable_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array;
   use type ColorFillBasePaintable_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access;
   subtype ColorFillBasePaintable_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array;
   use type ColorFillBasePaintable_Access_Array_Access_Array;
   subtype ColorFillBasePaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillBasePaintable_Package_References.ColorFillBasePaintable_Access_Array_Access_Array_Access;
   use type ColorFillBasePaintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorFillPaintableFactory_Access is org.allbinary.game.paint.ColorFillPaintableFactory_Package_References.ColorFillPaintableFactory_Access;
   function "=" (Left, Right : ColorFillPaintableFactory_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintableFactory_Package_References."=";
   subtype ColorFillPaintableFactory_Access_Array is org.allbinary.game.paint.ColorFillPaintableFactory_Package_References.ColorFillPaintableFactory_Access_Array;
   function "=" (Left, Right : ColorFillPaintableFactory_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillPaintableFactory_Package_References."=";
   subtype ColorFillPaintableFactory_Access_Array_Access is org.allbinary.game.paint.ColorFillPaintableFactory_Package_References.ColorFillPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : ColorFillPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintableFactory_Package_References."=";
   subtype ColorFillPaintableFactory_Access_Array_Access_Array is org.allbinary.game.paint.ColorFillPaintableFactory_Package_References.ColorFillPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ColorFillPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.ColorFillPaintableFactory_Package_References."=";
   subtype ColorFillPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.game.paint.ColorFillPaintableFactory_Package_References.ColorFillPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorFillPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.ColorFillPaintableFactory_Package_References."=";

   type ColorFillPaintableFactory is new Java_Object with null record;
   instance : ColorFillPaintableFactory_Access;

   procedure Initialize (This : in out ColorFillPaintableFactory'Class);
   function Create return ColorFillPaintableFactory_Access;
   function getInstance return ColorFillPaintableFactory_Access;
   function getInstance (This : in out ColorFillPaintableFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class; forThreedCanvas : Boolean) return ColorFillBasePaintable_Access;
   procedure getInstance (This : in out ColorFillPaintableFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class; forThreedCanvas : Boolean);

end org.allbinary.game.paint.ColorFillPaintableFactory_Package;


