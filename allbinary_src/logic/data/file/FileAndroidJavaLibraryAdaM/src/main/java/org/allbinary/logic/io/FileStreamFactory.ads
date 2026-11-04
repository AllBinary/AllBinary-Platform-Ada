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

limited with org.allbinary.logic.io.FileStreamFactory_Package;
package org.allbinary.logic.io.FileStreamFactory_Package_References is
   type FileStreamFactory_Access is access all org.allbinary.logic.io.FileStreamFactory_Package.FileStreamFactory'Class;
   type FileStreamFactory_Access_Array is array (Natural range <>) of FileStreamFactory_Access;
   type FileStreamFactory_Access_Array_Access is access all FileStreamFactory_Access_Array;
   type FileStreamFactory_Access_Array_Access_Array is array (Natural range <>) of FileStreamFactory_Access_Array_Access;
   type FileStreamFactory_Access_Array_Access_Array_Access is access all FileStreamFactory_Access_Array_Access_Array;
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
limited with android.content.Context_Package;
with android.content.Context_Package_References;
limited with org.allbinary.logic.io.AbFileInputStream_Package;
with org.allbinary.logic.io.AbFileInputStream_Package_References;
limited with org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package_References;

package org.allbinary.logic.io.FileStreamFactory_Package is

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
   subtype FileStreamFactory_Access_Array_Access_Array is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FileStreamFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";
   subtype FileStreamFactory_Access_Array_Access_Array_Access is org.allbinary.logic.io.FileStreamFactory_Package_References.FileStreamFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileStreamFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.FileStreamFactory_Package_References."=";

   type FileStreamFactory is new Java_Object with record
      context : Java_Object_Access;
   end record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out FileStreamFactory'Class; context_Param : access Context_Package.Context'Class);
   function Create (context_Param : access Context_Package.Context'Class) return FileStreamFactory_Access;
   function getInstance return FileStreamFactory_Access;
   function getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileInputStream_Access;
   procedure getFileInputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   function getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String) return AbFileOutputStream_Access;
   procedure getFileOutputStreamInstance (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   procedure delete (This : in out FileStreamFactory; path : Unbounded_String; fileName : Unbounded_String);
   function getContext (This : in out FileStreamFactory) return Context_Access;

end org.allbinary.logic.io.FileStreamFactory_Package;


