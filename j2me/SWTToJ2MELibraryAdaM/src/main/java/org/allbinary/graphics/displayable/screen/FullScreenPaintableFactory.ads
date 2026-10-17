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
with org.allbinary.game.paint.FullScreenPaintable_Package; use org.allbinary.game.paint.FullScreenPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package is

   package FullScreenPaintable_Package renames Standard.org.allbinary.game.paint.FullScreenPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type FullScreenPaintableFactory is tagged;
   type FullScreenPaintableFactory_Access is access all FullScreenPaintableFactory'Class;
   type FullScreenPaintableFactory_Access_Array is array (Natural range <>) of FullScreenPaintableFactory_Access;
   type FullScreenPaintableFactory_Access_Array_Access is access all FullScreenPaintableFactory_Access_Array;

   type FullScreenPaintableFactory is new Java_Object with record
      paintable : Paintable_Access;
   end record;
   instance : FullScreenPaintableFactory_Access;

   procedure Initialize (This : in out FullScreenPaintableFactory'Class);
   function Create return FullScreenPaintableFactory_Access;
   function getInstance return FullScreenPaintableFactory_Access;

end org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package;


