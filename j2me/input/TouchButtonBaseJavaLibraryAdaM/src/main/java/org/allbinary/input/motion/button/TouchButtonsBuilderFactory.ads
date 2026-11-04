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

limited with org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package;
package org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References is
   type TouchButtonsBuilderFactory_Access is access all org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package.TouchButtonsBuilderFactory'Class;
   type TouchButtonsBuilderFactory_Access_Array is array (Natural range <>) of TouchButtonsBuilderFactory_Access;
   type TouchButtonsBuilderFactory_Access_Array_Access is access all TouchButtonsBuilderFactory_Access_Array;
   type TouchButtonsBuilderFactory_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsBuilderFactory_Access_Array_Access;
   type TouchButtonsBuilderFactory_Access_Array_Access_Array_Access is access all TouchButtonsBuilderFactory_Access_Array_Access_Array;
end org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References;

with org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References;
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

package org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package is

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


   subtype TouchButtonsBuilderFactory_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";
   subtype TouchButtonsBuilderFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References.TouchButtonsBuilderFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsBuilderFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package_References."=";

   type TouchButtonsBuilderFactory is new Java_Object with null record;
   NO_TOUCH_BUTTON_BUILDER_FACTORY : TouchButtonsBuilderFactory_Access;

   procedure Initialize (This : in out TouchButtonsBuilderFactory'Class);
   function Create return TouchButtonsBuilderFactory_Access;
   function getInstance (This : in out TouchButtonsBuilderFactory) return BaseTouchInput_Access;

end org.allbinary.input.motion.button.TouchButtonsBuilderFactory_Package;


