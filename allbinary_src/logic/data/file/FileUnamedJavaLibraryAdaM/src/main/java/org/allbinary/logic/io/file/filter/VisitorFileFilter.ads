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
--  with java.io.File_Package; use java.io.File_Package;
--  with java.io.FileFilter_Package; use java.io.FileFilter_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileWrapperUtil_Package; use org.allbinary.logic.io.file.FileWrapperUtil_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.io.file.filter.VisitorFileFilter_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileWrapperUtil_Package renames Standard.org.allbinary.logic.io.file.FileWrapperUtil_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;

   type VisitorFileFilter is tagged;
   type VisitorFileFilter_Access is access all VisitorFileFilter'Class;
   type VisitorFileFilter_Access_Array is array (Natural range <>) of VisitorFileFilter_Access;
   type VisitorFileFilter_Access_Array_Access is access all VisitorFileFilter_Access_Array;

   type VisitorFileFilter is new FileFilter with record
      booleanVisitorInterface : VisitorInterface_Access;
   end record;

   procedure Initialize (This : in out VisitorFileFilter'Class; booleanVisitorInterface : VisitorInterface_Access);
   function Create (booleanVisitorInterface : VisitorInterface_Access) return VisitorFileFilter_Access;
   function accept_Id (This : in out VisitorFileFilter; file : File_Access) return Boolean;
   procedure accept_Id (This : in out VisitorFileFilter; file : File_Access);
   function accept_Id (This : in out VisitorFileFilter; file : AbFile_Access) return Boolean;
   procedure accept_Id (This : in out VisitorFileFilter; file : AbFile_Access);

end org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;


