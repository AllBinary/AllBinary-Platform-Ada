-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.game.Sprite_Package; use javax.microedition.lcdui.game.Sprite_Package;

package org.allbinary.game.layer.SpriteFactoryInterface_Package is


   type SpriteFactoryInterface is interface;
   type SpriteFactoryInterface_Access is access all SpriteFactoryInterface'Class;
   type SpriteFactoryInterface_Access_Array is array (Natural range <>) of SpriteFactoryInterface_Access;
   type SpriteFactoryInterface_Access_Array_Access is access all SpriteFactoryInterface_Access_Array;
   function createSprite (This : in out SpriteFactoryInterface; image : Image_Access; frameWidth : Integer; frameHeight : Integer) return Sprite_Access is abstract;

end org.allbinary.game.layer.SpriteFactoryInterface_Package;


