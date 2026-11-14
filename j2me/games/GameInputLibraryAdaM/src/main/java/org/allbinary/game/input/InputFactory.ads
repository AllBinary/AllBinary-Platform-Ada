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
limited with org.allbinary.game.input.InputFactory_Package;
package org.allbinary.game.input.InputFactory_Package_References is
   type InputFactory_Access is access all org.allbinary.game.input.InputFactory_Package.InputFactory'Class;
   type InputFactory_Access_Array is array (Natural range <>) of InputFactory_Access;
   type InputFactory_Access_Array_Access is access all InputFactory_Access_Array;
   type InputFactory_Access_Array_Access_Array is array (Natural range <>) of InputFactory_Access_Array_Access;
   type InputFactory_Access_Array_Access_Array_Access is access all InputFactory_Access_Array_Access_Array;
   type InputFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : InputFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputFactory_Access_Array_Access is (if Value /= null and then Value.all in InputFactory_Access_Array_Object'Class then InputFactory_Access_Array_Object'Class (Value.all).Value else null);
   type InputFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InputFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InputFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InputFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InputFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InputFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InputFactory_Access_Array_Access_Array_Object'Class then InputFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.InputFactory_Package_References;

with org.allbinary.game.input.InputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package org.allbinary.game.input.InputFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype InputFactory_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access;
   function "=" (Left, Right : InputFactory_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   function Java_Box (Value : InputFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.InputFactory_Package_References.Java_Box;
   function Java_Unbox_InputFactory_Access_Array (Value : access Java_Object'Class) return InputFactory_Access_Array_Access renames org.allbinary.game.input.InputFactory_Package_References.Java_Unbox_InputFactory_Access_Array;
   subtype InputFactory_Access_Array_Access_Array is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   subtype InputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.InputFactory_Package_References.InputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.InputFactory_Package_References."=";
   function Java_Box (Value : InputFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.InputFactory_Package_References.Java_Box;
   function Java_Unbox_InputFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return InputFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.InputFactory_Package_References.Java_Unbox_InputFactory_Access_Array_Access_Array;

   type InputFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      KEY_CODE_LABEL : Unbounded_String;
      DEVICE_ID_LABEL : Unbounded_String;
      MAX : Integer;
      inputIntegerArray : Input_Access_Array_Access;
      NO_INPUT : Input_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out InputFactory'Class);
   function Create return InputFactory_Access;
   function getInstance return InputFactory_Access;
   procedure add (This : in out InputFactory; id : Integer; input_Param : access Input_Package.Input'Class);
   function getInstanceById (This : in out InputFactory; id_Param : Integer) return Input_Access;
   procedure getInstanceById (This : in out InputFactory; id_Param : Integer);

end org.allbinary.game.input.InputFactory_Package;


