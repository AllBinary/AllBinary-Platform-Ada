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

package org.allbinary.graphics.paint.PaintableFactory_Package is


   type PaintableFactory is tagged;
   type PaintableFactory_Access is access all PaintableFactory'Class;
   type PaintableFactory_Access_Array is array (Natural range <>) of PaintableFactory_Access;
   type PaintableFactory_Access_Array_Access is access all PaintableFactory_Access_Array;

   type PaintableFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaintableFactory'Class);
   function Create return PaintableFactory_Access;
   function getInstance (This : in out PaintableFactory) return Paintable_Access;
   procedure getInstance (This : in out PaintableFactory);

end org.allbinary.graphics.paint.PaintableFactory_Package;


