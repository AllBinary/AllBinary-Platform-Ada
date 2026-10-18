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

package dynamic.NativeLibraryHelper_Package is


   type NativeLibraryHelper is tagged;
   type NativeLibraryHelper_Access is access all NativeLibraryHelper'Class;
   type NativeLibraryHelper_Access_Array is array (Natural range <>) of NativeLibraryHelper_Access;
   type NativeLibraryHelper_Access_Array_Access is access all NativeLibraryHelper_Access_Array;
   type NativeLibraryHelper_Access_Array_Access_Array is array (Natural range <>) of NativeLibraryHelper_Access_Array_Access;
   type NativeLibraryHelper_Access_Array_Access_Array_Access is access all NativeLibraryHelper_Access_Array_Access_Array;

   type NativeLibraryHelper is new Java_Object with record
      library : Unbounded_String;
   end record;

   procedure Initialize (This : in out NativeLibraryHelper'Class; library : Unbounded_String);
   function Create (library : Unbounded_String) return NativeLibraryHelper_Access;
   procedure load (This : in out NativeLibraryHelper);

end dynamic.NativeLibraryHelper_Package;


