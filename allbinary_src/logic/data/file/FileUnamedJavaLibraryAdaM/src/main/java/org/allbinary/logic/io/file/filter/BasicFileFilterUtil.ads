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
limited with org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;
package org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References is
   type BasicFileFilterUtil_Access is access all org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package.BasicFileFilterUtil'Class;
   type BasicFileFilterUtil_Access_Array is array (Natural range <>) of BasicFileFilterUtil_Access;
   type BasicFileFilterUtil_Access_Array_Access is access all BasicFileFilterUtil_Access_Array;
   type BasicFileFilterUtil_Access_Array_Access_Array is array (Natural range <>) of BasicFileFilterUtil_Access_Array_Access;
   type BasicFileFilterUtil_Access_Array_Access_Array_Access is access all BasicFileFilterUtil_Access_Array_Access_Array;
   type BasicFileFilterUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicFileFilterUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicFileFilterUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicFileFilterUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicFileFilterUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicFileFilterUtil_Access_Array_Access is (if Value /= null and then Value.all in BasicFileFilterUtil_Access_Array_Object'Class then BasicFileFilterUtil_Access_Array_Object'Class (Value.all).Value else null);
   type BasicFileFilterUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicFileFilterUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicFileFilterUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicFileFilterUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicFileFilterUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicFileFilterUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicFileFilterUtil_Access_Array_Access_Array_Object'Class then BasicFileFilterUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References;

with org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.FileFilter_Package; use java.io.FileFilter_Package;

package org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package is

   package FileFilter_Package renames Standard.java.io.FileFilter_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicFileFilterUtil_Access is org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.BasicFileFilterUtil_Access;
   function "=" (Left, Right : BasicFileFilterUtil_Access) return Boolean renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References."=";
   subtype BasicFileFilterUtil_Access_Array is org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.BasicFileFilterUtil_Access_Array;
   function "=" (Left, Right : BasicFileFilterUtil_Access_Array) return Boolean renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References."=";
   subtype BasicFileFilterUtil_Access_Array_Access is org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.BasicFileFilterUtil_Access_Array_Access;
   function "=" (Left, Right : BasicFileFilterUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References."=";
   function Java_Box (Value : BasicFileFilterUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.Java_Box;
   function Java_Unbox_BasicFileFilterUtil_Access_Array (Value : access Java_Object'Class) return BasicFileFilterUtil_Access_Array_Access renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.Java_Unbox_BasicFileFilterUtil_Access_Array;
   subtype BasicFileFilterUtil_Access_Array_Access_Array is org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.BasicFileFilterUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicFileFilterUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References."=";
   subtype BasicFileFilterUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.BasicFileFilterUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicFileFilterUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References."=";
   function Java_Box (Value : BasicFileFilterUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.Java_Box;
   function Java_Unbox_BasicFileFilterUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicFileFilterUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package_References.Java_Unbox_BasicFileFilterUtil_Access_Array_Access_Array;

   type BasicFileFilterUtil is new Java_Object with null record;

   procedure Initialize (This : in out BasicFileFilterUtil'Class);
   function Create return BasicFileFilterUtil_Access;
   function getInstance (extension : Unbounded_String) return FileFilter_Access;
   procedure getInstance (extension : Unbounded_String);

end org.allbinary.logic.io.file.filter.BasicFileFilterUtil_Package;


