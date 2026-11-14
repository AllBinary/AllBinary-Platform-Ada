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
limited with org.allbinary.input.TouchJ2ME_Package;
package org.allbinary.input.TouchJ2ME_Package_References is
   type TouchJ2ME_Access is access all org.allbinary.input.TouchJ2ME_Package.TouchJ2ME'Class;
   type TouchJ2ME_Access_Array is array (Natural range <>) of TouchJ2ME_Access;
   type TouchJ2ME_Access_Array_Access is access all TouchJ2ME_Access_Array;
   type TouchJ2ME_Access_Array_Access_Array is array (Natural range <>) of TouchJ2ME_Access_Array_Access;
   type TouchJ2ME_Access_Array_Access_Array_Access is access all TouchJ2ME_Access_Array_Access_Array;
   type TouchJ2ME_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchJ2ME_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchJ2ME_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchJ2ME_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchJ2ME_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchJ2ME_Access_Array_Access is (if Value /= null and then Value.all in TouchJ2ME_Access_Array_Object'Class then TouchJ2ME_Access_Array_Object'Class (Value.all).Value else null);
   type TouchJ2ME_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchJ2ME_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchJ2ME_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchJ2ME_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchJ2ME_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchJ2ME_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchJ2ME_Access_Array_Access_Array_Object'Class then TouchJ2ME_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.TouchJ2ME_Package_References;

with org.allbinary.input.TouchJ2ME_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.AllMotionRecognizer_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.input.TouchJ2ME_Package is

   package AllMotionRecognizer_Package renames Standard.org.allbinary.input.motion.AllMotionRecognizer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype AllMotionRecognizer_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access;
   use type AllMotionRecognizer_Access;
   subtype AllMotionRecognizer_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array;
   use type AllMotionRecognizer_Access_Array;
   subtype AllMotionRecognizer_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access;
   use type AllMotionRecognizer_Access_Array_Access;
   subtype AllMotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array;
   use type AllMotionRecognizer_Access_Array_Access_Array;
   subtype AllMotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.AllMotionRecognizer_Package_References.AllMotionRecognizer_Access_Array_Access_Array_Access;
   use type AllMotionRecognizer_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype TouchJ2ME_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access;
   function "=" (Left, Right : TouchJ2ME_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   function Java_Box (Value : TouchJ2ME_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.TouchJ2ME_Package_References.Java_Box;
   function Java_Unbox_TouchJ2ME_Access_Array (Value : access Java_Object'Class) return TouchJ2ME_Access_Array_Access renames org.allbinary.input.TouchJ2ME_Package_References.Java_Unbox_TouchJ2ME_Access_Array;
   subtype TouchJ2ME_Access_Array_Access_Array is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   subtype TouchJ2ME_Access_Array_Access_Array_Access is org.allbinary.input.TouchJ2ME_Package_References.TouchJ2ME_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchJ2ME_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.TouchJ2ME_Package_References."=";
   function Java_Box (Value : TouchJ2ME_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.TouchJ2ME_Package_References.Java_Box;
   function Java_Unbox_TouchJ2ME_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchJ2ME_Access_Array_Access_Array_Access renames org.allbinary.input.TouchJ2ME_Package_References.Java_Unbox_TouchJ2ME_Access_Array_Access_Array;

   type TouchJ2ME is new Java_Object with record
      logUtil : LogUtil_Access;
      DEVICE_ID : Integer;
      motionRecognizer : AllMotionRecognizer_Access;
   end record;

   procedure Initialize (This : in out TouchJ2ME'Class);
   function Create return TouchJ2ME_Access;
   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer);

end org.allbinary.input.TouchJ2ME_Package;


