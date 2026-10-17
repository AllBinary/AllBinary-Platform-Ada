--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type AboutPaintableFactory is tagged;
   type AboutPaintableFactory_Access is access all AboutPaintableFactory'Class;
   type AboutPaintableFactory_Access_Array is array (Natural range <>) of AboutPaintableFactory_Access;
   type AboutPaintableFactory_Access_Array_Access is access all AboutPaintableFactory_Access_Array;

   type AboutPaintableFactory is new Java_Object with record
      paintableArray : Paintable_Access_Array_Access;
   end record;
   instance : AboutPaintableFactory_Access;

   procedure Initialize (This : in out AboutPaintableFactory'Class);
   function Create return AboutPaintableFactory_Access;
   function getInstance return AboutPaintableFactory_Access;
   procedure getInstance;

end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;


