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
--  with java.io.IOException_Package; use java.io.IOException_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;

package org.allbinary.logic.communication.log.LogUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type LogUtil is tagged;
   type LogUtil_Access is access all LogUtil'Class;
   type LogUtil_Access_Array is array (Natural range <>) of LogUtil_Access;
   type LogUtil_Access_Array_Access is access all LogUtil_Access_Array;
   type LogUtil_Access_Array_Access_Array is array (Natural range <>) of LogUtil_Access_Array_Access;
   type LogUtil_Access_Array_Access_Array_Access is access all LogUtil_Access_Array_Access_Array;

   type LogUtil is new Java_Object with record
      MESSAGE : Unbounded_String;
      isFirstException : Boolean;
      timeDelayHelper : TimeDelayHelper_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      stringBuffer : StringMaker_Access;
   end record;
   instance : LogUtil_Access;

   procedure Initialize (This : in out LogUtil'Class);
   function Create return LogUtil_Access;
   function getInstance return LogUtil_Access;
   procedure putL (This : in out LogUtil; log_Param : access Log_Package.Log'Class);
   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String);
   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType_Param : access Java_Object'Class; functionName : Unbounded_String; exception_Id_Param : access Java_Object'Class);

end org.allbinary.logic.communication.log.LogUtil_Package;


