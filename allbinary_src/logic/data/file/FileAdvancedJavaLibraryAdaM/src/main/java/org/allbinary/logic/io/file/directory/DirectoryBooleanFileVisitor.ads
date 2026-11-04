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

limited with org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;
package org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References is
   type DirectoryBooleanFileVisitor_Access is access all org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package.DirectoryBooleanFileVisitor'Class;
   type DirectoryBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryBooleanFileVisitor_Access;
   type DirectoryBooleanFileVisitor_Access_Array_Access is access all DirectoryBooleanFileVisitor_Access_Array;
   type DirectoryBooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of DirectoryBooleanFileVisitor_Access_Array_Access;
   type DirectoryBooleanFileVisitor_Access_Array_Access_Array_Access is access all DirectoryBooleanFileVisitor_Access_Array_Access_Array;
end org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References;

with org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.util.visitor.VisitorInterface_Package; use org.allbinary.logic.util.visitor.VisitorInterface_Package;

package org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DirectoryBooleanFileVisitor_Access is org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References.DirectoryBooleanFileVisitor_Access;
   function "=" (Left, Right : DirectoryBooleanFileVisitor_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References."=";
   subtype DirectoryBooleanFileVisitor_Access_Array is org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References.DirectoryBooleanFileVisitor_Access_Array;
   function "=" (Left, Right : DirectoryBooleanFileVisitor_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References."=";
   subtype DirectoryBooleanFileVisitor_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References.DirectoryBooleanFileVisitor_Access_Array_Access;
   function "=" (Left, Right : DirectoryBooleanFileVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References."=";
   subtype DirectoryBooleanFileVisitor_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References.DirectoryBooleanFileVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : DirectoryBooleanFileVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References."=";
   subtype DirectoryBooleanFileVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References.DirectoryBooleanFileVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectoryBooleanFileVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package_References."=";

   type DirectoryBooleanFileVisitor is new Java_Object and VisitorInterface with null record;

   procedure Initialize (This : in out DirectoryBooleanFileVisitor'Class);
   function Create return DirectoryBooleanFileVisitor_Access;
   function visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out DirectoryBooleanFileVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out DirectoryBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);
   function visit (This : in out DirectoryBooleanFileVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out DirectoryBooleanFileVisitor; Value : Unbounded_String);

end org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor_Package;


