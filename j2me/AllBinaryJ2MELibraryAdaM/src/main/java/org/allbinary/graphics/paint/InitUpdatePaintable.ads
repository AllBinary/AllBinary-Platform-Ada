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
with org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package; use org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package;

package org.allbinary.graphics.paint.InitUpdatePaintable_Package is


   type InitUpdatePaintable is tagged;
   type InitUpdatePaintable_Access is access all InitUpdatePaintable'Class;
   type InitUpdatePaintable_Access_Array is array (Natural range <>) of InitUpdatePaintable_Access;
   type InitUpdatePaintable_Access_Array_Access is access all InitUpdatePaintable_Access_Array;

   type InitUpdatePaintable is new Paintable and InitUpdatePaintableInterface with null record;

   procedure Initialize (This : in out InitUpdatePaintable'Class);
   function Create return InitUpdatePaintable_Access;
   procedure init (This : in out InitUpdatePaintable);
   procedure update (This : in out InitUpdatePaintable);

end org.allbinary.graphics.paint.InitUpdatePaintable_Package;


