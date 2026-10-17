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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;

package org.allbinary.game.graphics.hud.HudGraphicsPosition_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;

   type HudGraphicsPosition is tagged;
   type HudGraphicsPosition_Access is access all HudGraphicsPosition'Class;
   type HudGraphicsPosition_Access_Array is array (Natural range <>) of HudGraphicsPosition_Access;
   type HudGraphicsPosition_Access_Array_Access is access all HudGraphicsPosition_Access_Array;

   type HudGraphicsPosition is new Java_Object with record
      anchor : Integer;
      point : GPoint_Access;
   end record;
   NULL_HUD_GRAPHICS_POSITION : HudGraphicsPosition_Access;

   procedure Initialize (This : in out HudGraphicsPosition'Class; point_Param : access GPoint_Package.GPoint'Class; anchor : Integer);
   function Create (point_Param : access GPoint_Package.GPoint'Class; anchor : Integer) return HudGraphicsPosition_Access;
   function getAnchor (This : in out HudGraphicsPosition) return Integer;
   procedure setAnchor (This : in out HudGraphicsPosition; anchor : Integer);
   function getPoint (This : in out HudGraphicsPosition) return GPoint_Access;
   procedure setPoint (This : in out HudGraphicsPosition; point_Param : access GPoint_Package.GPoint'Class);

end org.allbinary.game.graphics.hud.HudGraphicsPosition_Package;


