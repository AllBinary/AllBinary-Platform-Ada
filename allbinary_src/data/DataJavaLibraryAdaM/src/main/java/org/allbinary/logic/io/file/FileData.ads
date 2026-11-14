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
limited with org.allbinary.logic.io.file.FileData_Package;
package org.allbinary.logic.io.file.FileData_Package_References is
   type FileData_Access is access all org.allbinary.logic.io.file.FileData_Package.FileData'Class;
   type FileData_Access_Array is array (Natural range <>) of FileData_Access;
   type FileData_Access_Array_Access is access all FileData_Access_Array;
   type FileData_Access_Array_Access_Array is array (Natural range <>) of FileData_Access_Array_Access;
   type FileData_Access_Array_Access_Array_Access is access all FileData_Access_Array_Access_Array;
   type FileData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileData_Access_Array_Access;
   end record;
   function Java_Box (Value : FileData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileData_Access_Array_Access is (if Value /= null and then Value.all in FileData_Access_Array_Object'Class then FileData_Access_Array_Object'Class (Value.all).Value else null);
   type FileData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileData_Access_Array_Access_Array_Object'Class then FileData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.FileData_Package_References;

with org.allbinary.logic.io.file.FileData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.file.FileData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FileData_Access is org.allbinary.logic.io.file.FileData_Package_References.FileData_Access;
   function "=" (Left, Right : FileData_Access) return Boolean renames org.allbinary.logic.io.file.FileData_Package_References."=";
   subtype FileData_Access_Array is org.allbinary.logic.io.file.FileData_Package_References.FileData_Access_Array;
   function "=" (Left, Right : FileData_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileData_Package_References."=";
   subtype FileData_Access_Array_Access is org.allbinary.logic.io.file.FileData_Package_References.FileData_Access_Array_Access;
   function "=" (Left, Right : FileData_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileData_Package_References."=";
   function Java_Box (Value : FileData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileData_Package_References.Java_Box;
   function Java_Unbox_FileData_Access_Array (Value : access Java_Object'Class) return FileData_Access_Array_Access renames org.allbinary.logic.io.file.FileData_Package_References.Java_Unbox_FileData_Access_Array;
   subtype FileData_Access_Array_Access_Array is org.allbinary.logic.io.file.FileData_Package_References.FileData_Access_Array_Access_Array;
   function "=" (Left, Right : FileData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileData_Package_References."=";
   subtype FileData_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileData_Package_References.FileData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileData_Package_References."=";
   function Java_Box (Value : FileData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileData_Package_References.Java_Box;
   function Java_Unbox_FileData_Access_Array_Access_Array (Value : access Java_Object'Class) return FileData_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.FileData_Package_References.Java_Unbox_FileData_Access_Array_Access_Array;

   type FileData is new Java_Object with record
      NAME : Unbounded_String;
      ISFILE : Unbounded_String;
      ISDIRECTORY : Unbounded_String;
      ISHIDDEN : Unbounded_String;
      ISABSOLUTE : Unbounded_String;
      ROOT_NAME : Unbounded_String;
      PATH : Unbounded_String;
      ABSOLUTE_PATH : Unbounded_String;
      CANONICAL_PATH : Unbounded_String;
      PARENT : Unbounded_String;
      MINLEN : Integer;
      MAXLEN : Integer;
      MAXIMAGEFILESIZE : Integer;
      MINIMAGEFILESIZE : Integer;
      MAXDOWNLOADABLEFILESIZE : Integer;
      MINDOWNLOADABLEFILESIZE : Integer;
   end record;
   instance : FileData_Access;

   procedure Initialize (This : in out FileData'Class);
   function Create return FileData_Access;
   function getInstance return FileData_Access;

end org.allbinary.logic.io.file.FileData_Package;


