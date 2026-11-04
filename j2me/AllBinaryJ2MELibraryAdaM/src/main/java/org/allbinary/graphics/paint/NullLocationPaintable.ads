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

limited with org.allbinary.graphics.paint.NullLocationPaintable_Package;
package org.allbinary.graphics.paint.NullLocationPaintable_Package_References is
   type NullLocationPaintable_Access is access all org.allbinary.graphics.paint.NullLocationPaintable_Package.NullLocationPaintable'Class;
   type NullLocationPaintable_Access_Array is array (Natural range <>) of NullLocationPaintable_Access;
   type NullLocationPaintable_Access_Array_Access is access all NullLocationPaintable_Access_Array;
   type NullLocationPaintable_Access_Array_Access_Array is array (Natural range <>) of NullLocationPaintable_Access_Array_Access;
   type NullLocationPaintable_Access_Array_Access_Array_Access is access all NullLocationPaintable_Access_Array_Access_Array;
end org.allbinary.graphics.paint.NullLocationPaintable_Package_References;

with org.allbinary.graphics.paint.NullLocationPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.paint.LocationPaintable_Package; use org.allbinary.graphics.paint.LocationPaintable_Package;

package org.allbinary.graphics.paint.NullLocationPaintable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullLocationPaintable_Access is org.allbinary.graphics.paint.NullLocationPaintable_Package_References.NullLocationPaintable_Access;
   function "=" (Left, Right : NullLocationPaintable_Access) return Boolean renames org.allbinary.graphics.paint.NullLocationPaintable_Package_References."=";
   subtype NullLocationPaintable_Access_Array is org.allbinary.graphics.paint.NullLocationPaintable_Package_References.NullLocationPaintable_Access_Array;
   function "=" (Left, Right : NullLocationPaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.NullLocationPaintable_Package_References."=";
   subtype NullLocationPaintable_Access_Array_Access is org.allbinary.graphics.paint.NullLocationPaintable_Package_References.NullLocationPaintable_Access_Array_Access;
   function "=" (Left, Right : NullLocationPaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.NullLocationPaintable_Package_References."=";
   subtype NullLocationPaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.NullLocationPaintable_Package_References.NullLocationPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : NullLocationPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.NullLocationPaintable_Package_References."=";
   subtype NullLocationPaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.NullLocationPaintable_Package_References.NullLocationPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullLocationPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.NullLocationPaintable_Package_References."=";

   type NullLocationPaintable is new LocationPaintable with null record;
   instanceC : NullLocationPaintable_Access;

   procedure Initialize (This : in out NullLocationPaintable'Class);
   function Create return NullLocationPaintable_Access;
   function getInstance return NullLocationPaintable_Access;

end org.allbinary.graphics.paint.NullLocationPaintable_Package;


