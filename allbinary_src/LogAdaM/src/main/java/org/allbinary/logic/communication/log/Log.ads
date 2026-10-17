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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package; use org.allbinary.logic.communication.log.LogFormatUtil_Package;

package org.allbinary.logic.communication.log.Log_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogFormatUtil_Package renames Standard.org.allbinary.logic.communication.log.LogFormatUtil_Package;

   type Log is tagged;
   type Log_Access is access all Log'Class;
   type Log_Access_Array is array (Natural range <>) of Log_Access;
   type Log_Access_Array_Access is access all Log_Access_Array;

   type Log is new Java_Object with record
      logFormatUtil : LogFormatUtil_Access;
      specialMessage : Unbounded_String;
      anyType : Java_Object_Access;
      functionName : Unbounded_String;
      exception_Id : Java_Object_Access;
   end record;

   procedure Initialize (This : in out Log'Class; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access);
   function Create (specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access) return Log_Access;
   function getSpecialMessage (This : in out Log) return Unbounded_String;
   procedure getSpecialMessage (This : in out Log);
   function getObject (This : in out Log) return Java_Object_Access;
   procedure getObject (This : in out Log);
   function getFunctionName (This : in out Log) return Unbounded_String;
   procedure getFunctionName (This : in out Log);
   function getThrowable (This : in out Log) return Java_Object_Access;
   procedure getThrowable (This : in out Log);
   function toString (This : in out Log) return Unbounded_String;
   procedure toString (This : in out Log);

end org.allbinary.logic.communication.log.Log_Package;


