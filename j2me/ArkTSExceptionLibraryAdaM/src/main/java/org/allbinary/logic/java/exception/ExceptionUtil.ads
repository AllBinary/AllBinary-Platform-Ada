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

package org.allbinary.logic.java.exception_Id.ExceptionUtil_Package is


   type ExceptionUtil is tagged;
   type ExceptionUtil_Access is access all ExceptionUtil'Class;
   type ExceptionUtil_Access_Array is array (Natural range <>) of ExceptionUtil_Access;
   type ExceptionUtil_Access_Array_Access is access all ExceptionUtil_Access_Array;

   type ExceptionUtil is new Java_Object with record
      PRETEND_EXCEPTION : Ada.Exceptions.Exception_Occurrence;
      NONE : Unbounded_String;
   end record;
   instance : Ada.Exceptions.Exception_Occurrence;

   procedure Initialize (This : in out ExceptionUtil'Class);
   function Create return ExceptionUtil_Access;
   function getInstance return Ada.Exceptions.Exception_Occurrence;
   procedure getInstance;
   function getStackTrace (This : in out ExceptionUtil; e : Ada.Exceptions.Exception_Occurrence) return Unbounded_String;
   procedure getStackTrace (This : in out ExceptionUtil; e : Ada.Exceptions.Exception_Occurrence);

end org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;


