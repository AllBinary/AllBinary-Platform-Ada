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
limited with org.allbinary.logic.io.file.FileFactory_Package;
package org.allbinary.logic.io.file.FileFactory_Package_References is
   type FileFactory_Access is access all org.allbinary.logic.io.file.FileFactory_Package.FileFactory'Class;
   type FileFactory_Access_Array is array (Natural range <>) of FileFactory_Access;
   type FileFactory_Access_Array_Access is access all FileFactory_Access_Array;
   type FileFactory_Access_Array_Access_Array is array (Natural range <>) of FileFactory_Access_Array_Access;
   type FileFactory_Access_Array_Access_Array_Access is access all FileFactory_Access_Array_Access_Array;
   type FileFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : FileFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileFactory_Access_Array_Access is (if Value /= null and then Value.all in FileFactory_Access_Array_Object'Class then FileFactory_Access_Array_Object'Class (Value.all).Value else null);
   type FileFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileFactory_Access_Array_Access_Array_Object'Class then FileFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.FileFactory_Package_References;

with org.allbinary.logic.io.file.FileFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
limited with android.content.Context_Package;
with android.content.Context_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;

package org.allbinary.logic.io.file.FileFactory_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package Reference_Types is
   subtype Context_Access is android.content.Context_Package_References.Context_Access;
   use type Context_Access;
   subtype Context_Access_Array is android.content.Context_Package_References.Context_Access_Array;
   use type Context_Access_Array;
   subtype Context_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access;
   use type Context_Access_Array_Access;
   subtype Context_Access_Array_Access_Array is android.content.Context_Package_References.Context_Access_Array_Access_Array;
   use type Context_Access_Array_Access_Array;
   subtype Context_Access_Array_Access_Array_Access is android.content.Context_Package_References.Context_Access_Array_Access_Array_Access;
   use type Context_Access_Array_Access_Array_Access;
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


   subtype FileFactory_Access is org.allbinary.logic.io.file.FileFactory_Package_References.FileFactory_Access;
   function "=" (Left, Right : FileFactory_Access) return Boolean renames org.allbinary.logic.io.file.FileFactory_Package_References."=";
   subtype FileFactory_Access_Array is org.allbinary.logic.io.file.FileFactory_Package_References.FileFactory_Access_Array;
   function "=" (Left, Right : FileFactory_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileFactory_Package_References."=";
   subtype FileFactory_Access_Array_Access is org.allbinary.logic.io.file.FileFactory_Package_References.FileFactory_Access_Array_Access;
   function "=" (Left, Right : FileFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileFactory_Package_References."=";
   function Java_Box (Value : FileFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileFactory_Package_References.Java_Box;
   function Java_Unbox_FileFactory_Access_Array (Value : access Java_Object'Class) return FileFactory_Access_Array_Access renames org.allbinary.logic.io.file.FileFactory_Package_References.Java_Unbox_FileFactory_Access_Array;
   subtype FileFactory_Access_Array_Access_Array is org.allbinary.logic.io.file.FileFactory_Package_References.FileFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FileFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileFactory_Package_References."=";
   subtype FileFactory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileFactory_Package_References.FileFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileFactory_Package_References."=";
   function Java_Box (Value : FileFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.FileFactory_Package_References.Java_Box;
   function Java_Unbox_FileFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return FileFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.FileFactory_Package_References.Java_Unbox_FileFactory_Access_Array_Access_Array;

   type FileFactory is new Java_Object with record
      context : Context_Access;
   end record;
   SINGLETON : FileFactory_Access;

   procedure Initialize (This : in out FileFactory'Class; context_Param : access Context_Package.Context'Class);
   function Create (context_Param : access Context_Package.Context'Class) return FileFactory_Access;
   function getInstance return FileFactory_Access;
   function isFile (This : in out FileFactory; path : Unbounded_String) return Boolean;
   procedure isFile (This : in out FileFactory; path : Unbounded_String);
   function getContext (This : in out FileFactory) return Context_Access;
   function getFile (This : in out FileFactory; filePath : Unbounded_String) return AbFile_Access;
   procedure getFile (This : in out FileFactory; filePath : Unbounded_String);
   function getInstance (This : in out FileFactory; file_Param : access AbFile_Package.AbFile'Class; childFilePath : Unbounded_String) return AbFile_Access;
   procedure getInstance (This : in out FileFactory; file_Param : access AbFile_Package.AbFile'Class; childFilePath : Unbounded_String);

end org.allbinary.logic.io.file.FileFactory_Package;


