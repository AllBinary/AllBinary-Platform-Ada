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

with AllBinary_Java;
limited with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;
package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References is
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access is access all org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package.DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access is access all DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access is access all DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array;
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access is (if Value /= null and then Value.all in DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Object'Class then DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Object'Class then DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References;

with org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References;
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
with org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package IncludeFileExtensionsBooleanFileVisitor_Package renames Standard.org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References."=";
   function Java_Box (Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array (Value : access Java_Object'Class) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array;
   subtype DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References."=";
   subtype DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References."=";
   function Java_Box (Value : DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package_References.Java_Unbox_DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access_Array_Access_Array;

   type DirectoryOrIncludeFileExtensionBooleanFileVisitor is new IncludeFileExtensionsBooleanFileVisitor with record
      includesString : Unbounded_String;
   end record;

   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   procedure Initialize (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; includesString : Unbounded_String) return DirectoryOrIncludeFileExtensionBooleanFileVisitor_Access;
   function visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out DirectoryOrIncludeFileExtensionBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);

end org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor_Package;


