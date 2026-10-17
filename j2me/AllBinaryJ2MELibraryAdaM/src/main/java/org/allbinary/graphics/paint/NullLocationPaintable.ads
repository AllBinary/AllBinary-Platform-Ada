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
with org.allbinary.graphics.paint.LocationPaintable_Package; use org.allbinary.graphics.paint.LocationPaintable_Package;

package org.allbinary.graphics.paint.NullLocationPaintable_Package is


   type NullLocationPaintable is tagged;
   type NullLocationPaintable_Access is access all NullLocationPaintable'Class;
   type NullLocationPaintable_Access_Array is array (Natural range <>) of NullLocationPaintable_Access;
   type NullLocationPaintable_Access_Array_Access is access all NullLocationPaintable_Access_Array;

   type NullLocationPaintable is new LocationPaintable with null record;
   instanceC : NullLocationPaintable_Access;

   procedure Initialize (This : in out NullLocationPaintable'Class);
   function Create return NullLocationPaintable_Access;
   function getInstance return NullLocationPaintable_Access;
   procedure getInstance;

end org.allbinary.graphics.paint.NullLocationPaintable_Package;


