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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.StatePaintable_Package; use org.allbinary.graphics.paint.StatePaintable_Package;

package org.allbinary.game.paint.BasicGameDemoPaintable_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package StatePaintable_Package renames Standard.org.allbinary.graphics.paint.StatePaintable_Package;

   type BasicGameDemoPaintable is tagged;
   type BasicGameDemoPaintable_Access is access all BasicGameDemoPaintable'Class;
   type BasicGameDemoPaintable_Access_Array is array (Natural range <>) of BasicGameDemoPaintable_Access;
   type BasicGameDemoPaintable_Access_Array_Access is access all BasicGameDemoPaintable_Access_Array;

   type BasicGameDemoPaintable is new StatePaintable with record
      mainDemoStatePaintable : Paintable_Access;
      ownershipPaintable : Paintable_Access;
      helpPaintableInterface : Paintable_Access;
      currentStatePaintable : Paintable_Access;
   end record;

   procedure Initialize (This : in out BasicGameDemoPaintable'Class; mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access);
   function Create (mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access) return BasicGameDemoPaintable_Access;
   procedure setState (This : in out BasicGameDemoPaintable; state : Integer);
   procedure paint (This : in out BasicGameDemoPaintable; graphics : Graphics_Access);
   function getHelpPaintableInterface (This : in out BasicGameDemoPaintable) return Paintable_Access;
   procedure setCurrentStatePaintable (This : in out BasicGameDemoPaintable; currentStatePaintable : Paintable_Access);
   function getCurrentStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access;
   function getMainDemoStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access;

end org.allbinary.game.paint.BasicGameDemoPaintable_Package;


