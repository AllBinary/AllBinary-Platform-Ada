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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package org.allbinary.logic.communication.log.LogUtil_Package is

   package JsType_Package renames jsinterop.annotations.JsType_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package PlayN_Package renames playn.core.PlayN_Package;
   package JsMethod_Package renames jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames jsinterop.annotations.JsConstructor_Package;

   type LogUtil is tagged;
   type LogUtil_Access is access all LogUtil'Class;
   type LogUtil_Access_Array is array (Natural range <>) of LogUtil_Access;
   type LogUtil_Access_Array_Access is access all LogUtil_Access_Array;

   type LogUtil is new Java_Object with record
      logFormatUtil : LogFormatUtil_Access;
      LOG_SUCCESS : Unbounded_String;
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


