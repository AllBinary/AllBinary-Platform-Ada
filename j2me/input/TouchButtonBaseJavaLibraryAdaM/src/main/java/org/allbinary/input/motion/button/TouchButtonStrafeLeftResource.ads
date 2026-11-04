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

limited with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;
package org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References is
   type TouchButtonStrafeLeftResource_Access is access all org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package.TouchButtonStrafeLeftResource'Class;
   type TouchButtonStrafeLeftResource_Access_Array is array (Natural range <>) of TouchButtonStrafeLeftResource_Access;
   type TouchButtonStrafeLeftResource_Access_Array_Access is access all TouchButtonStrafeLeftResource_Access_Array;
   type TouchButtonStrafeLeftResource_Access_Array_Access_Array is array (Natural range <>) of TouchButtonStrafeLeftResource_Access_Array_Access;
   type TouchButtonStrafeLeftResource_Access_Array_Access_Array_Access is access all TouchButtonStrafeLeftResource_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References;

with org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonStrafeLeftResource_Access is org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References.TouchButtonStrafeLeftResource_Access;
   function "=" (Left, Right : TouchButtonStrafeLeftResource_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References."=";
   subtype TouchButtonStrafeLeftResource_Access_Array is org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References.TouchButtonStrafeLeftResource_Access_Array;
   function "=" (Left, Right : TouchButtonStrafeLeftResource_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References."=";
   subtype TouchButtonStrafeLeftResource_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References.TouchButtonStrafeLeftResource_Access_Array_Access;
   function "=" (Left, Right : TouchButtonStrafeLeftResource_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References."=";
   subtype TouchButtonStrafeLeftResource_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References.TouchButtonStrafeLeftResource_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonStrafeLeftResource_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References."=";
   subtype TouchButtonStrafeLeftResource_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References.TouchButtonStrafeLeftResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonStrafeLeftResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package_References."=";

   type TouchButtonStrafeLeftResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonStrafeLeftResource'Class);
   function Create return TouchButtonStrafeLeftResource_Access;
   function getInstance return TouchButtonResource_Access;

end org.allbinary.input.motion.button.TouchButtonStrafeLeftResource_Package;


