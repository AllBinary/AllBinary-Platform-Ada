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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.InputFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InputFactory is tagged;
   type InputFactory_Access is access all InputFactory'Class;
   type InputFactory_Access_Array is array (Natural range <>) of InputFactory_Access;
   type InputFactory_Access_Array_Access is access all InputFactory_Access_Array;
   type InputFactory_Access_Array_Access_Array is array (Natural range <>) of InputFactory_Access_Array_Access;
   type InputFactory_Access_Array_Access_Array_Access is access all InputFactory_Access_Array_Access_Array;

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


