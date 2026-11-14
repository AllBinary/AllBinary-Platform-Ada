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
limited with org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package;
package org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References is
   type ExcludeFileExtensionsBooleanFileVisitor_Access is access all org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package.ExcludeFileExtensionsBooleanFileVisitor'Class;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array is array (Natural range <>) of ExcludeFileExtensionsBooleanFileVisitor_Access;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access is access all ExcludeFileExtensionsBooleanFileVisitor_Access_Array;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access is access all ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array;
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access is (if Value /= null and then Value.all in ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Object'Class then ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Object'Class then ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References;

with org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package; use org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;

package org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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


   subtype ExcludeFileExtensionsBooleanFileVisitor_Access is org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.ExcludeFileExtensionsBooleanFileVisitor_Access;
   function "=" (Left, Right : ExcludeFileExtensionsBooleanFileVisitor_Access) return Boolean renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References."=";
   subtype ExcludeFileExtensionsBooleanFileVisitor_Access_Array is org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.ExcludeFileExtensionsBooleanFileVisitor_Access_Array;
   function "=" (Left, Right : ExcludeFileExtensionsBooleanFileVisitor_Access_Array) return Boolean renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References."=";
   subtype ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access is org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access;
   function "=" (Left, Right : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References."=";
   function Java_Box (Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array (Value : access Java_Object'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array;
   subtype ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array is org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References."=";
   subtype ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References."=";
   function Java_Box (Value : ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package_References.Java_Unbox_ExcludeFileExtensionsBooleanFileVisitor_Access_Array_Access_Array;

   type ExcludeFileExtensionsBooleanFileVisitor is new BooleanFileVisitor with null record;

   procedure Initialize (This : in out ExcludeFileExtensionsBooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return ExcludeFileExtensionsBooleanFileVisitor_Access;
   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);
   function visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out ExcludeFileExtensionsBooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String);

end org.allbinary.logic.io.file.visitor.ExcludeFileExtensionsBooleanFileVisitor_Package;


