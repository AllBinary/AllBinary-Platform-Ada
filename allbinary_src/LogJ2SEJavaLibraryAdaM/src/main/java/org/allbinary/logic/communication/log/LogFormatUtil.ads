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
limited with org.allbinary.logic.communication.log.LogFormatUtil_Package;
package org.allbinary.logic.communication.log.LogFormatUtil_Package_References is
   type LogFormatUtil_Access is access all org.allbinary.logic.communication.log.LogFormatUtil_Package.LogFormatUtil'Class;
   type LogFormatUtil_Access_Array is array (Natural range <>) of LogFormatUtil_Access;
   type LogFormatUtil_Access_Array_Access is access all LogFormatUtil_Access_Array;
   type LogFormatUtil_Access_Array_Access_Array is array (Natural range <>) of LogFormatUtil_Access_Array_Access;
   type LogFormatUtil_Access_Array_Access_Array_Access is access all LogFormatUtil_Access_Array_Access_Array;
   type LogFormatUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogFormatUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : LogFormatUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogFormatUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogFormatUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogFormatUtil_Access_Array_Access is (if Value /= null and then Value.all in LogFormatUtil_Access_Array_Object'Class then LogFormatUtil_Access_Array_Object'Class (Value.all).Value else null);
   type LogFormatUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogFormatUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogFormatUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogFormatUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogFormatUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogFormatUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogFormatUtil_Access_Array_Access_Array_Object'Class then LogFormatUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.LogFormatUtil_Package_References;

with org.allbinary.logic.communication.log.LogFormatUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
limited with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References;
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.time.TimeStampUtil_Package_References;

package org.allbinary.logic.communication.log.LogFormatUtil_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package TimeStampUtil_Package renames Standard.org.allbinary.time.TimeStampUtil_Package;
   package Reference_Types is
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   use type NullUtil_Access;
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   use type NullUtil_Access_Array;
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   use type NullUtil_Access_Array_Access;
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   use type NullUtil_Access_Array_Access_Array;
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   use type NullUtil_Access_Array_Access_Array_Access;
   subtype ExceptionUtil_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access;
   use type ExceptionUtil_Access;
   subtype ExceptionUtil_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array;
   use type ExceptionUtil_Access_Array;
   subtype ExceptionUtil_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access;
   use type ExceptionUtil_Access_Array_Access;
   subtype ExceptionUtil_Access_Array_Access_Array is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array;
   use type ExceptionUtil_Access_Array_Access_Array;
   subtype ExceptionUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.exception_Id.ExceptionUtil_Package_References.ExceptionUtil_Access_Array_Access_Array_Access;
   use type ExceptionUtil_Access_Array_Access_Array_Access;
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype TimeStampUtil_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access;
   use type TimeStampUtil_Access;
   subtype TimeStampUtil_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array;
   use type TimeStampUtil_Access_Array;
   subtype TimeStampUtil_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access;
   use type TimeStampUtil_Access_Array_Access;
   subtype TimeStampUtil_Access_Array_Access_Array is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array;
   use type TimeStampUtil_Access_Array_Access_Array;
   subtype TimeStampUtil_Access_Array_Access_Array_Access is org.allbinary.time.TimeStampUtil_Package_References.TimeStampUtil_Access_Array_Access_Array_Access;
   use type TimeStampUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogFormatUtil_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access;
   function "=" (Left, Right : LogFormatUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References."=";
   subtype LogFormatUtil_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array;
   function "=" (Left, Right : LogFormatUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References."=";
   subtype LogFormatUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access;
   function "=" (Left, Right : LogFormatUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References."=";
   function Java_Box (Value : LogFormatUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References.Java_Box;
   function Java_Unbox_LogFormatUtil_Access_Array (Value : access Java_Object'Class) return LogFormatUtil_Access_Array_Access renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References.Java_Unbox_LogFormatUtil_Access_Array;
   subtype LogFormatUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogFormatUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References."=";
   subtype LogFormatUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogFormatUtil_Package_References.LogFormatUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogFormatUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References."=";
   function Java_Box (Value : LogFormatUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References.Java_Box;
   function Java_Unbox_LogFormatUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return LogFormatUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.LogFormatUtil_Package_References.Java_Unbox_LogFormatUtil_Access_Array_Access_Array;

   type LogFormatUtil is new Java_Object with record
      timeStampUtil : TimeStampUtil_Access;
      commonSeps : CommonSeps_Access;
      NONE : Unbounded_String;
      LOG_ERROR : Unbounded_String;
      EMPTY : Unbounded_String;
      STACK_TRACE : Unbounded_String;
      TIME : Unbounded_String;
      CLASS_NAME : Unbounded_String;
      FUNCTION_CALL : Unbounded_String;
      SPECIAL_MESSAGE : Unbounded_String;
      stringUtil : StringUtil_Access;
      exceptionUtil : ExceptionUtil_Access;
      nullUtil : NullUtil_Access;
   end record;
   instance : LogFormatUtil_Access;

   procedure Initialize (This : in out LogFormatUtil'Class);
   function Create return LogFormatUtil_Access;
   function getInstance return LogFormatUtil_Access;
   function get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id_Param : access Java_Object'Class) return Unbounded_String;
   procedure get (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String; exception_Id_Param : access Java_Object'Class);
   function getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String) return Unbounded_String;
   procedure getS (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String; specialMessage : Unbounded_String);
   function getF (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String) return StringMaker_Access;
   procedure getF (This : in out LogFormatUtil; className : Unbounded_String; functionName : Unbounded_String);
   function getO (This : in out LogFormatUtil; exception_Id_Param : access Java_Object'Class) return Unbounded_String;
   procedure getO (This : in out LogFormatUtil; exception_Id_Param : access Java_Object'Class);
   function getO (This : in out LogFormatUtil; Value : Unbounded_String) return Unbounded_String;
   procedure getO (This : in out LogFormatUtil; Value : Unbounded_String);

end org.allbinary.logic.communication.log.LogFormatUtil_Package;


