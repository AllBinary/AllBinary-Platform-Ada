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

limited with org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package;
package org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References is
   type ImageHealthGraphic_Access is access all org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package.ImageHealthGraphic'Class;
   type ImageHealthGraphic_Access_Array is array (Natural range <>) of ImageHealthGraphic_Access;
   type ImageHealthGraphic_Access_Array_Access is access all ImageHealthGraphic_Access_Array;
   type ImageHealthGraphic_Access_Array_Access_Array is array (Natural range <>) of ImageHealthGraphic_Access_Array_Access;
   type ImageHealthGraphic_Access_Array_Access_Array_Access is access all ImageHealthGraphic_Access_Array_Access_Array;
end org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References;

with org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.AnimationInterface_Package_References;
limited with org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;
with org.allbinary.game.layer.hud.basic.HealthGraphic_Package; use org.allbinary.game.layer.hud.basic.HealthGraphic_Package;

package org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationInterface_Package renames Standard.org.allbinary.animation.AnimationInterface_Package;
   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype AnimationInterface_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access;
   use type AnimationInterface_Access;
   subtype AnimationInterface_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array;
   use type AnimationInterface_Access_Array;
   subtype AnimationInterface_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access;
   use type AnimationInterface_Access_Array_Access;
   subtype AnimationInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array;
   use type AnimationInterface_Access_Array_Access_Array;
   subtype AnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterface_Package_References.AnimationInterface_Access_Array_Access_Array_Access;
   use type AnimationInterface_Access_Array_Access_Array_Access;
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   use type HealthInterface_Access;
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   use type HealthInterface_Access_Array;
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   use type HealthInterface_Access_Array_Access;
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   use type HealthInterface_Access_Array_Access_Array;
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   use type HealthInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageHealthGraphic_Access is org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References.ImageHealthGraphic_Access;
   function "=" (Left, Right : ImageHealthGraphic_Access) return Boolean renames org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References."=";
   subtype ImageHealthGraphic_Access_Array is org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References.ImageHealthGraphic_Access_Array;
   function "=" (Left, Right : ImageHealthGraphic_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References."=";
   subtype ImageHealthGraphic_Access_Array_Access is org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References.ImageHealthGraphic_Access_Array_Access;
   function "=" (Left, Right : ImageHealthGraphic_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References."=";
   subtype ImageHealthGraphic_Access_Array_Access_Array is org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References.ImageHealthGraphic_Access_Array_Access_Array;
   function "=" (Left, Right : ImageHealthGraphic_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References."=";
   subtype ImageHealthGraphic_Access_Array_Access_Array_Access is org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References.ImageHealthGraphic_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageHealthGraphic_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package_References."=";

   type ImageHealthGraphic is new HealthGraphic with record
      image : Image_Access_Array_Access;
   end record;

   procedure Initialize (This : in out ImageHealthGraphic'Class; animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class; location : Integer; direction : Integer);
   function Create (animationInterface_Param : access AnimationInterface_Package.AnimationInterface'Class; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class; location : Integer; direction : Integer) return ImageHealthGraphic_Access;
   procedure paint (This : in out ImageHealthGraphic; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.hud.basic.ImageHealthGraphic_Package;


