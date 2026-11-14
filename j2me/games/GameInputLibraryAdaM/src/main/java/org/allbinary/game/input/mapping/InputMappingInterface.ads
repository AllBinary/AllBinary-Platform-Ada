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

with AllBinary_Java;
limited with org.allbinary.game.input.mapping.InputMappingInterface_Package;
package org.allbinary.game.input.mapping.InputMappingInterface_Package_References is
   type InputMappingInterface_Access is access all org.allbinary.game.input.mapping.InputMappingInterface_Package.InputMappingInterface'Class;
   type InputMappingInterface_Access_Array is array (Natural range <>) of InputMappingInterface_Access;
   type InputMappingInterface_Access_Array_Access is access all InputMappingInterface_Access_Array;
   type InputMappingInterface_Access_Array_Access_Array is array (Natural range <>) of InputMappingInterface_Access_Array_Access;
   type InputMappingInterface_Access_Array_Access_Array_Access is access all InputMappingInterface_Access_Array_Access_Array;
   type InputMappingInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputMappingInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InputMappingInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputMappingInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputMappingInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputMappingInterface_Access_Array_Access is (if Value /= null and then Value.all in InputMappingInterface_Access_Array_Object'Class then InputMappingInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InputMappingInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputMappingInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputMappingInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputMappingInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputMappingInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputMappingInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputMappingInterface_Access_Array_Access_Array_Object'Class then InputMappingInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.mapping.InputMappingInterface_Package_References;

with org.allbinary.game.input.mapping.InputMappingInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package org.allbinary.game.input.mapping.InputMappingInterface_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type InputMappingInterface is interface;
   subtype InputMappingInterface_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access;
   function "=" (Left, Right : InputMappingInterface_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   function Java_Box (Value : InputMappingInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References.Java_Box;
   function Java_Unbox_InputMappingInterface_Access_Array (Value : access Java_Object'Class) return InputMappingInterface_Access_Array_Access renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References.Java_Unbox_InputMappingInterface_Access_Array;
   subtype InputMappingInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   function Java_Box (Value : InputMappingInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References.Java_Box;
   function Java_Unbox_InputMappingInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InputMappingInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References.Java_Unbox_InputMappingInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InputMappingInterface (Value : InputMappingInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure processInputMapping (This : in out InputMappingInterface; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is abstract;

end org.allbinary.game.input.mapping.InputMappingInterface_Package;


