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
limited with org.allbinary.logic.io.AbFileLocalInputStream_Package;
package org.allbinary.logic.io.AbFileLocalInputStream_Package_References is
   type AbFileLocalInputStream_Access is access all org.allbinary.logic.io.AbFileLocalInputStream_Package.AbFileLocalInputStream'Class;
   type AbFileLocalInputStream_Access_Array is array (Natural range <>) of AbFileLocalInputStream_Access;
   type AbFileLocalInputStream_Access_Array_Access is access all AbFileLocalInputStream_Access_Array;
   type AbFileLocalInputStream_Access_Array_Access_Array is array (Natural range <>) of AbFileLocalInputStream_Access_Array_Access;
   type AbFileLocalInputStream_Access_Array_Access_Array_Access is access all AbFileLocalInputStream_Access_Array_Access_Array;
   type AbFileLocalInputStream_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileLocalInputStream_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileLocalInputStream_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileLocalInputStream_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileLocalInputStream_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileLocalInputStream_Access_Array_Access is (if Value /= null and then Value.all in AbFileLocalInputStream_Access_Array_Object'Class then AbFileLocalInputStream_Access_Array_Object'Class (Value.all).Value else null);
   type AbFileLocalInputStream_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbFileLocalInputStream_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbFileLocalInputStream_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbFileLocalInputStream_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbFileLocalInputStream_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbFileLocalInputStream_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbFileLocalInputStream_Access_Array_Access_Array_Object'Class then AbFileLocalInputStream_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.io.AbFileLocalInputStream_Package_References;

with org.allbinary.logic.io.AbFileLocalInputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
with org.allbinary.logic.io.AbFileInputStream_Package; use org.allbinary.logic.io.AbFileInputStream_Package;

package org.allbinary.logic.io.AbFileLocalInputStream_Package is

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


   subtype AbFileLocalInputStream_Access is org.allbinary.logic.io.AbFileLocalInputStream_Package_References.AbFileLocalInputStream_Access;
   function "=" (Left, Right : AbFileLocalInputStream_Access) return Boolean renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References."=";
   subtype AbFileLocalInputStream_Access_Array is org.allbinary.logic.io.AbFileLocalInputStream_Package_References.AbFileLocalInputStream_Access_Array;
   function "=" (Left, Right : AbFileLocalInputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References."=";
   subtype AbFileLocalInputStream_Access_Array_Access is org.allbinary.logic.io.AbFileLocalInputStream_Package_References.AbFileLocalInputStream_Access_Array_Access;
   function "=" (Left, Right : AbFileLocalInputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References."=";
   function Java_Box (Value : AbFileLocalInputStream_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileLocalInputStream_Access_Array (Value : access Java_Object'Class) return AbFileLocalInputStream_Access_Array_Access renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References.Java_Unbox_AbFileLocalInputStream_Access_Array;
   subtype AbFileLocalInputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbFileLocalInputStream_Package_References.AbFileLocalInputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbFileLocalInputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References."=";
   subtype AbFileLocalInputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbFileLocalInputStream_Package_References.AbFileLocalInputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbFileLocalInputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References."=";
   function Java_Box (Value : AbFileLocalInputStream_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References.Java_Box;
   function Java_Unbox_AbFileLocalInputStream_Access_Array_Access_Array (Value : access Java_Object'Class) return AbFileLocalInputStream_Access_Array_Access_Array_Access renames org.allbinary.logic.io.AbFileLocalInputStream_Package_References.Java_Unbox_AbFileLocalInputStream_Access_Array_Access_Array;

   type AbFileLocalInputStream is new AbFileInputStream with null record;

   procedure Initialize (This : in out AbFileLocalInputStream'Class; file_Param : access AbFile_Package.AbFile'Class);
   function Create (file_Param : access AbFile_Package.AbFile'Class) return AbFileLocalInputStream_Access;

end org.allbinary.logic.io.AbFileLocalInputStream_Package;


