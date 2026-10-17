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
with org.allbinary.game.health.Health_Package; use org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarTwodAnimation_Package; use org.allbinary.game.health.HealthBarTwodAnimation_Package;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;

package org.allbinary.game.ag.life.HealthIncludingLifeBar_Package is

   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package HealthBarAnimation_Package renames Standard.org.allbinary.game.health.HealthBarAnimation_Package;
   package HealthBarTwodAnimation_Package renames Standard.org.allbinary.game.health.HealthBarTwodAnimation_Package;
   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package HealthListenerInterface_Package renames Standard.org.allbinary.game.health.HealthListenerInterface_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type HealthIncludingLifeBar is tagged;
   type HealthIncludingLifeBar_Access is access all HealthIncludingLifeBar'Class;
   type HealthIncludingLifeBar_Access_Array is array (Natural range <>) of HealthIncludingLifeBar_Access;
   type HealthIncludingLifeBar_Access_Array_Access is access all HealthIncludingLifeBar_Access_Array;

   type HealthIncludingLifeBar is new Paintable and HealthListenerInterface with record
      animationInterface : HealthBarAnimation_Access;
      life : Life_Access;
      healthInterface : HealthInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthIncludingLifeBar'Class; layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; animationInterface_Param : access HealthBarAnimation'Class; direction : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; animationInterface_Param : access HealthBarAnimation'Class; direction : Integer) return HealthIncludingLifeBar_Access;
   function createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer) return HealthIncludingLifeBar_Access;
   procedure createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer'Class; life_Param : access Life'Class; healthInterface_Param : access Health'Class; location : Integer; direction : Integer);
   procedure onHealthChange (This : in out HealthIncludingLifeBar);
   procedure paint (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics'Class);
   procedure paintThreed (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics'Class);

end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;


