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

limited with org.allbinary.input.motion.button.TouchButtonVisitor_Package;
package org.allbinary.input.motion.button.TouchButtonVisitor_Package_References is
   type TouchButtonVisitor_Access is access all org.allbinary.input.motion.button.TouchButtonVisitor_Package.TouchButtonVisitor'Class;
   type TouchButtonVisitor_Access_Array is array (Natural range <>) of TouchButtonVisitor_Access;
   type TouchButtonVisitor_Access_Array_Access is access all TouchButtonVisitor_Access_Array;
   type TouchButtonVisitor_Access_Array_Access_Array is array (Natural range <>) of TouchButtonVisitor_Access_Array_Access;
   type TouchButtonVisitor_Access_Array_Access_Array_Access is access all TouchButtonVisitor_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonVisitor_Package_References;

with org.allbinary.input.motion.button.TouchButtonVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;

package org.allbinary.input.motion.button.TouchButtonVisitor_Package is

   package Reference_Types is
   subtype TouchButtonInput_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access;
   use type TouchButtonInput_Access;
   subtype TouchButtonInput_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array;
   use type TouchButtonInput_Access_Array;
   subtype TouchButtonInput_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access;
   subtype TouchButtonInput_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array;
   use type TouchButtonInput_Access_Array_Access_Array;
   subtype TouchButtonInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonInput_Package_References.TouchButtonInput_Access_Array_Access_Array_Access;
   use type TouchButtonInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonVisitor_Access is org.allbinary.input.motion.button.TouchButtonVisitor_Package_References.TouchButtonVisitor_Access;
   function "=" (Left, Right : TouchButtonVisitor_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonVisitor_Package_References."=";
   subtype TouchButtonVisitor_Access_Array is org.allbinary.input.motion.button.TouchButtonVisitor_Package_References.TouchButtonVisitor_Access_Array;
   function "=" (Left, Right : TouchButtonVisitor_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonVisitor_Package_References."=";
   subtype TouchButtonVisitor_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonVisitor_Package_References.TouchButtonVisitor_Access_Array_Access;
   function "=" (Left, Right : TouchButtonVisitor_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonVisitor_Package_References."=";
   subtype TouchButtonVisitor_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonVisitor_Package_References.TouchButtonVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonVisitor_Package_References."=";
   subtype TouchButtonVisitor_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonVisitor_Package_References.TouchButtonVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonVisitor_Package_References."=";

   type TouchButtonVisitor is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonVisitor'Class);
   function Create return TouchButtonVisitor_Access;
   procedure process (This : in out TouchButtonVisitor; touchButtonInput_Param : access TouchButtonInput_Package.TouchButtonInput'Class; string_Id : Unbounded_String);

end org.allbinary.input.motion.button.TouchButtonVisitor_Package;


