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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.paint.NullPaintable_Package is


   type NullPaintable is tagged;
   type NullPaintable_Access is access all NullPaintable'Class;
   type NullPaintable_Access_Array is array (Natural range <>) of NullPaintable_Access;
   type NullPaintable_Access_Array_Access is access all NullPaintable_Access_Array;
   type NullPaintable_Access_Array_Access_Array is array (Natural range <>) of NullPaintable_Access_Array_Access;
   type NullPaintable_Access_Array_Access_Array_Access is access all NullPaintable_Access_Array_Access_Array;

   type NullPaintable is new Paintable with null record;
   SINGLETON : NullPaintable_Access;

   procedure Initialize (This : in out NullPaintable'Class);
   function Create return NullPaintable_Access;
   function getInstance return Paintable_Access;

end org.allbinary.graphics.paint.NullPaintable_Package;


