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
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
--  with java.io.PrintStream_Package; use java.io.PrintStream_Package;

package org.allbinary.logic.java.exception_Id.ExceptionUtil_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;

   type ExceptionUtil is tagged;
   type ExceptionUtil_Access is access all ExceptionUtil'Class;
   type ExceptionUtil_Access_Array is array (Natural range <>) of ExceptionUtil_Access;
   type ExceptionUtil_Access_Array_Access is access all ExceptionUtil_Access_Array;

   type ExceptionUtil is new Java_Object with record
      NONE : Unbounded_String;
   end record;
   instance : ExceptionUtil_Access;
   PRETEND_EXCEPTION : Java_Throwable;

   procedure Initialize (This : in out ExceptionUtil'Class);
   function Create return ExceptionUtil_Access;
   function getInstance return ExceptionUtil_Access;
   function getStackTrace (This : in out ExceptionUtil; e : Java_Throwable) return Unbounded_String;
   procedure getStackTrace (This : in out ExceptionUtil; e : Java_Throwable);

end org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;


