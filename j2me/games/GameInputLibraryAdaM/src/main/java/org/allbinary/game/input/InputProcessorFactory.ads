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
limited with org.allbinary.game.input.InputProcessorFactory_Package;
package org.allbinary.game.input.InputProcessorFactory_Package_References is
   type InputProcessorFactory_Access is access all org.allbinary.game.input.InputProcessorFactory_Package.InputProcessorFactory'Class;
   type InputProcessorFactory_Access_Array is array (Natural range <>) of InputProcessorFactory_Access;
   type InputProcessorFactory_Access_Array_Access is access all InputProcessorFactory_Access_Array;
   type InputProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of InputProcessorFactory_Access_Array_Access;
   type InputProcessorFactory_Access_Array_Access_Array_Access is access all InputProcessorFactory_Access_Array_Access_Array;
   type InputProcessorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputProcessorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputProcessorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputProcessorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputProcessorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputProcessorFactory_Access_Array_Access is (if Value /= null and then Value.all in InputProcessorFactory_Access_Array_Object'Class then InputProcessorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputProcessorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputProcessorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputProcessorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputProcessorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputProcessorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputProcessorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputProcessorFactory_Access_Array_Access_Array_Object'Class then InputProcessorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.InputProcessorFactory_Package_References;

with org.allbinary.game.input.InputProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.InputProcessor_Package;
with org.allbinary.game.input.InputProcessor_Package_References;

package org.allbinary.game.input.InputProcessorFactory_Package is

   package Reference_Types is
   subtype InputProcessor_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access;
   use type InputProcessor_Access;
   subtype InputProcessor_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array;
   use type InputProcessor_Access_Array;
   subtype InputProcessor_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access;
   use type InputProcessor_Access_Array_Access;
   subtype InputProcessor_Access_Array_Access_Array is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array;
   use type InputProcessor_Access_Array_Access_Array;
   subtype InputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.InputProcessor_Package_References.InputProcessor_Access_Array_Access_Array_Access;
   use type InputProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputProcessorFactory_Access is org.allbinary.game.input.InputProcessorFactory_Package_References.InputProcessorFactory_Access;
   function "=" (Left, Right : InputProcessorFactory_Access) return Boolean renames org.allbinary.game.input.InputProcessorFactory_Package_References."=";
   subtype InputProcessorFactory_Access_Array is org.allbinary.game.input.InputProcessorFactory_Package_References.InputProcessorFactory_Access_Array;
   function "=" (Left, Right : InputProcessorFactory_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessorFactory_Package_References."=";
   subtype InputProcessorFactory_Access_Array_Access is org.allbinary.game.input.InputProcessorFactory_Package_References.InputProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : InputProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessorFactory_Package_References."=";
   function Java_Box (Value : InputProcessorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.InputProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_InputProcessorFactory_Access_Array (Value : access Java_Object'Class) return InputProcessorFactory_Access_Array_Access renames org.allbinary.game.input.InputProcessorFactory_Package_References.Java_Unbox_InputProcessorFactory_Access_Array;
   subtype InputProcessorFactory_Access_Array_Access_Array is org.allbinary.game.input.InputProcessorFactory_Package_References.InputProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputProcessorFactory_Package_References."=";
   subtype InputProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputProcessorFactory_Package_References.InputProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputProcessorFactory_Package_References."=";
   function Java_Box (Value : InputProcessorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.InputProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_InputProcessorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputProcessorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.InputProcessorFactory_Package_References.Java_Unbox_InputProcessorFactory_Access_Array_Access_Array;

   type InputProcessorFactory is new Java_Object with record
      inputProcessor : InputProcessor_Access;
   end record;
   instance : InputProcessorFactory_Access;

   procedure Initialize (This : in out InputProcessorFactory'Class);
   function Create return InputProcessorFactory_Access;
   function getInstance return InputProcessorFactory_Access;
   function getInputProcessor (This : in out InputProcessorFactory) return InputProcessor_Access;

end org.allbinary.game.input.InputProcessorFactory_Package;


