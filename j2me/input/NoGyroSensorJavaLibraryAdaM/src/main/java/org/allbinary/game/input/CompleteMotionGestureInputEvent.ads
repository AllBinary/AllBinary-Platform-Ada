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
limited with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
package org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References is
   type CompleteMotionGestureInputEvent_Access is access all org.allbinary.game.input.CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class;
   type CompleteMotionGestureInputEvent_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEvent_Access;
   type CompleteMotionGestureInputEvent_Access_Array_Access is access all CompleteMotionGestureInputEvent_Access_Array;
   type CompleteMotionGestureInputEvent_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEvent_Access_Array_Access;
   type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   type CompleteMotionGestureInputEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputEvent_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputEvent_Access_Array_Object'Class then CompleteMotionGestureInputEvent_Access_Array_Object'Class (Value.all).Value else null);
   type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CompleteMotionGestureInputEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CompleteMotionGestureInputEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CompleteMotionGestureInputEvent_Access_Array_Access_Array_Object'Class then CompleteMotionGestureInputEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;

with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.input.CompleteMotionGestureInputInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputInterface_Package;

package org.allbinary.game.input.CompleteMotionGestureInputEvent_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   use type MotionGestureInput_Access;
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   use type MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   use type MotionGestureInput_Access_Array_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access_Array_Access;
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


   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputEvent_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputEvent_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.Java_Unbox_CompleteMotionGestureInputEvent_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   function Java_Box (Value : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.Java_Box;
   function Java_Unbox_CompleteMotionGestureInputEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.Java_Unbox_CompleteMotionGestureInputEvent_Access_Array_Access_Array;

   type CompleteMotionGestureInputEvent is new AllBinaryEventObject and CompleteMotionGestureInputInterface with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      motionGestureInput : MotionGestureInput_Access;
   end record;

   procedure Initialize (This : in out CompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function Create (name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return CompleteMotionGestureInputEvent_Access;
   procedure setName (This : in out CompleteMotionGestureInputEvent; name : Unbounded_String);
   function getName (This : in out CompleteMotionGestureInputEvent) return Unbounded_String;
   procedure setMotionGestureInput (This : in out CompleteMotionGestureInputEvent; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class);
   function getMotionGestureInput (This : in out CompleteMotionGestureInputEvent) return MotionGestureInput_Access;

end org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;


