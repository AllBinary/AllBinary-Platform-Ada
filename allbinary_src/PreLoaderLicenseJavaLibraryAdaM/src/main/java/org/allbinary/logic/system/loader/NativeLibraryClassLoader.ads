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
limited with org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package;
package org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References is
   type NativeLibraryClassLoader_Access is access all org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package.NativeLibraryClassLoader'Class;
   type NativeLibraryClassLoader_Access_Array is array (Natural range <>) of NativeLibraryClassLoader_Access;
   type NativeLibraryClassLoader_Access_Array_Access is access all NativeLibraryClassLoader_Access_Array;
   type NativeLibraryClassLoader_Access_Array_Access_Array is array (Natural range <>) of NativeLibraryClassLoader_Access_Array_Access;
   type NativeLibraryClassLoader_Access_Array_Access_Array_Access is access all NativeLibraryClassLoader_Access_Array_Access_Array;
   type NativeLibraryClassLoader_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NativeLibraryClassLoader_Access_Array_Access;
   end record;
   function Java_Box (Value : NativeLibraryClassLoader_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NativeLibraryClassLoader_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NativeLibraryClassLoader_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NativeLibraryClassLoader_Access_Array_Access is (if Value /= null and then Value.all in NativeLibraryClassLoader_Access_Array_Object'Class then NativeLibraryClassLoader_Access_Array_Object'Class (Value.all).Value else null);
   type NativeLibraryClassLoader_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NativeLibraryClassLoader_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NativeLibraryClassLoader_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NativeLibraryClassLoader_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NativeLibraryClassLoader_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NativeLibraryClassLoader_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NativeLibraryClassLoader_Access_Array_Access_Array_Object'Class then NativeLibraryClassLoader_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References;

with org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.ClassLoader_Package; use java.lang.ClassLoader_Package;

package org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package is

   package ClassLoader_Package renames Standard.java.lang.ClassLoader_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NativeLibraryClassLoader_Access is org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.NativeLibraryClassLoader_Access;
   function "=" (Left, Right : NativeLibraryClassLoader_Access) return Boolean renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References."=";
   subtype NativeLibraryClassLoader_Access_Array is org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.NativeLibraryClassLoader_Access_Array;
   function "=" (Left, Right : NativeLibraryClassLoader_Access_Array) return Boolean renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References."=";
   subtype NativeLibraryClassLoader_Access_Array_Access is org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.NativeLibraryClassLoader_Access_Array_Access;
   function "=" (Left, Right : NativeLibraryClassLoader_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References."=";
   function Java_Box (Value : NativeLibraryClassLoader_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.Java_Box;
   function Java_Unbox_NativeLibraryClassLoader_Access_Array (Value : access Java_Object'Class) return NativeLibraryClassLoader_Access_Array_Access renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.Java_Unbox_NativeLibraryClassLoader_Access_Array;
   subtype NativeLibraryClassLoader_Access_Array_Access_Array is org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.NativeLibraryClassLoader_Access_Array_Access_Array;
   function "=" (Left, Right : NativeLibraryClassLoader_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References."=";
   subtype NativeLibraryClassLoader_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.NativeLibraryClassLoader_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NativeLibraryClassLoader_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References."=";
   function Java_Box (Value : NativeLibraryClassLoader_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.Java_Box;
   function Java_Unbox_NativeLibraryClassLoader_Access_Array_Access_Array (Value : access Java_Object'Class) return NativeLibraryClassLoader_Access_Array_Access_Array_Access renames org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package_References.Java_Unbox_NativeLibraryClassLoader_Access_Array_Access_Array;

   type NativeLibraryClassLoader is new ClassLoader with record
      message : Unbounded_String;
   end record;

   procedure Initialize (This : in out NativeLibraryClassLoader'Class; parent_Param : access ClassLoader_Package.ClassLoader'Class);
   function Create (parent_Param : access ClassLoader_Package.ClassLoader'Class) return NativeLibraryClassLoader_Access;

end org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package;


