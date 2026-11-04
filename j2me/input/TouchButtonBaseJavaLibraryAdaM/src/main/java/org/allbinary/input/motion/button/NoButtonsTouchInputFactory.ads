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

limited with org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package;
package org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References is
   type NoButtonsTouchInputFactory_Access is access all org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package.NoButtonsTouchInputFactory'Class;
   type NoButtonsTouchInputFactory_Access_Array is array (Natural range <>) of NoButtonsTouchInputFactory_Access;
   type NoButtonsTouchInputFactory_Access_Array_Access is access all NoButtonsTouchInputFactory_Access_Array;
   type NoButtonsTouchInputFactory_Access_Array_Access_Array is array (Natural range <>) of NoButtonsTouchInputFactory_Access_Array_Access;
   type NoButtonsTouchInputFactory_Access_Array_Access_Array_Access is access all NoButtonsTouchInputFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References;

with org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.button.BaseTouchInput_Package;
with org.allbinary.input.motion.button.BaseTouchInput_Package_References;

package org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package is

   package Reference_Types is
   subtype BaseTouchInput_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access;
   use type BaseTouchInput_Access;
   subtype BaseTouchInput_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array;
   use type BaseTouchInput_Access_Array;
   subtype BaseTouchInput_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access;
   use type BaseTouchInput_Access_Array_Access;
   subtype BaseTouchInput_Access_Array_Access_Array is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array;
   use type BaseTouchInput_Access_Array_Access_Array;
   subtype BaseTouchInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BaseTouchInput_Package_References.BaseTouchInput_Access_Array_Access_Array_Access;
   use type BaseTouchInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoButtonsTouchInputFactory_Access is org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References.NoButtonsTouchInputFactory_Access;
   function "=" (Left, Right : NoButtonsTouchInputFactory_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References."=";
   subtype NoButtonsTouchInputFactory_Access_Array is org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References.NoButtonsTouchInputFactory_Access_Array;
   function "=" (Left, Right : NoButtonsTouchInputFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References."=";
   subtype NoButtonsTouchInputFactory_Access_Array_Access is org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References.NoButtonsTouchInputFactory_Access_Array_Access;
   function "=" (Left, Right : NoButtonsTouchInputFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References."=";
   subtype NoButtonsTouchInputFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References.NoButtonsTouchInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NoButtonsTouchInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References."=";
   subtype NoButtonsTouchInputFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References.NoButtonsTouchInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoButtonsTouchInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package_References."=";

   type NoButtonsTouchInputFactory is new Java_Object with null record;
   instance : BaseTouchInput_Access;

   procedure Initialize (This : in out NoButtonsTouchInputFactory'Class);
   function Create return NoButtonsTouchInputFactory_Access;
   function getInstance return BaseTouchInput_Access;

end org.allbinary.input.motion.button.NoButtonsTouchInputFactory_Package;


