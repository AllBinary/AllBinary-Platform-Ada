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
limited with org.allbinary.logic.io.file.FileWrapperUtil_Package;
package org.allbinary.logic.io.file.FileWrapperUtil_Package_References is
   type FileWrapperUtil_Access is access all org.allbinary.logic.io.file.FileWrapperUtil_Package.FileWrapperUtil'Class;
   type FileWrapperUtil_Access_Array is array (Natural range <>) of FileWrapperUtil_Access;
   type FileWrapperUtil_Access_Array_Access is access all FileWrapperUtil_Access_Array;
   type FileWrapperUtil_Access_Array_Access_Array is array (Natural range <>) of FileWrapperUtil_Access_Array_Access;
   type FileWrapperUtil_Access_Array_Access_Array_Access is access all FileWrapperUtil_Access_Array_Access_Array;
   type FileWrapperUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileWrapperUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : FileWrapperUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileWrapperUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileWrapperUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileWrapperUtil_Access_Array_Access is (if Value /= null and then Value.all in FileWrapperUtil_Access_Array_Object'Class then FileWrapperUtil_Access_Array_Object'Class (Value.all).Value else null);
   type FileWrapperUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileWrapperUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileWrapperUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileWrapperUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileWrapperUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileWrapperUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileWrapperUtil_Access_Array_Access_Array_Object'Class then FileWrapperUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.FileWrapperUtil_Package_References;

with org.allbinary.logic.io.file.FileWrapperUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.File_Package; use java.io.File_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.file.FileWrapperUtil_Package is

   package File_Package renames Standard.java.io.File_Package;
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


   subtype FileWrapperUtil_Access is org.allbinary.logic.io.file.FileWrapperUtil_Package_References.FileWrapperUtil_Access;
   function "=" (Left, Right : FileWrapperUtil_Access) return Boolean renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References."=";
   subtype FileWrapperUtil_Access_Array is org.allbinary.logic.io.file.FileWrapperUtil_Package_References.FileWrapperUtil_Access_Array;
   function "=" (Left, Right : FileWrapperUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References."=";
   subtype FileWrapperUtil_Access_Array_Access is org.allbinary.logic.io.file.FileWrapperUtil_Package_References.FileWrapperUtil_Access_Array_Access;
   function "=" (Left, Right : FileWrapperUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References."=";
   function Java_Box (Value : FileWrapperUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References.Java_Box;
   function Java_Unbox_FileWrapperUtil_Access_Array (Value : access Java_Object'Class) return FileWrapperUtil_Access_Array_Access renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References.Java_Unbox_FileWrapperUtil_Access_Array;
   subtype FileWrapperUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.FileWrapperUtil_Package_References.FileWrapperUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FileWrapperUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References."=";
   subtype FileWrapperUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileWrapperUtil_Package_References.FileWrapperUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileWrapperUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References."=";
   function Java_Box (Value : FileWrapperUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References.Java_Box;
   function Java_Unbox_FileWrapperUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return FileWrapperUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.FileWrapperUtil_Package_References.Java_Unbox_FileWrapperUtil_Access_Array_Access_Array;

   type FileWrapperUtil is new Java_Object with null record;

   procedure Initialize (This : in out FileWrapperUtil'Class);
   function Create return FileWrapperUtil_Access;
   function wrapFiles (files : Java_Object_Access_Array_Access) return AbFile_Access_Array_Access;
   procedure wrapFiles (files : Java_Object_Access_Array_Access);
   function wrapFile (file_Param : access File_Package.File'Class) return AbFile_Access;
   procedure wrapFile (file_Param : access File_Package.File'Class);

end org.allbinary.logic.io.file.FileWrapperUtil_Package;


