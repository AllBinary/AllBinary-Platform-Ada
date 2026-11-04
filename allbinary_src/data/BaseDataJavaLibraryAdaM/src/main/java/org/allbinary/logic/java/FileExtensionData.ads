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

limited with org.allbinary.logic.java.FileExtensionData_Package;
package org.allbinary.logic.java.FileExtensionData_Package_References is
   type FileExtensionData_Access is access all org.allbinary.logic.java.FileExtensionData_Package.FileExtensionData'Class;
   type FileExtensionData_Access_Array is array (Natural range <>) of FileExtensionData_Access;
   type FileExtensionData_Access_Array_Access is access all FileExtensionData_Access_Array;
   type FileExtensionData_Access_Array_Access_Array is array (Natural range <>) of FileExtensionData_Access_Array_Access;
   type FileExtensionData_Access_Array_Access_Array_Access is access all FileExtensionData_Access_Array_Access_Array;
end org.allbinary.logic.java.FileExtensionData_Package_References;

with org.allbinary.logic.java.FileExtensionData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.FileExtensionData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FileExtensionData_Access is org.allbinary.logic.java.FileExtensionData_Package_References.FileExtensionData_Access;
   function "=" (Left, Right : FileExtensionData_Access) return Boolean renames org.allbinary.logic.java.FileExtensionData_Package_References."=";
   subtype FileExtensionData_Access_Array is org.allbinary.logic.java.FileExtensionData_Package_References.FileExtensionData_Access_Array;
   function "=" (Left, Right : FileExtensionData_Access_Array) return Boolean renames org.allbinary.logic.java.FileExtensionData_Package_References."=";
   subtype FileExtensionData_Access_Array_Access is org.allbinary.logic.java.FileExtensionData_Package_References.FileExtensionData_Access_Array_Access;
   function "=" (Left, Right : FileExtensionData_Access_Array_Access) return Boolean renames org.allbinary.logic.java.FileExtensionData_Package_References."=";
   subtype FileExtensionData_Access_Array_Access_Array is org.allbinary.logic.java.FileExtensionData_Package_References.FileExtensionData_Access_Array_Access_Array;
   function "=" (Left, Right : FileExtensionData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.FileExtensionData_Package_References."=";
   subtype FileExtensionData_Access_Array_Access_Array_Access is org.allbinary.logic.java.FileExtensionData_Package_References.FileExtensionData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FileExtensionData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.FileExtensionData_Package_References."=";

   type FileExtensionData is new Java_Object with record
      DOT_JAVA_SOURCE : Unbounded_String;
      JAVA_SOURCE : Unbounded_String;
   end record;
   instance : FileExtensionData_Access;

   procedure Initialize (This : in out FileExtensionData'Class);
   function Create return FileExtensionData_Access;
   function getInstance return FileExtensionData_Access;

end org.allbinary.logic.java.FileExtensionData_Package;


