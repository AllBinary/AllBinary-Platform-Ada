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

limited with org.allbinary.graphics.paint.LocationPaintable_Package;
package org.allbinary.graphics.paint.LocationPaintable_Package_References is
   type LocationPaintable_Access is access all org.allbinary.graphics.paint.LocationPaintable_Package.LocationPaintable'Class;
   type LocationPaintable_Access_Array is array (Natural range <>) of LocationPaintable_Access;
   type LocationPaintable_Access_Array_Access is access all LocationPaintable_Access_Array;
   type LocationPaintable_Access_Array_Access_Array is array (Natural range <>) of LocationPaintable_Access_Array_Access;
   type LocationPaintable_Access_Array_Access_Array_Access is access all LocationPaintable_Access_Array_Access_Array;
end org.allbinary.graphics.paint.LocationPaintable_Package_References;

with org.allbinary.graphics.paint.LocationPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.paint.LocationPaintableInterface_Package; use org.allbinary.graphics.paint.LocationPaintableInterface_Package;

package org.allbinary.graphics.paint.LocationPaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LocationPaintable_Access is org.allbinary.graphics.paint.LocationPaintable_Package_References.LocationPaintable_Access;
   function "=" (Left, Right : LocationPaintable_Access) return Boolean renames org.allbinary.graphics.paint.LocationPaintable_Package_References."=";
   subtype LocationPaintable_Access_Array is org.allbinary.graphics.paint.LocationPaintable_Package_References.LocationPaintable_Access_Array;
   function "=" (Left, Right : LocationPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.LocationPaintable_Package_References."=";
   subtype LocationPaintable_Access_Array_Access is org.allbinary.graphics.paint.LocationPaintable_Package_References.LocationPaintable_Access_Array_Access;
   function "=" (Left, Right : LocationPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.LocationPaintable_Package_References."=";
   subtype LocationPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.LocationPaintable_Package_References.LocationPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : LocationPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.LocationPaintable_Package_References."=";
   subtype LocationPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.LocationPaintable_Package_References.LocationPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LocationPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.LocationPaintable_Package_References."=";

   type LocationPaintable is new Java_Object and LocationPaintableInterface with null record;
   instance : LocationPaintable_Access;

   procedure Initialize (This : in out LocationPaintable'Class);
   function Create return LocationPaintable_Access;
   function getInstance return LocationPaintable_Access;
   procedure paintXY (This : in out LocationPaintable; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.paint.LocationPaintable_Package;


