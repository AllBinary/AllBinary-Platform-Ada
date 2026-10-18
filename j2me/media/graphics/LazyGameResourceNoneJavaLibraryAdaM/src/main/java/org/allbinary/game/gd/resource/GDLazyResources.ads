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

package org.allbinary.game.gd.resource.GDLazyResources_Package is


   type GDLazyResources is tagged;
   type GDLazyResources_Access is access all GDLazyResources'Class;
   type GDLazyResources_Access_Array is array (Natural range <>) of GDLazyResources_Access;
   type GDLazyResources_Access_Array_Access is access all GDLazyResources_Access_Array;
   type GDLazyResources_Access_Array_Access_Array is array (Natural range <>) of GDLazyResources_Access_Array_Access;
   type GDLazyResources_Access_Array_Access_Array_Access is access all GDLazyResources_Access_Array_Access_Array;

   type GDLazyResources is new Java_Object with record
      imageResourceWidthArray : Integer_Array_Access;
      imageResourceHeightArray : Integer_Array_Access;
      requiredResourcesBeforeLoadingArray : Unbounded_String_Array_Access;
   end record;
   instance : GDLazyResources_Access;

   procedure Initialize (This : in out GDLazyResources'Class);
   function Create return GDLazyResources_Access;
   function getInstance return GDLazyResources_Access;

end org.allbinary.game.gd.resource.GDLazyResources_Package;


