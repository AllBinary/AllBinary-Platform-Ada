-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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

limited with org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;
package org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References is
   type RTSTouchButtonsBuilder_Access is access all org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package.RTSTouchButtonsBuilder'Class;
   type RTSTouchButtonsBuilder_Access_Array is array (Natural range <>) of RTSTouchButtonsBuilder_Access;
   type RTSTouchButtonsBuilder_Access_Array_Access is access all RTSTouchButtonsBuilder_Access_Array;
   type RTSTouchButtonsBuilder_Access_Array_Access_Array is array (Natural range <>) of RTSTouchButtonsBuilder_Access_Array_Access;
   type RTSTouchButtonsBuilder_Access_Array_Access_Array_Access is access all RTSTouchButtonsBuilder_Access_Array_Access_Array;
end org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References;

with org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.input.motion.button.BaseTouchInput_Package; use org.allbinary.input.motion.button.BaseTouchInput_Package;

package org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype RTSTouchButtonsBuilder_Access is org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References.RTSTouchButtonsBuilder_Access;
   function "=" (Left, Right : RTSTouchButtonsBuilder_Access) return Boolean renames org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References."=";
   subtype RTSTouchButtonsBuilder_Access_Array is org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References.RTSTouchButtonsBuilder_Access_Array;
   function "=" (Left, Right : RTSTouchButtonsBuilder_Access_Array) return Boolean renames org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References."=";
   subtype RTSTouchButtonsBuilder_Access_Array_Access is org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References.RTSTouchButtonsBuilder_Access_Array_Access;
   function "=" (Left, Right : RTSTouchButtonsBuilder_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References."=";
   subtype RTSTouchButtonsBuilder_Access_Array_Access_Array is org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References.RTSTouchButtonsBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : RTSTouchButtonsBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References."=";
   subtype RTSTouchButtonsBuilder_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References.RTSTouchButtonsBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSTouchButtonsBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package_References."=";

   type RTSTouchButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out RTSTouchButtonsBuilder'Class);
   function Create return RTSTouchButtonsBuilder_Access;
   function getList (This : in out RTSTouchButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.RTSTouchButtonsBuilder_Package;


