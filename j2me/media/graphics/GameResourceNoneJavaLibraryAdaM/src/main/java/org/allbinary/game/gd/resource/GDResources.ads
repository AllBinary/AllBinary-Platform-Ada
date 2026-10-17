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

package org.allbinary.game.gd.resource.GDResources_Package is


   type GDResources is tagged;
   type GDResources_Access is access all GDResources'Class;
   type GDResources_Access_Array is array (Natural range <>) of GDResources_Access;
   type GDResources_Access_Array_Access is access all GDResources_Access_Array;

   type GDResources is new Java_Object with record
      resourceStringArray : Unbounded_String_Array_Access;
      currentLayoutRequiredTotal : Integer;
   end record;
   instance : GDResources_Access;

   procedure Initialize (This : in out GDResources'Class);
   function Create return GDResources_Access;
   function getInstance return GDResources_Access;
   procedure getInstance;

end org.allbinary.game.gd.resource.GDResources_Package;


