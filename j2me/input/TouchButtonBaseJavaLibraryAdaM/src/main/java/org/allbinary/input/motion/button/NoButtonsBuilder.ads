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
limited with org.allbinary.input.motion.button.NoButtonsBuilder_Package;
package org.allbinary.input.motion.button.NoButtonsBuilder_Package_References is
   type NoButtonsBuilder_Access is access all org.allbinary.input.motion.button.NoButtonsBuilder_Package.NoButtonsBuilder'Class;
   type NoButtonsBuilder_Access_Array is array (Natural range <>) of NoButtonsBuilder_Access;
   type NoButtonsBuilder_Access_Array_Access is access all NoButtonsBuilder_Access_Array;
   type NoButtonsBuilder_Access_Array_Access_Array is array (Natural range <>) of NoButtonsBuilder_Access_Array_Access;
   type NoButtonsBuilder_Access_Array_Access_Array_Access is access all NoButtonsBuilder_Access_Array_Access_Array;
   type NoButtonsBuilder_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoButtonsBuilder_Access_Array_Access;
   end record;
   function Java_Box (Value : NoButtonsBuilder_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoButtonsBuilder_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoButtonsBuilder_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoButtonsBuilder_Access_Array_Access is (if Value /= null and then Value.all in NoButtonsBuilder_Access_Array_Object'Class then NoButtonsBuilder_Access_Array_Object'Class (Value.all).Value else null);
   type NoButtonsBuilder_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoButtonsBuilder_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoButtonsBuilder_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoButtonsBuilder_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoButtonsBuilder_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoButtonsBuilder_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoButtonsBuilder_Access_Array_Access_Array_Object'Class then NoButtonsBuilder_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.NoButtonsBuilder_Package_References;

with org.allbinary.input.motion.button.NoButtonsBuilder_Package_References;
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

package org.allbinary.input.motion.button.NoButtonsBuilder_Package is

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


   subtype NoButtonsBuilder_Access is org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.NoButtonsBuilder_Access;
   function "=" (Left, Right : NoButtonsBuilder_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References."=";
   subtype NoButtonsBuilder_Access_Array is org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.NoButtonsBuilder_Access_Array;
   function "=" (Left, Right : NoButtonsBuilder_Access_Array) return Boolean renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References."=";
   subtype NoButtonsBuilder_Access_Array_Access is org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.NoButtonsBuilder_Access_Array_Access;
   function "=" (Left, Right : NoButtonsBuilder_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References."=";
   function Java_Box (Value : NoButtonsBuilder_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.Java_Box;
   function Java_Unbox_NoButtonsBuilder_Access_Array (Value : access Java_Object'Class) return NoButtonsBuilder_Access_Array_Access renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.Java_Unbox_NoButtonsBuilder_Access_Array;
   subtype NoButtonsBuilder_Access_Array_Access_Array is org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.NoButtonsBuilder_Access_Array_Access_Array;
   function "=" (Left, Right : NoButtonsBuilder_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References."=";
   subtype NoButtonsBuilder_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.NoButtonsBuilder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoButtonsBuilder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References."=";
   function Java_Box (Value : NoButtonsBuilder_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.Java_Box;
   function Java_Unbox_NoButtonsBuilder_Access_Array_Access_Array (Value : access Java_Object'Class) return NoButtonsBuilder_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.NoButtonsBuilder_Package_References.Java_Unbox_NoButtonsBuilder_Access_Array_Access_Array;

   type NoButtonsBuilder is new BaseTouchInput with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NoButtonsBuilder'Class);
   function Create return NoButtonsBuilder_Access;
   function getList (This : in out NoButtonsBuilder) return BasicArrayList_Access;

end org.allbinary.input.motion.button.NoButtonsBuilder_Package;


