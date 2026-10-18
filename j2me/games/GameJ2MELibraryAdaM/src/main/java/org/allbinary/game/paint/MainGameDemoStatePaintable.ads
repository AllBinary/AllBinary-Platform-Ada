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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.paint.MainGameDemoStatePaintable_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type MainGameDemoStatePaintable is tagged;
   type MainGameDemoStatePaintable_Access is access all MainGameDemoStatePaintable'Class;
   type MainGameDemoStatePaintable_Access_Array is array (Natural range <>) of MainGameDemoStatePaintable_Access;
   type MainGameDemoStatePaintable_Access_Array_Access is access all MainGameDemoStatePaintable_Access_Array;

   type MainGameDemoStatePaintable is new Paintable with record
      ownershipPaintableInterface : Paintable_Access;
      menuPaintableInterface : Paintable_Access;
   end record;

   procedure Initialize (This : in out MainGameDemoStatePaintable'Class; ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class);
   function Create (ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class) return MainGameDemoStatePaintable_Access;
   procedure paint (This : in out MainGameDemoStatePaintable; graphics_Param : access Graphics_Package.Graphics'Class);
   function getOwnershipPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access;
   function getMenuPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access;

end org.allbinary.game.paint.MainGameDemoStatePaintable_Package;


