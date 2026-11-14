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
limited with org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;
package org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References is
   type BooleanFileVisitor_Access is access all org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package.BooleanFileVisitor'Class;
   type BooleanFileVisitor_Access_Array is array (Natural range <>) of BooleanFileVisitor_Access;
   type BooleanFileVisitor_Access_Array_Access is access all BooleanFileVisitor_Access_Array;
   type BooleanFileVisitor_Access_Array_Access_Array is array (Natural range <>) of BooleanFileVisitor_Access_Array_Access;
   type BooleanFileVisitor_Access_Array_Access_Array_Access is access all BooleanFileVisitor_Access_Array_Access_Array;
   type BooleanFileVisitor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BooleanFileVisitor_Access_Array_Access;
   end record;
   function Java_Box (Value : BooleanFileVisitor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BooleanFileVisitor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BooleanFileVisitor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BooleanFileVisitor_Access_Array_Access is (if Value /= null and then Value.all in BooleanFileVisitor_Access_Array_Object'Class then BooleanFileVisitor_Access_Array_Object'Class (Value.all).Value else null);
   type BooleanFileVisitor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BooleanFileVisitor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BooleanFileVisitor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BooleanFileVisitor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BooleanFileVisitor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BooleanFileVisitor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BooleanFileVisitor_Access_Array_Access_Array_Object'Class then BooleanFileVisitor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References;

with org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package VisitorInterface_Package renames Standard.org.allbinary.logic.util.visitor.VisitorInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype BooleanFileVisitor_Access is org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.BooleanFileVisitor_Access;
   function "=" (Left, Right : BooleanFileVisitor_Access) return Boolean renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References."=";
   subtype BooleanFileVisitor_Access_Array is org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.BooleanFileVisitor_Access_Array;
   function "=" (Left, Right : BooleanFileVisitor_Access_Array) return Boolean renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References."=";
   subtype BooleanFileVisitor_Access_Array_Access is org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.BooleanFileVisitor_Access_Array_Access;
   function "=" (Left, Right : BooleanFileVisitor_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References."=";
   function Java_Box (Value : BooleanFileVisitor_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_BooleanFileVisitor_Access_Array (Value : access Java_Object'Class) return BooleanFileVisitor_Access_Array_Access renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.Java_Unbox_BooleanFileVisitor_Access_Array;
   subtype BooleanFileVisitor_Access_Array_Access_Array is org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.BooleanFileVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : BooleanFileVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References."=";
   subtype BooleanFileVisitor_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.BooleanFileVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BooleanFileVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References."=";
   function Java_Box (Value : BooleanFileVisitor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.Java_Box;
   function Java_Unbox_BooleanFileVisitor_Access_Array_Access_Array (Value : access Java_Object'Class) return BooleanFileVisitor_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package_References.Java_Unbox_BooleanFileVisitor_Access_Array_Access_Array;

   type BooleanFileVisitor is new Java_Object and VisitorInterface with record
      commonStrings : CommonStrings_Access;
      filterStringBasicArrayList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BooleanFileVisitor'Class; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BooleanFileVisitor_Access;
   function visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out BooleanFileVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class) return Boolean;
   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class);
   function getFilterStringBasicArrayList (This : in out BooleanFileVisitor) return BasicArrayList_Access;
   procedure setFilterStringBasicArrayList (This : in out BooleanFileVisitor; filterStringBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String) return Boolean;
   procedure visit (This : in out BooleanFileVisitor; file_Param : access AbFile_Package.AbFile'Class; fileNameString : Unbounded_String);
   function visit (This : in out BooleanFileVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out BooleanFileVisitor; Value : Unbounded_String);

end org.allbinary.logic.io.file.visitor.BooleanFileVisitor_Package;


