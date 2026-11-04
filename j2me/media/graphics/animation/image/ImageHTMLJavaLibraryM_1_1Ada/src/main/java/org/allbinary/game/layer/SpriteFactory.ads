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

limited with org.allbinary.game.layer.SpriteFactory_Package;
package org.allbinary.game.layer.SpriteFactory_Package_References is
   type SpriteFactory_Access is access all org.allbinary.game.layer.SpriteFactory_Package.SpriteFactory'Class;
   type SpriteFactory_Access_Array is array (Natural range <>) of SpriteFactory_Access;
   type SpriteFactory_Access_Array_Access is access all SpriteFactory_Access_Array;
   type SpriteFactory_Access_Array_Access_Array is array (Natural range <>) of SpriteFactory_Access_Array_Access;
   type SpriteFactory_Access_Array_Access_Array_Access is access all SpriteFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.SpriteFactory_Package_References;

with org.allbinary.game.layer.SpriteFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with javax.microedition.lcdui.game.Sprite_Package;
with javax.microedition.lcdui.game.Sprite_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.SpriteFactoryInterface_Package; use org.allbinary.game.layer.SpriteFactoryInterface_Package;

package org.allbinary.game.layer.SpriteFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype Sprite_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access;
   use type Sprite_Access;
   subtype Sprite_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array;
   use type Sprite_Access_Array;
   subtype Sprite_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access;
   use type Sprite_Access_Array_Access;
   subtype Sprite_Access_Array_Access_Array is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array;
   use type Sprite_Access_Array_Access_Array;
   subtype Sprite_Access_Array_Access_Array_Access is javax.microedition.lcdui.game.Sprite_Package_References.Sprite_Access_Array_Access_Array_Access;
   use type Sprite_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpriteFactory_Access is org.allbinary.game.layer.SpriteFactory_Package_References.SpriteFactory_Access;
   function "=" (Left, Right : SpriteFactory_Access) return Boolean renames org.allbinary.game.layer.SpriteFactory_Package_References."=";
   subtype SpriteFactory_Access_Array is org.allbinary.game.layer.SpriteFactory_Package_References.SpriteFactory_Access_Array;
   function "=" (Left, Right : SpriteFactory_Access_Array) return Boolean renames org.allbinary.game.layer.SpriteFactory_Package_References."=";
   subtype SpriteFactory_Access_Array_Access is org.allbinary.game.layer.SpriteFactory_Package_References.SpriteFactory_Access_Array_Access;
   function "=" (Left, Right : SpriteFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SpriteFactory_Package_References."=";
   subtype SpriteFactory_Access_Array_Access_Array is org.allbinary.game.layer.SpriteFactory_Package_References.SpriteFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SpriteFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SpriteFactory_Package_References."=";
   subtype SpriteFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.SpriteFactory_Package_References.SpriteFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpriteFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SpriteFactory_Package_References."=";

   type SpriteFactory is new Java_Object and SpriteFactoryInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : SpriteFactory_Access;

   procedure Initialize (This : in out SpriteFactory'Class);
   function Create return SpriteFactory_Access;
   function getInstance return SpriteFactory_Access;
   function createSprite (This : in out SpriteFactory; image_Param : access Image_Package.Image'Class; frameWidth : Integer; frameHeight : Integer) return Sprite_Access;
   procedure createSprite (This : in out SpriteFactory; image_Param : access Image_Package.Image'Class; frameWidth : Integer; frameHeight : Integer);

end org.allbinary.game.layer.SpriteFactory_Package;


