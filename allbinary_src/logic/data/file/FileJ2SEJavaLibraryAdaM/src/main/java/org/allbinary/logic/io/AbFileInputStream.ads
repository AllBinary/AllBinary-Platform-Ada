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
limited with org.allbinary.logic.io.AbFileInputStream_Package;
package org.allbinary.logic.io.AbFileInputStream_Package_References is
   type AbFileInputStream_Access is access all org.allbinary.logic.io.AbFileInputStream_Package.AbFileInputStream'Class;
   type AbFileInputStream_Access_Array is array (Natural range <>) of AbFileInputStream_Access;
   type AbFileInputStream_Access_Array_Access is access all AbFileInputStream_Access_Array;
   type AbFileInputStream_Access_Array_Access_Array is array (Natural range <>) of AbFileInputStream_Access_Array_Access;
   type AbFileInputStream_Access_Array_Access_Array_Access is access all AbFileInputStream_Access_Array_Access_Array;
   type AbFileInputStream_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileInputStream_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileInputStream_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileInputStream_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileInputStream_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileInputStream_Access_Array_Access is (if Value /= null and then Value.all in AbFileInputStream_Access_Array_Object'Class then AbFileInputStream_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileInputStream_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileInputStream_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileInputStream_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileInputStream_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileInputStream_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileInputStream_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileInputStream_Access_Array_Access_Array_Object'Class then AbFileInputStream_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.AbFileInputStream_Package_References;

with org.allbinary.logic.io.AbFileInputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.AbFileInputStream_Package is

   package File_Package renames Standard.java.io.File_Package;
   package FileInputStream_Package renames Standard.java.io.FileInputStream_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
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


   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   function "=" (Left, Right : AbFileInputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   function Java_Box (Value : AbFileInputStream_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileInputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileInputStream_Access_Array (Value : access Java_Object'Class) return AbFileInputStream_Access_Array_Access renames org.allbinary.logic.io.AbFileInputStream_Package_References.Java_Unbox_AbFileInputStream_Access_Array;
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileInputStream_Package_References."=";
   function Java_Box (Value : AbFileInputStream_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileInputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileInputStream_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileInputStream_Access_Array_Access_Array_Access renames org.allbinary.logic.io.AbFileInputStream_Package_References.Java_Unbox_AbFileInputStream_Access_Array_Access_Array;

   type AbFileInputStream is new FileInputStream with null record;

   procedure Initialize (This : in out AbFileInputStream'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return AbFileInputStream_Access;
   function createFromAbFile (file_Param : access AbFile_Package.AbFile'Class) return AbFileInputStream_Access;
   procedure createFromAbFile (file_Param : access AbFile_Package.AbFile'Class);
   function createFromFile (file_Param : access File_Package.File'Class) return AbFileInputStream_Access;
   procedure createFromFile (file_Param : access File_Package.File'Class);

end org.allbinary.logic.io.AbFileInputStream_Package;


