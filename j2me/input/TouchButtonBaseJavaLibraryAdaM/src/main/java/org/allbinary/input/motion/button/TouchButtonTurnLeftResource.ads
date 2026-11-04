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

limited with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;
package org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References is
   type TouchButtonTurnLeftResource_Access is access all org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package.TouchButtonTurnLeftResource'Class;
   type TouchButtonTurnLeftResource_Access_Array is array (Natural range <>) of TouchButtonTurnLeftResource_Access;
   type TouchButtonTurnLeftResource_Access_Array_Access is access all TouchButtonTurnLeftResource_Access_Array;
   type TouchButtonTurnLeftResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonTurnLeftResource_Access_Array_Access;
   type TouchButtonTurnLeftResource_Access_Array_Access_Array_Access is access all TouchButtonTurnLeftResource_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonTurnLeftResource_Access is org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References.TouchButtonTurnLeftResource_Access;
   function "=" (Left, Right : TouchButtonTurnLeftResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References."=";
   subtype TouchButtonTurnLeftResource_Access_Array is org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References.TouchButtonTurnLeftResource_Access_Array;
   function "=" (Left, Right : TouchButtonTurnLeftResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References."=";
   subtype TouchButtonTurnLeftResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References.TouchButtonTurnLeftResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonTurnLeftResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References."=";
   subtype TouchButtonTurnLeftResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References.TouchButtonTurnLeftResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonTurnLeftResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References."=";
   subtype TouchButtonTurnLeftResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References.TouchButtonTurnLeftResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonTurnLeftResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package_References."=";

   type TouchButtonTurnLeftResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonTurnLeftResource'Class);
   function Create return TouchButtonTurnLeftResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonTurnLeftResource_Package;


