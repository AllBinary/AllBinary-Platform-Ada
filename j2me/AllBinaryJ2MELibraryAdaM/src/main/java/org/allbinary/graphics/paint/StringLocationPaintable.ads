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

limited with org.allbinary.graphics.paint.StringLocationPaintable_Package;
package org.allbinary.graphics.paint.StringLocationPaintable_Package_References is
   type StringLocationPaintable_Access is access all org.allbinary.graphics.paint.StringLocationPaintable_Package.StringLocationPaintable'Class;
   type StringLocationPaintable_Access_Array is array (Natural range <>) of StringLocationPaintable_Access;
   type StringLocationPaintable_Access_Array_Access is access all StringLocationPaintable_Access_Array;
   type StringLocationPaintable_Access_Array_Access_Array is array (Natural range <>) of StringLocationPaintable_Access_Array_Access;
   type StringLocationPaintable_Access_Array_Access_Array_Access is access all StringLocationPaintable_Access_Array_Access_Array;
end org.allbinary.graphics.paint.StringLocationPaintable_Package_References;

with org.allbinary.graphics.paint.StringLocationPaintable_Package_References;
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
with org.allbinary.graphics.paint.LocationPaintable_Package; use org.allbinary.graphics.paint.LocationPaintable_Package;

package org.allbinary.graphics.paint.StringLocationPaintable_Package is

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


   subtype StringLocationPaintable_Access is org.allbinary.graphics.paint.StringLocationPaintable_Package_References.StringLocationPaintable_Access;
   function "=" (Left, Right : StringLocationPaintable_Access) return Boolean renames org.allbinary.graphics.paint.StringLocationPaintable_Package_References."=";
   subtype StringLocationPaintable_Access_Array is org.allbinary.graphics.paint.StringLocationPaintable_Package_References.StringLocationPaintable_Access_Array;
   function "=" (Left, Right : StringLocationPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.StringLocationPaintable_Package_References."=";
   subtype StringLocationPaintable_Access_Array_Access is org.allbinary.graphics.paint.StringLocationPaintable_Package_References.StringLocationPaintable_Access_Array_Access;
   function "=" (Left, Right : StringLocationPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StringLocationPaintable_Package_References."=";
   subtype StringLocationPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.StringLocationPaintable_Package_References.StringLocationPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : StringLocationPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.StringLocationPaintable_Package_References."=";
   subtype StringLocationPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.StringLocationPaintable_Package_References.StringLocationPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringLocationPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.StringLocationPaintable_Package_References."=";

   type StringLocationPaintable is new LocationPaintable with record
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out StringLocationPaintable'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return StringLocationPaintable_Access;
   procedure paintXY (This : in out StringLocationPaintable; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.graphics.paint.StringLocationPaintable_Package;


