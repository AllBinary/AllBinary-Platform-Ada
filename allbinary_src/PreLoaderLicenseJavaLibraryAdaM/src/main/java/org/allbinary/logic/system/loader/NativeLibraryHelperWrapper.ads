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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Constructor_Package; use java.lang.reflect.Constructor_Package;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.loader.ClassLoader_Package; use org.allbinary.logic.system.loader.ClassLoader_Package;
with org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package; use org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package;

package org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type NativeLibraryHelperWrapper is tagged;
   type NativeLibraryHelperWrapper_Access is access all NativeLibraryHelperWrapper'Class;
   type NativeLibraryHelperWrapper_Access_Array is array (Natural range <>) of NativeLibraryHelperWrapper_Access;
   type NativeLibraryHelperWrapper_Access_Array_Access is access all NativeLibraryHelperWrapper_Access_Array;

   type NativeLibraryHelperWrapper is new Java_Object with record
      libraryName : Unbounded_String;
      loader : ClassLoader_Access;
      anyType : Java_Object_Access;
   end record;

   procedure Initialize (This : in out NativeLibraryHelperWrapper'Class; libraryName : Unbounded_String);
   function Create (libraryName : Unbounded_String) return NativeLibraryHelperWrapper_Access;
   procedure load (This : in out NativeLibraryHelperWrapper);
   procedure unload (This : in out NativeLibraryHelperWrapper);
   function toString (This : in out NativeLibraryHelperWrapper) return Unbounded_String;
   function getLibraryName (This : in out NativeLibraryHelperWrapper) return Unbounded_String;
   procedure setLibraryName (This : in out NativeLibraryHelperWrapper; libraryName : Unbounded_String);

end org.allbinary.logic.system.loader.NativeLibraryHelperWrapper_Package;


