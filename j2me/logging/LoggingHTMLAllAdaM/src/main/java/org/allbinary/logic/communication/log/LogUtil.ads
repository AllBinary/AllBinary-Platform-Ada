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
with playn.core.PlayN_Package; use playn.core.PlayN_Package;

package org.allbinary.logic.communication.log.LogUtil_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;

   type LogUtil is tagged;
   type LogUtil_Access is access all LogUtil'Class;
   type LogUtil_Access_Array is array (Natural range <>) of LogUtil_Access;
   type LogUtil_Access_Array_Access is access all LogUtil_Access_Array;

   type LogUtil is new Java_Object with record
      LOG_SUCCESS : Unbounded_String;
      logFormatUtil : LogFormatUtil_Access;
   end record;
   instance : LogUtil_Access;

   procedure Initialize (This : in out LogUtil'Class);
   function Create return LogUtil_Access;
   function getInstance return LogUtil_Access;
   procedure getInstance;
   procedure putL (This : in out LogUtil; log : Log_Access);
   procedure putF (This : in out LogUtil; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String);
   procedure putFS (This : in out LogUtil; specialMessage : Unbounded_String; className : Unbounded_String; functionName : Unbounded_String);
   procedure put (This : in out LogUtil; specialMessage : Unbounded_String; anyType : Java_Object_Access; functionName : Unbounded_String; exception_Id : Java_Object_Access);

end org.allbinary.logic.communication.log.LogUtil_Package;


