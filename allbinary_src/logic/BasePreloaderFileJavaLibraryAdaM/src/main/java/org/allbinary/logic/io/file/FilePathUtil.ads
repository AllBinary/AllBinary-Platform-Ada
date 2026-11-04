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

limited with org.allbinary.logic.io.file.FilePathUtil_Package;
package org.allbinary.logic.io.file.FilePathUtil_Package_References is
   type FilePathUtil_Access is access all org.allbinary.logic.io.file.FilePathUtil_Package.FilePathUtil'Class;
   type FilePathUtil_Access_Array is array (Natural range <>) of FilePathUtil_Access;
   type FilePathUtil_Access_Array_Access is access all FilePathUtil_Access_Array;
   type FilePathUtil_Access_Array_Access_Array is array (Natural range <>) of FilePathUtil_Access_Array_Access;
   type FilePathUtil_Access_Array_Access_Array_Access is access all FilePathUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.file.FilePathUtil_Package_References;

with org.allbinary.logic.io.file.FilePathUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.io.file.FilePathUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FilePathUtil_Access is org.allbinary.logic.io.file.FilePathUtil_Package_References.FilePathUtil_Access;
   function "=" (Left, Right : FilePathUtil_Access) return Boolean renames org.allbinary.logic.io.file.FilePathUtil_Package_References."=";
   subtype FilePathUtil_Access_Array is org.allbinary.logic.io.file.FilePathUtil_Package_References.FilePathUtil_Access_Array;
   function "=" (Left, Right : FilePathUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.FilePathUtil_Package_References."=";
   subtype FilePathUtil_Access_Array_Access is org.allbinary.logic.io.file.FilePathUtil_Package_References.FilePathUtil_Access_Array_Access;
   function "=" (Left, Right : FilePathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FilePathUtil_Package_References."=";
   subtype FilePathUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.FilePathUtil_Package_References.FilePathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FilePathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FilePathUtil_Package_References."=";
   subtype FilePathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FilePathUtil_Package_References.FilePathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FilePathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FilePathUtil_Package_References."=";

   type FilePathUtil is new Java_Object with null record;

   procedure Initialize (This : in out FilePathUtil'Class);
   function Create return FilePathUtil_Access;
   function adjust (path_Param : Unbounded_String) return Unbounded_String;
   procedure adjust (path_Param : Unbounded_String);

end org.allbinary.logic.io.file.FilePathUtil_Package;


