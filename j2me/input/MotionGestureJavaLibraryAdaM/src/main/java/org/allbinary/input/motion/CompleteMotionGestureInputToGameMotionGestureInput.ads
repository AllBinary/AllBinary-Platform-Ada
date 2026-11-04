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

limited with org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;
package org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References is
   type CompleteMotionGestureInputToGameMotionGestureInput_Access is access all org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package.CompleteMotionGestureInputToGameMotionGestureInput'Class;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array is array (Natural range <>) of CompleteMotionGestureInputToGameMotionGestureInput_Access;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access is access all CompleteMotionGestureInputToGameMotionGestureInput_Access_Array;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array is array (Natural range <>) of CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array_Access is access all CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array;
end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References;

with org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References;
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

package org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype CompleteMotionGestureInputToGameMotionGestureInput_Access is org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References.CompleteMotionGestureInputToGameMotionGestureInput_Access;
   function "=" (Left, Right : CompleteMotionGestureInputToGameMotionGestureInput_Access) return Boolean renames org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References."=";
   subtype CompleteMotionGestureInputToGameMotionGestureInput_Access_Array is org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References.CompleteMotionGestureInputToGameMotionGestureInput_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputToGameMotionGestureInput_Access_Array) return Boolean renames org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References."=";
   subtype CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access is org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References.CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access) return Boolean renames org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References."=";
   subtype CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References.CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References."=";
   subtype CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References.CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package_References."=";

   type CompleteMotionGestureInputToGameMotionGestureInput is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CompleteMotionGestureInputToGameMotionGestureInput_Access;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class);
   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput);

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


