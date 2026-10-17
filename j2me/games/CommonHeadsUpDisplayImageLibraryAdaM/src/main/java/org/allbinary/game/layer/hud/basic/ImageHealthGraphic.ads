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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.image.ImageCacheFactory_Package; use org.allbinary.image.ImageCacheFactory_Package;
with org.allbinary.game.layer.hud.basic.HealthGraphic_Package; use org.allbinary.game.layer.hud.basic.HealthGraphic_Package;

package org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package is

   package AnimationInterface_Package renames Standard.org.allbinary.animation.AnimationInterface_Package;
   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package ImageCacheFactory_Package renames Standard.org.allbinary.image.ImageCacheFactory_Package;

   type ImageHealthGraphic is tagged;
   type ImageHealthGraphic_Access is access all ImageHealthGraphic'Class;
   type ImageHealthGraphic_Access_Array is array (Natural range <>) of ImageHealthGraphic_Access;
   type ImageHealthGraphic_Access_Array_Access is access all ImageHealthGraphic_Access_Array;

   type ImageHealthGraphic is new HealthGraphic with record
      image : Image_Access_Array_Access;
   end record;

   procedure Initialize (This : in out ImageHealthGraphic'Class; animationInterface : AnimationInterface_Access; healthInterface : HealthInterface_Access; location : Integer; direction : Integer);
   function Create (animationInterface : AnimationInterface_Access; healthInterface : HealthInterface_Access; location : Integer; direction : Integer) return ImageHealthGraphic_Access;
   procedure paint (This : in out ImageHealthGraphic; graphics : Graphics_Access);

end org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package;


