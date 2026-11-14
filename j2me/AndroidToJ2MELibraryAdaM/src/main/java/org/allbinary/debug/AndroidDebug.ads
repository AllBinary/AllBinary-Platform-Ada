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
limited with org.allbinary.debug.AndroidDebug_Package;
package org.allbinary.debug.AndroidDebug_Package_References is
   type AndroidDebug_Access is access all org.allbinary.debug.AndroidDebug_Package.AndroidDebug'Class;
   type AndroidDebug_Access_Array is array (Natural range <>) of AndroidDebug_Access;
   type AndroidDebug_Access_Array_Access is access all AndroidDebug_Access_Array;
   type AndroidDebug_Access_Array_Access_Array is array (Natural range <>) of AndroidDebug_Access_Array_Access;
   type AndroidDebug_Access_Array_Access_Array_Access is access all AndroidDebug_Access_Array_Access_Array;
   type AndroidDebug_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidDebug_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidDebug_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidDebug_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidDebug_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidDebug_Access_Array_Access is (if Value /= null and then Value.all in AndroidDebug_Access_Array_Object'Class then AndroidDebug_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidDebug_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidDebug_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidDebug_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidDebug_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidDebug_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidDebug_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidDebug_Access_Array_Access_Array_Object'Class then AndroidDebug_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.debug.AndroidDebug_Package_References;

with org.allbinary.debug.AndroidDebug_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;

package org.allbinary.debug.AndroidDebug_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidDebug_Access is org.allbinary.debug.AndroidDebug_Package_References.AndroidDebug_Access;
   function "=" (Left, Right : AndroidDebug_Access) return Boolean renames org.allbinary.debug.AndroidDebug_Package_References."=";
   subtype AndroidDebug_Access_Array is org.allbinary.debug.AndroidDebug_Package_References.AndroidDebug_Access_Array;
   function "=" (Left, Right : AndroidDebug_Access_Array) return Boolean renames org.allbinary.debug.AndroidDebug_Package_References."=";
   subtype AndroidDebug_Access_Array_Access is org.allbinary.debug.AndroidDebug_Package_References.AndroidDebug_Access_Array_Access;
   function "=" (Left, Right : AndroidDebug_Access_Array_Access) return Boolean renames org.allbinary.debug.AndroidDebug_Package_References."=";
   function Java_Box (Value : AndroidDebug_Access_Array_Access) return Java_Object_Access renames org.allbinary.debug.AndroidDebug_Package_References.Java_Box;
   function Java_Unbox_AndroidDebug_Access_Array (Value : access Java_Object'Class) return AndroidDebug_Access_Array_Access renames org.allbinary.debug.AndroidDebug_Package_References.Java_Unbox_AndroidDebug_Access_Array;
   subtype AndroidDebug_Access_Array_Access_Array is org.allbinary.debug.AndroidDebug_Package_References.AndroidDebug_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidDebug_Access_Array_Access_Array) return Boolean renames org.allbinary.debug.AndroidDebug_Package_References."=";
   subtype AndroidDebug_Access_Array_Access_Array_Access is org.allbinary.debug.AndroidDebug_Package_References.AndroidDebug_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidDebug_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.debug.AndroidDebug_Package_References."=";
   function Java_Box (Value : AndroidDebug_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.debug.AndroidDebug_Package_References.Java_Box;
   function Java_Unbox_AndroidDebug_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidDebug_Access_Array_Access_Array_Access renames org.allbinary.debug.AndroidDebug_Package_References.Java_Unbox_AndroidDebug_Access_Array_Access_Array;

   type AndroidDebug is new Java_Object and DebugInterface with record
      startTime : Long_Long_Integer;
      running : Boolean;
      bufferSize : Integer;
   end record;

   procedure Initialize (This : in out AndroidDebug'Class);
   function Create return AndroidDebug_Access;
   procedure start (This : in out AndroidDebug);
   procedure stop (This : in out AndroidDebug);
   function getMaxTime (This : in out AndroidDebug) return Long_Long_Integer;
   procedure setStartTime (This : in out AndroidDebug; startTime : Long_Long_Integer);
   function getStartTime (This : in out AndroidDebug) return Long_Long_Integer;
   procedure setRunning (This : in out AndroidDebug; running : Boolean);
   function isRunning (This : in out AndroidDebug) return Boolean;

end org.allbinary.debug.AndroidDebug_Package;


