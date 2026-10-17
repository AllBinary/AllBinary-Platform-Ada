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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileData_Package; use org.allbinary.logic.io.file.FileData_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.io.path.PathUtil_Package; use org.allbinary.logic.io.path.PathUtil_Package;

package org.allbinary.data.tree.dom.FileTableMapping_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileData_Package renames Standard.org.allbinary.logic.io.file.FileData_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package PathUtil_Package renames Standard.org.allbinary.logic.io.path.PathUtil_Package;

   type FileTableMapping is tagged;
   type FileTableMapping_Access is access all FileTableMapping'Class;
   type FileTableMapping_Access_Array is array (Natural range <>) of FileTableMapping_Access;
   type FileTableMapping_Access_Array_Access is access all FileTableMapping_Access_Array;

   type FileTableMapping is new TableMappingInterface with record
      file : AbFile_Access;
   end record;

   procedure Initialize (This : in out FileTableMapping'Class; file_Param : access AbFile'Class);
   function Create (file_Param : access AbFile'Class) return FileTableMapping_Access;
   function getKey (This : in out FileTableMapping) return Java_Object_Access;
   function toVector (This : in out FileTableMapping) return BasicArrayList_Access;
   function toHashMap (This : in out FileTableMapping) return HashMap_Access;

end org.allbinary.data.tree.dom.FileTableMapping_Package;


