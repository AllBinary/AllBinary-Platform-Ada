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
with org.allbinary.game.graphics.hud.BasicHud_Package; use org.allbinary.game.graphics.hud.BasicHud_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;

package org.allbinary.game.layer.hud.basic.VelocityWidget_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BasicHud_Package renames Standard.org.allbinary.game.graphics.hud.BasicHud_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;

   type VelocityWidget is tagged;
   type VelocityWidget_Access is access all VelocityWidget'Class;
   type VelocityWidget_Access_Array is array (Natural range <>) of VelocityWidget_Access;
   type VelocityWidget_Access_Array_Access is access all VelocityWidget_Access_Array;
   type VelocityWidget_Access_Array_Access_Array is array (Natural range <>) of VelocityWidget_Access_Array_Access;
   type VelocityWidget_Access_Array_Access_Array_Access is access all VelocityWidget_Access_Array_Access_Array;

   type VelocityWidget is new BasicHud with record
      KILOMETERS_PER_HOUR_STR : Character_Array_Access;
      totalChars : Integer;
      velocity : Integer;
      maxVelocity : Integer;
      string_Id : Character_Array_Access;
      totalDigits : Integer;
      powerOfTenVelocity : Integer;
      primitiveLongUtil : PrimitiveLongUtil_Access;
      offset : Integer;
      offset2 : Integer;
   end record;

   procedure Initialize (This : in out VelocityWidget'Class; powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (powerOfTenVelocity : Integer; location : Integer; direction : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return VelocityWidget_Access;
   procedure updateMeasurement (This : in out VelocityWidget; graphics_Param : access Graphics_Package.Graphics'Class);
   function get (This : in out VelocityWidget) return Integer;
   procedure add (This : in out VelocityWidget; value : Integer);
   procedure set (This : in out VelocityWidget; value : Integer);
   procedure reduce (This : in out VelocityWidget; value : Integer);
   procedure paint (This : in out VelocityWidget; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.hud.basic.VelocityWidget_Package;


