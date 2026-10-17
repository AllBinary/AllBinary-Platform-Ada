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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;

package org.allbinary.game.health.HealthBar_Package is

   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

   type HealthBar is tagged;
   type HealthBar_Access is access all HealthBar'Class;
   type HealthBar_Access_Array is array (Natural range <>) of HealthBar_Access;
   type HealthBar_Access_Array_Access is access all HealthBar_Access_Array;

   type HealthBar is new Paintable and HealthListenerInterface with record
      animationInterface : HealthBarAnimation_Access;
      healthInterface : HealthInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthBar'Class; layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer);
   function Create (layerInterface : AllBinaryLayer_Access; healthInterface : Health_Access; animationInterface : HealthBarAnimation_Access; direction : Integer) return HealthBar_Access;
   procedure onHealthChange (This : in out HealthBar);
   procedure paint (This : in out HealthBar; graphics : Graphics_Access);
   procedure paintThreed (This : in out HealthBar; graphics : Graphics_Access);

end org.allbinary.game.health.HealthBar_Package;


