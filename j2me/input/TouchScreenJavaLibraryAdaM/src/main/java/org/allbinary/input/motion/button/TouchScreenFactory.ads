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
limited with org.allbinary.input.motion.button.TouchScreenFactory_Package;
package org.allbinary.input.motion.button.TouchScreenFactory_Package_References is
   type TouchScreenFactory_Access is access all org.allbinary.input.motion.button.TouchScreenFactory_Package.TouchScreenFactory'Class;
   type TouchScreenFactory_Access_Array is array (Natural range <>) of TouchScreenFactory_Access;
   type TouchScreenFactory_Access_Array_Access is access all TouchScreenFactory_Access_Array;
   type TouchScreenFactory_Access_Array_Access_Array is array (Natural range <>) of TouchScreenFactory_Access_Array_Access;
   type TouchScreenFactory_Access_Array_Access_Array_Access is access all TouchScreenFactory_Access_Array_Access_Array;
   type TouchScreenFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenFactory_Access_Array_Object'Class then TouchScreenFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchScreenFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchScreenFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchScreenFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchScreenFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchScreenFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchScreenFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchScreenFactory_Access_Array_Access_Array_Object'Class then TouchScreenFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchScreenFactory_Package_References;

with org.allbinary.input.motion.button.TouchScreenFactory_Package_References;
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
limited with org.allbinary.input.motion.button.TouchScreenType_Package;
with org.allbinary.input.motion.button.TouchScreenType_Package_References;

package org.allbinary.input.motion.button.TouchScreenFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype TouchScreenType_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access;
   use type TouchScreenType_Access;
   subtype TouchScreenType_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array;
   use type TouchScreenType_Access_Array;
   subtype TouchScreenType_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access;
   subtype TouchScreenType_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array;
   use type TouchScreenType_Access_Array_Access_Array;
   subtype TouchScreenType_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenType_Package_References.TouchScreenType_Access_Array_Access_Array_Access;
   use type TouchScreenType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchScreenFactory_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access;
   function "=" (Left, Right : TouchScreenFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array;
   function "=" (Left, Right : TouchScreenFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   function Java_Box (Value : TouchScreenFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenFactory_Access_Array (Value : access Java_Object'Class) return TouchScreenFactory_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References.Java_Unbox_TouchScreenFactory_Access_Array;
   subtype TouchScreenFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   subtype TouchScreenFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchScreenFactory_Package_References.TouchScreenFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchScreenFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References."=";
   function Java_Box (Value : TouchScreenFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References.Java_Box;
   function Java_Unbox_TouchScreenFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchScreenFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchScreenFactory_Package_References.Java_Unbox_TouchScreenFactory_Access_Array_Access_Array;

   type TouchScreenFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      touch : Boolean;
      multiTouch : Boolean;
      multiTouchDistinct : Boolean;
      touchScreenType : TouchScreenType_Access;
   end record;
   SINGLETON : TouchScreenFactory_Access;

   procedure Initialize (This : in out TouchScreenFactory'Class);
   function Create return TouchScreenFactory_Access;
   function getInstance return TouchScreenFactory_Access;
   procedure setMultiTouch (This : in out TouchScreenFactory; multiTouch : Boolean);
   function isMultiTouch (This : in out TouchScreenFactory) return Boolean;
   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean);
   function isTouch (This : in out TouchScreenFactory) return Boolean;
   procedure setMultiTouchDistinct (This : in out TouchScreenFactory; multiTouchDistinct : Boolean);
   function isMultiTouchDistinct (This : in out TouchScreenFactory) return Boolean;
   procedure setTouchScreenType (This : in out TouchScreenFactory; touchScreenType_Param : access TouchScreenType_Package.TouchScreenType'Class);
   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access;
   function toString (This : in out TouchScreenFactory) return Unbounded_String;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


