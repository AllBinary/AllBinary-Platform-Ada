-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.media.ScaleProperties_Package;
package org.allbinary.media.ScaleProperties_Package_References is
   type ScaleProperties_Access is access all org.allbinary.media.ScaleProperties_Package.ScaleProperties'Class;
   type ScaleProperties_Access_Array is array (Natural range <>) of ScaleProperties_Access;
   type ScaleProperties_Access_Array_Access is access all ScaleProperties_Access_Array;
   type ScaleProperties_Access_Array_Access_Array is array (Natural range <>) of ScaleProperties_Access_Array_Access;
   type ScaleProperties_Access_Array_Access_Array_Access is access all ScaleProperties_Access_Array_Access_Array;
end org.allbinary.media.ScaleProperties_Package_References;

with org.allbinary.media.ScaleProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.ScaleProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";

   type ScaleProperties is new Java_Object with record
      scaleX : Float;
      scaleY : Float;
      scaleWidth : Integer;
      scaleHeight : Integer;
      shouldScale : Boolean;
   end record;
   instance : ScaleProperties_Access;

   procedure Initialize (This : in out ScaleProperties'Class);
   function Create return ScaleProperties_Access;
   function toString (This : in out ScaleProperties) return Unbounded_String;

end org.allbinary.media.ScaleProperties_Package;


