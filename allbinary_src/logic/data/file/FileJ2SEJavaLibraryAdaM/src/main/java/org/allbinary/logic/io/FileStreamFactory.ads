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
limited with org.allbinary.logic.io.FileStreamFactory_Package;
package org.allbinary.logic.io.FileStreamFactory_Package_References is
   type FileStreamFactory_Access is access all org.allbinary.logic.io.FileStreamFactory_Package.FileStreamFactory'Class;
   type FileStreamFactory_Access_Array is array (Natural range <>) of FileStreamFactory_Access;
   type FileStreamFactory_Access_Array_Access is access all FileStreamFactory_Access_Array;
   type FileStreamFactory_Access_Array_Access_Array is array (Natural range <>) of FileStreamFactory_Access_Array_Access;
   type FileStreamFactory_Access_Array_Access_Array_Access is access all FileStreamFactory_Access_Array_Access_Array;
   type FileStreamFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileStreamFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : FileStreamFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileStreamFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileStreamFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileStreamFactory_Access_Array_Access is (if Value /= null and then Value.all in FileStreamFactory_Access_Array_Object'Class then FileStreamFactory_Access_Array_Object'Class (Value.all).Value else null);
   type FileStreamFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FileStreamFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FileStreamFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FileStreamFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FileStreamFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FileStreamFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FileStreamFactory_Access_Array_Access_Array_Object'Class then FileStreamFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.FileStreamFactory_Package_References;

with org.allbinary.logic.io.FileStreamFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
limited with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package_References;

package org.allbinary.logic.io.FileStreamFactory_Package is

   package Reference_Types is
   subtype AbFileInputStream_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access;
   use type AbFileInputStream_Access;
   subtype AbFileInputStream_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array;
   use type AbFileInputStream_Access_Array;
   subtype AbFileInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access;
   use type AbFileInputStream_Access_Array_Access;
   subtype AbFileInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array;
   use type AbFileInputStream_Access_Array_Access_Array;
   subtype AbFileInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileInputStream_Package_References.AbFileInputStream_Access_Array_Access_Array_Access;
   use type AbFileInputStream_Access_Array_Access_Array_Access;
   subtype AbFileOutputStream_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access;
   use type AbFileOutputStream_Access;
   subtype AbFileOutputStream_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array;
   use type AbFileOutputStream_Access_Array;
   subtype AbFileOutputStream_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access;
   use type AbFileOutputStream_Access_Array_Access;
   subtype AbFileOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array;
   use type AbFileOutputStream_Access_Array_Access_Array;
   subtype AbFileOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileOutputStream_Package_References.AbFileOutputStream_Access_Array_Access_Array_Access;
   use type AbFileOutputStream_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileStreamFactory_Access is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access;
   function "=" (Left, Right : FileStreamFactory_Access) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   subtype FileStreamFactory_Access_Array is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array;
   function "=" (Left, Right : FileStreamFactory_Access_Array) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   subtype FileStreamFactory_Access_Array_Access is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array_Access;
   function "=" (Left, Right : FileStreamFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   function Java_Box (Value : FileStreamFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.FileStreamFactory_Package_References.Java_Box;
   function Java_Unbox_FileStreamFactory_Access_Array (Value : access Java_Object'Class) return FileStreamFactory_Access_Array_Access renames org.allbinary.logic.io.FileStreamFactory_Package_References.Java_Unbox_FileStreamFactory_Access_Array;
   subtype FileStreamFactory_Access_Array_Access_Array is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FileStreamFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   subtype FileStreamFactory_Access_Array_Access_Array_Access is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileStreamFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   function Java_Box (Value : FileStreamFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.FileStreamFactory_Package_References.Java_Box;
   function Java_Unbox_FileStreamFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return FileStreamFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.io.FileStreamFactory_Package_References.Java_Unbox_FileStreamFactory_Access_Array_Access_Array;

   type FileStreamFactory is new Java_Object with null record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out FileStreamFactory'Class);
   function Create return FileStreamFactory_Access;
   function getInstance return FileStreamFactory_Access;
   function getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileInputStream_Access;
   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access;
   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);

end org.allbinary.logic.io.FileStreamFactory_Package;


