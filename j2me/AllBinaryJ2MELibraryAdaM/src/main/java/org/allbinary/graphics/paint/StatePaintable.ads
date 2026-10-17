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
with org.allbinary.graphics.displayable.StateControlledInterface_Package; use org.allbinary.graphics.displayable.StateControlledInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.paint.StatePaintable_Package is

   package StateControlledInterface_Package renames Standard.org.allbinary.graphics.displayable.StateControlledInterface_Package;

   type StatePaintable is tagged;
   type StatePaintable_Access is access all StatePaintable'Class;
   type StatePaintable_Access_Array is array (Natural range <>) of StatePaintable_Access;
   type StatePaintable_Access_Array_Access is access all StatePaintable_Access_Array;

   type StatePaintable is new Paintable and StateControlledInterface with null record;

   procedure Initialize (This : in out StatePaintable'Class);
   function Create return StatePaintable_Access;
   procedure setState (This : in out StatePaintable; state : Integer);

end org.allbinary.graphics.paint.StatePaintable_Package;


