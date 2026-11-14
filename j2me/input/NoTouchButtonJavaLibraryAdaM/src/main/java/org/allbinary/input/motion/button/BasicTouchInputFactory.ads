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
limited with org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
package org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References is
   type BasicTouchInputFactory_Access is access all org.allbinary.input.motion.button.BasicTouchInputFactory_Package.BasicTouchInputFactory'Class;
   type BasicTouchInputFactory_Access_Array is array (Natural range <>) of BasicTouchInputFactory_Access;
   type BasicTouchInputFactory_Access_Array_Access is access all BasicTouchInputFactory_Access_Array;
   type BasicTouchInputFactory_Access_Array_Access_Array is array (Natural range <>) of BasicTouchInputFactory_Access_Array_Access;
   type BasicTouchInputFactory_Access_Array_Access_Array_Access is access all BasicTouchInputFactory_Access_Array_Access_Array;
   type BasicTouchInputFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTouchInputFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTouchInputFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTouchInputFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTouchInputFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTouchInputFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicTouchInputFactory_Access_Array_Object'Class then BasicTouchInputFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTouchInputFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTouchInputFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTouchInputFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTouchInputFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTouchInputFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTouchInputFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTouchInputFactory_Access_Array_Access_Array_Object'Class then BasicTouchInputFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References;

with org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package_References;

package org.allbinary.input.motion.button.BasicTouchInputFactory_Package is

   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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


   subtype BasicTouchInputFactory_Access is org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.BasicTouchInputFactory_Access;
   function "=" (Left, Right : BasicTouchInputFactory_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References."=";
   subtype BasicTouchInputFactory_Access_Array is org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.BasicTouchInputFactory_Access_Array;
   function "=" (Left, Right : BasicTouchInputFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References."=";
   subtype BasicTouchInputFactory_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.BasicTouchInputFactory_Access_Array_Access;
   function "=" (Left, Right : BasicTouchInputFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References."=";
   function Java_Box (Value : BasicTouchInputFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.Java_Box;
   function Java_Unbox_BasicTouchInputFactory_Access_Array (Value : access Java_Object'Class) return BasicTouchInputFactory_Access_Array_Access renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.Java_Unbox_BasicTouchInputFactory_Access_Array;
   subtype BasicTouchInputFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.BasicTouchInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTouchInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References."=";
   subtype BasicTouchInputFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.BasicTouchInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTouchInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References."=";
   function Java_Box (Value : BasicTouchInputFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.Java_Box;
   function Java_Unbox_BasicTouchInputFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTouchInputFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.BasicTouchInputFactory_Package_References.Java_Unbox_BasicTouchInputFactory_Access_Array_Access_Array;

   type BasicTouchInputFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      SPECIAL_BUTTON_SIX : TouchButtonInput_Access;
      SPECIAL_BUTTON_FIVE : TouchButtonInput_Access;
      SPECIAL_BUTTON_FOUR : TouchButtonInput_Access;
      SPECIAL_BUTTON_THREE : TouchButtonInput_Access;
      SPECIAL_BUTTON_TWO : TouchButtonInput_Access;
      SPECIAL_BUTTON_ONE : TouchButtonInput_Access;
      UP : TouchButtonInput_Access;
      LEFT : TouchButtonInput_Access;
      RIGHT : TouchButtonInput_Access;
      DOWN : TouchButtonInput_Access;
      NONE : TouchButtonInput_Access;
      initialized : Boolean;
      list : BasicArrayList_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out BasicTouchInputFactory'Class);
   function Create return BasicTouchInputFactory_Access;
   function getInstance return BasicTouchInputFactory_Access;
   procedure init (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure updateAll (This : in out BasicTouchInputFactory; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   procedure updateAllList (This : in out BasicTouchInputFactory; list_Param : access BasicArrayList_Package.BasicArrayList'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   function getList (This : in out BasicTouchInputFactory) return BasicArrayList_Access;

end org.allbinary.input.motion.button.BasicTouchInputFactory_Package;


