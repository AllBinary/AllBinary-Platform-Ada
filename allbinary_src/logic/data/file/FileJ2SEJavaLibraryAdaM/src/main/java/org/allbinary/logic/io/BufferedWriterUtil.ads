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
--  with java.io.BufferedWriter_Package; use java.io.BufferedWriter_Package;
--  with java.io.FileWriter_Package; use java.io.FileWriter_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFileNativeUtil_Package; use org.allbinary.logic.io.file.AbFileNativeUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.io.BufferedWriterUtil_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package AbFileNativeUtil_Package renames org.allbinary.logic.io.file.AbFileNativeUtil_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type BufferedWriterUtil is tagged;
   type BufferedWriterUtil_Access is access all BufferedWriterUtil'Class;
   type BufferedWriterUtil_Access_Array is array (Natural range <>) of BufferedWriterUtil_Access;
   type BufferedWriterUtil_Access_Array_Access is access all BufferedWriterUtil_Access_Array;

   type BufferedWriterUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonLabels : CommonLabels_Access;
      REMOVING_OLD : Unbounded_String;
   end record;
   instance : BufferedWriterUtil_Access;

   procedure Initialize (This : in out BufferedWriterUtil'Class);
   function Create return BufferedWriterUtil_Access;
   function getInstance return BufferedWriterUtil_Access;
   procedure getInstance;
   procedure overwrite (This : in out BufferedWriterUtil; path : Unbounded_String; data : Unbounded_String);
   procedure overwrite (This : in out BufferedWriterUtil; abFile : AbFile_Access; data : Unbounded_String);
   procedure write (This : in out BufferedWriterUtil; abFile : AbFile_Access; data : Unbounded_String);

end org.allbinary.logic.io.BufferedWriterUtil_Package;


