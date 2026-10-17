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
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BooleanFileVisitor is tagged;
   type BooleanFileVisitor_Access is access all BooleanFileVisitor'Class;
   type BooleanFileVisitor_Access_Array is array (Natural range <>) of BooleanFileVisitor_Access;
   type BooleanFileVisitor_Access_Array_Access is access all BooleanFileVisitor_Access_Array;

   type BooleanFileVisitor is new VisitorInterface with record
      commonStrings : CommonStrings_Access;
      filterStringBasicArrayList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList'Class) return BooleanFileVisitor_Access;
   function visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile'Class) return Boolean;
   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile'Class);
   function getFilterStringBasicArrayList (This : in out BooleanFileVisitor) return BasicArrayList_Access;
   procedure setFilterStringBasicArrayList (This : in out BooleanFileVisitor; filterStringBasicArrayList_Param : access BasicArrayList'Class);
   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile'Class; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile'Class; fileNameString : Unbounded_String);

end org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;


