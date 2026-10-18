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
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;

package org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package is


   type BasicFileFilterUtil is tagged;
   type BasicFileFilterUtil_Access is access all BasicFileFilterUtil'Class;
   type BasicFileFilterUtil_Access_Array is array (Natural range <>) of BasicFileFilterUtil_Access;
   type BasicFileFilterUtil_Access_Array_Access is access all BasicFileFilterUtil_Access_Array;
   type BasicFileFilterUtil_Access_Array_Access_Array is array (Natural range <>) of BasicFileFilterUtil_Access_Array_Access;
   type BasicFileFilterUtil_Access_Array_Access_Array_Access is access all BasicFileFilterUtil_Access_Array_Access_Array;

   type BasicFileFilterUtil is new Java_Object with null record;

   procedure Initialize (This : in out BasicFileFilterUtil'Class);
   function Create return BasicFileFilterUtil_Access;
   function getInstance (extension : Unbounded_String) return FileFilter_Access;
   procedure getInstance (extension : Unbounded_String);

end org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;


