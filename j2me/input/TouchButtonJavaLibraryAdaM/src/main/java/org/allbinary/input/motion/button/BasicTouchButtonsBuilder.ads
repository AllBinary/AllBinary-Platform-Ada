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

limited with org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package;
package org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References is
   type BasicTouchButtonsBuilder_Access is access all org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package.BasicTouchButtonsBuilder'Class;
   type BasicTouchButtonsBuilder_Access_Array is array (Natural range <>) of BasicTouchButtonsBuilder_Access;
   type BasicTouchButtonsBuilder_Access_Array_Access is access all BasicTouchButtonsBuilder_Access_Array;
   type BasicTouchButtonsBuilder_Access_Array_Access_Array is array (Natural range <>) of BasicTouchButtonsBuilder_Access_Array_Access;
   type BasicTouchButtonsBuilder_Access_Array_Access_Array_Access is access all BasicTouchButtonsBuilder_Access_Array_Access_Array;
end org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References;

with org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicTouchButtonsBuilder_Access is org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References.BasicTouchButtonsBuilder_Access;
   function "=" (Left, Right : BasicTouchButtonsBuilder_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References."=";
   subtype BasicTouchButtonsBuilder_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References.BasicTouchButtonsBuilder_Access_Array;
   function "=" (Left, Right : BasicTouchButtonsBuilder_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References."=";
   subtype BasicTouchButtonsBuilder_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References.BasicTouchButtonsBuilder_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonsBuilder_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References."=";
   subtype BasicTouchButtonsBuilder_Access_Array_Access_Array is org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References.BasicTouchButtonsBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTouchButtonsBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References."=";
   subtype BasicTouchButtonsBuilder_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References.BasicTouchButtonsBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTouchButtonsBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package_References."=";

   type BasicTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasicTouchButtonsBuilder'Class);
   function Create return BasicTouchButtonsBuilder_Access;
   function getList (This : in out BasicTouchButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.BasicTouchButtonsBuilder_Package;


