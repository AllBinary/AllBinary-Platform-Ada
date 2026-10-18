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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.time.TimeStampUtil_Package; use org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;

package org.allbinary.logic.communication.log.LogFormatUtil_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package TimeStampUtil_Package renames Standard.org.allbinary.time.TimeStampUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;

   type LogFormatUtil is tagged;
   type LogFormatUtil_Access is access all LogFormatUtil'Class;
   type LogFormatUtil_Access_Array is array (Natural range <>) of LogFormatUtil_Access;
   type LogFormatUtil_Access_Array_Access is access all LogFormatUtil_Access_Array;
   type LogFormatUtil_Access_Array_Access_Array is array (Natural range <>) of LogFormatUtil_Access_Array_Access;
   type LogFormatUtil_Access_Array_Access_Array_Access is access all LogFormatUtil_Access_Array_Access_Array;

   type LogFormatUtil is new Java_Object with record
      timeStampUtil : TimeStampUtil_Access;
      commonSeps : CommonSeps_Access;
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


