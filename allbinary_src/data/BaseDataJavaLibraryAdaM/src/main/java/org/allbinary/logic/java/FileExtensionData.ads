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

package org.allbinary.logic.java.FileExtensionData_Package is


   type FileExtensionData is tagged;
   type FileExtensionData_Access is access all FileExtensionData'Class;
   type FileExtensionData_Access_Array is array (Natural range <>) of FileExtensionData_Access;
   type FileExtensionData_Access_Array_Access is access all FileExtensionData_Access_Array;
   type FileExtensionData_Access_Array_Access_Array is array (Natural range <>) of FileExtensionData_Access_Array_Access;
   type FileExtensionData_Access_Array_Access_Array_Access is access all FileExtensionData_Access_Array_Access_Array;

   type FileExtensionData is new Java_Object with record
      DOT_JAVA_SOURCE : Unbounded_String;
      JAVA_SOURCE : Unbounded_String;
   end record;
   instance : FileExtensionData_Access;

   procedure Initialize (This : in out FileExtensionData'Class);
   function Create return FileExtensionData_Access;
   function getInstance return FileExtensionData_Access;

end org.allbinary.logic.java.FileExtensionData_Package;


