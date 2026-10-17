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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.health.HealthBarAnimation_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type HealthBarAnimation is tagged;
   type HealthBarAnimation_Access is access all HealthBarAnimation'Class;
   type HealthBarAnimation_Access_Array is array (Natural range <>) of HealthBarAnimation_Access;
   type HealthBarAnimation_Access_Array_Access is access all HealthBarAnimation_Access_Array;

   type HealthBarAnimation is new Animation with record
      basicColorFactory : BasicColorFactory_Access;
      x2 : Integer;
      thickness : Integer;
      location : Integer;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthBarAnimation'Class; layerInterface : AllBinaryLayer_Access; location : Integer);
   function Create (layerInterface : AllBinaryLayer_Access; location : Integer) return HealthBarAnimation_Access;
   procedure onHealthChange (This : in out HealthBarAnimation; newX2 : Integer);
   function getY (This : in out HealthBarAnimation) return Integer;

end org.allbinary.game.health.HealthBarAnimation_Package;


