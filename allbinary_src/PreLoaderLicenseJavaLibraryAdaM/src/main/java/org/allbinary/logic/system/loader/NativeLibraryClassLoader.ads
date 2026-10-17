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
with org.allbinary.logic.system.loader.ClassLoader_Package; use org.allbinary.logic.system.loader.ClassLoader_Package;

package org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package is


   type NativeLibraryClassLoader is tagged;
   type NativeLibraryClassLoader_Access is access all NativeLibraryClassLoader'Class;
   type NativeLibraryClassLoader_Access_Array is array (Natural range <>) of NativeLibraryClassLoader_Access;
   type NativeLibraryClassLoader_Access_Array_Access is access all NativeLibraryClassLoader_Access_Array;

   type NativeLibraryClassLoader is new ClassLoader with record
      message : Unbounded_String;
   end record;

   procedure Initialize (This : in out NativeLibraryClassLoader'Class; parent_Param : access ClassLoader'Class);
   function Create (parent_Param : access ClassLoader'Class) return NativeLibraryClassLoader_Access;

end org.allbinary.logic.system.loader.NativeLibraryClassLoader_Package;


