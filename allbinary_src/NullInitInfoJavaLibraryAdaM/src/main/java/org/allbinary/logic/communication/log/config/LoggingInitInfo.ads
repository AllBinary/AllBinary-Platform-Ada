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
limited with org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;
package org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References is
   type LoggingInitInfo_Access is access all org.allbinary.logic.communication.log.config.LoggingInitInfo_Package.LoggingInitInfo'Class;
   type LoggingInitInfo_Access_Array is array (Natural range <>) of LoggingInitInfo_Access;
   type LoggingInitInfo_Access_Array_Access is access all LoggingInitInfo_Access_Array;
   type LoggingInitInfo_Access_Array_Access_Array is array (Natural range <>) of LoggingInitInfo_Access_Array_Access;
   type LoggingInitInfo_Access_Array_Access_Array_Access is access all LoggingInitInfo_Access_Array_Access_Array;
   type LoggingInitInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoggingInitInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : LoggingInitInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoggingInitInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoggingInitInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoggingInitInfo_Access_Array_Access is (if Value /= null and then Value.all in LoggingInitInfo_Access_Array_Object'Class then LoggingInitInfo_Access_Array_Object'Class (Value.all).Value else null);
   type LoggingInitInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoggingInitInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LoggingInitInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoggingInitInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoggingInitInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoggingInitInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LoggingInitInfo_Access_Array_Access_Array_Object'Class then LoggingInitInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References;

with org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References;
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

package org.allbinary.logic.communication.log.config.LoggingInitInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype LoggingInitInfo_Access is org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.LoggingInitInfo_Access;
   function "=" (Left, Right : LoggingInitInfo_Access) return Boolean renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References."=";
   subtype LoggingInitInfo_Access_Array is org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.LoggingInitInfo_Access_Array;
   function "=" (Left, Right : LoggingInitInfo_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References."=";
   subtype LoggingInitInfo_Access_Array_Access is org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.LoggingInitInfo_Access_Array_Access;
   function "=" (Left, Right : LoggingInitInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References."=";
   function Java_Box (Value : LoggingInitInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.Java_Box;
   function Java_Unbox_LoggingInitInfo_Access_Array (Value : access Java_Object'Class) return LoggingInitInfo_Access_Array_Access renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.Java_Unbox_LoggingInitInfo_Access_Array;
   subtype LoggingInitInfo_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.LoggingInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : LoggingInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References."=";
   subtype LoggingInitInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.LoggingInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LoggingInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References."=";
   function Java_Box (Value : LoggingInitInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.Java_Box;
   function Java_Unbox_LoggingInitInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return LoggingInitInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.LoggingInitInfo_Package_References.Java_Unbox_LoggingInitInfo_Access_Array_Access_Array;

   type LoggingInitInfo is new Java_Object with null record;
   logConfigInfoList : BasicArrayList_Access;
   hasRead : Boolean;

   procedure Initialize (This : in out LoggingInitInfo'Class);
   function Create return LoggingInitInfo_Access;
   procedure write;
   procedure read;
   procedure setHasRead (value : Boolean);
   procedure updateIfNeeded;
   function isValid (This : in out LoggingInitInfo) return Boolean;
   procedure set (logConfigInfoList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function get return BasicArrayList_Access;
   function getTypeList return BasicArrayList_Access;
   function getNumberOfLogConfigs (This : in out LoggingInitInfo) return Integer;
   function toString (This : in out LoggingInitInfo) return Unbounded_String;

end org.allbinary.logic.communication.log.config.LoggingInitInfo_Package;


