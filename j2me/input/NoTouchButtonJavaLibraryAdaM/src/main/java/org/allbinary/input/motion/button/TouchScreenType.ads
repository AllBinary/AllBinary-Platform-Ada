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

limited with org.allbinary.input.motion.button.TouchScreenType_Package;
package org.allbinary.input.motion.button.TouchScreenType_Package_References is
   type TouchScreenType_Access is access all org.allbinary.input.motion.button.TouchScreenType_Package.TouchScreenType'Class;
   type TouchScreenType_Access_Array is array (Natural range <>) of TouchScreenType_Access;
   type TouchScreenType_Access_Array_Access is access all TouchScreenType_Access_Array;
   type TouchScreenType_Access_Array_Access_Array is array (Natural range <>) of TouchScreenType_Access_Array_Access;
   type TouchScreenType_Access_Array_Access_Array_Access is access all TouchScreenType_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchScreenType_Package_References;

with org.allbinary.input.motion.button.TouchScreenType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.motion.button.TouchScreenType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchScreenType_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access;
   function "=" (Left, Right : TouchScreenType_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array;
   function "=" (Left, Right : TouchScreenType_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";
   subtype TouchScreenType_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenType_Package_References."=";

   type TouchScreenType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out TouchScreenType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TouchScreenType_Access;
   function getName (This : in out TouchScreenType) return Unbounded_String;
   function toString (This : in out TouchScreenType) return Unbounded_String;

end org.allbinary.input.motion.button.TouchScreenType_Package;


