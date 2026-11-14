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
limited with org.allbinary.logic.communication.log.Log_Package;
package org.allbinary.logic.communication.log.Log_Package_References is
   type Log_Access is access all org.allbinary.logic.communication.log.Log_Package.Log'Class;
   type Log_Access_Array is array (Natural range <>) of Log_Access;
   type Log_Access_Array_Access is access all Log_Access_Array;
   type Log_Access_Array_Access_Array is array (Natural range <>) of Log_Access_Array_Access;
   type Log_Access_Array_Access_Array_Access is access all Log_Access_Array_Access_Array;
   type Log_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Log_Access_Array_Access;
   end record;
   function Java_Box (Value : Log_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Log_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Log_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Log_Access_Array_Access is (if Value /= null and then Value.all in Log_Access_Array_Object'Class then Log_Access_Array_Object'Class (Value.all).Value else null);
   type Log_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Log_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Log_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Log_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Log_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Log_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Log_Access_Array_Access_Array_Object'Class then Log_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.Log_Package_References;

with org.allbinary.logic.communication.log.Log_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package_References;

package org.allbinary.logic.communication.log.Log_Package is

   package LogFormatUtil_Package renames Standard.org.allbinary.logic.communication.log.LogFormatUtil_Package;
   package Reference_Types is
   subtype LogFormatUtil_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access;
   use type LogFormatUtil_Access;
   subtype LogFormatUtil_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array;
   use type LogFormatUtil_Access_Array;
   subtype LogFormatUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access;
   subtype LogFormatUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array;
   use type LogFormatUtil_Access_Array_Access_Array;
   subtype LogFormatUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array_Access;
   use type LogFormatUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Log_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access;
   function "=" (Left, Right : Log_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array;
   function "=" (Left, Right : Log_Access_Array) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access;
   function "=" (Left, Right : Log_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   function Java_Box (Value : Log_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.Log_Package_References.Java_Box;
   function Java_Unbox_Log_Access_Array (Value : access Java_Object'Class) return Log_Access_Array_Access renames org.allbinary.logic.communication.log.Log_Package_References.Java_Unbox_Log_Access_Array;
   subtype Log_Access_Array_Access_Array is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array;
   function "=" (Left, Right : Log_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   subtype Log_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.Log_Package_References.Log_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Log_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.Log_Package_References."=";
   function Java_Box (Value : Log_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.Log_Package_References.Java_Box;
   function Java_Unbox_Log_Access_Array_Access_Array (Value : access Java_Object'Class) return Log_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.Log_Package_References.Java_Unbox_Log_Access_Array_Access_Array;

   type Log is new Java_Object with record
      logFormatUtil : LogFormatUtil_Access;
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
      exception_Id : Java_Object_Access;
   end record;

   procedure Initialize (This : in out Log'Class; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   function Create (specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Log_Access;
   function getSpecialMessage (This : in out Log) return Unbounded_String;
   function getObject (This : in out Log) return Java_Object_Access;
   function getFunctionName (This : in out Log) return Unbounded_String;
   function getThrowable (This : in out Log) return Java_Object_Access;
   function toString (This : in out Log) return Unbounded_String;

end org.allbinary.logic.communication.log.Log_Package;


