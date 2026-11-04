-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.logic.io.file.FileUnamedUtil_Package;
package org.allbinary.logic.io.file.FileUnamedUtil_Package_References is
   type FileUnamedUtil_Access is access all org.allbinary.logic.io.file.FileUnamedUtil_Package.FileUnamedUtil'Class;
   type FileUnamedUtil_Access_Array is array (Natural range <>) of FileUnamedUtil_Access;
   type FileUnamedUtil_Access_Array_Access is access all FileUnamedUtil_Access_Array;
   type FileUnamedUtil_Access_Array_Access_Array is array (Natural range <>) of FileUnamedUtil_Access_Array_Access;
   type FileUnamedUtil_Access_Array_Access_Array_Access is access all FileUnamedUtil_Access_Array_Access_Array;
end org.allbinary.logic.io.file.FileUnamedUtil_Package_References;

with org.allbinary.logic.io.file.FileUnamedUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;

package org.allbinary.logic.io.file.FileUnamedUtil_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Reference_Types is
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FileUnamedUtil_Access is org.allbinary.logic.io.file.FileUnamedUtil_Package_References.FileUnamedUtil_Access;
   function "=" (Left, Right : FileUnamedUtil_Access) return Boolean renames org.allbinary.logic.io.file.FileUnamedUtil_Package_References."=";
   subtype FileUnamedUtil_Access_Array is org.allbinary.logic.io.file.FileUnamedUtil_Package_References.FileUnamedUtil_Access_Array;
   function "=" (Left, Right : FileUnamedUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUnamedUtil_Package_References."=";
   subtype FileUnamedUtil_Access_Array_Access is org.allbinary.logic.io.file.FileUnamedUtil_Package_References.FileUnamedUtil_Access_Array_Access;
   function "=" (Left, Right : FileUnamedUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUnamedUtil_Package_References."=";
   subtype FileUnamedUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.FileUnamedUtil_Package_References.FileUnamedUtil_Access_Array_Access_Array;
   function "=" (Left, Right : FileUnamedUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.FileUnamedUtil_Package_References."=";
   subtype FileUnamedUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.FileUnamedUtil_Package_References.FileUnamedUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileUnamedUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.FileUnamedUtil_Package_References."=";

   type FileUnamedUtil is new Java_Object with record
      commonSeps : CommonSeps_Access;
   end record;
   instance : FileUnamedUtil_Access;

   procedure Initialize (This : in out FileUnamedUtil'Class);
   function Create return FileUnamedUtil_Access;
   function getInstance return FileUnamedUtil_Access;
   function process (This : in out FileUnamedUtil; string_Id : Unbounded_String) return Unbounded_String;
   procedure process (This : in out FileUnamedUtil; string_Id : Unbounded_String);

end org.allbinary.logic.io.file.FileUnamedUtil_Package;


