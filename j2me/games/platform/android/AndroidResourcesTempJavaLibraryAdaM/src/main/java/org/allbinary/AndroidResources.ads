--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.testgamedemo.R_Package; use org.allbinary.game.testgamedemo.R_Package;

package org.allbinary.AndroidResources_Package is

   package R_Package renames Standard.org.allbinary.game.testgamedemo.R_Package;

   type AndroidResources is tagged;
   type AndroidResources_Access is access all AndroidResources'Class;
   type AndroidResources_Access_Array is array (Natural range <>) of AndroidResources_Access;
   type AndroidResources_Access_Array_Access is access all AndroidResources_Access_Array;
   type AndroidResources_Access_Array_Access_Array is array (Natural range <>) of AndroidResources_Access_Array_Access;
   type AndroidResources_Access_Array_Access_Array_Access is access all AndroidResources_Access_Array_Access_Array;

   type AndroidResources is new Java_Object with record
      drawable : drawable_Access;
      id : id_Access;
      layout : layout_Access;
      raw : raw_Access;
      string_Id : string_Access;
   end record;
   instance : AndroidResources_Access;

   procedure Initialize (This : in out AndroidResources'Class);
   function Create return AndroidResources_Access;
   function getInstance return AndroidResources_Access;

end org.allbinary.AndroidResources_Package;


