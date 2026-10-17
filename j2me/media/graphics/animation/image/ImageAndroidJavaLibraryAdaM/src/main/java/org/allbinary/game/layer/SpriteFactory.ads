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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.SpriteFactoryInterface_Package; use org.allbinary.game.layer.SpriteFactoryInterface_Package;

package org.allbinary.game.layer.SpriteFactory_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type SpriteFactory is tagged;
   type SpriteFactory_Access is access all SpriteFactory'Class;
   type SpriteFactory_Access_Array is array (Natural range <>) of SpriteFactory_Access;
   type SpriteFactory_Access_Array_Access is access all SpriteFactory_Access_Array;

   type SpriteFactory is new SpriteFactoryInterface with record
      logUtil : LogUtil_Access;
   end record;
   instance : SpriteFactory_Access;

   procedure Initialize (This : in out SpriteFactory'Class);
   function Create return SpriteFactory_Access;
   function getInstance return SpriteFactory_Access;
   function createSprite (This : in out SpriteFactory; image_Param : access Image'Class; frameWidth : Integer; frameHeight : Integer) return Sprite_Access;
   procedure createSprite (This : in out SpriteFactory; image_Param : access Image'Class; frameWidth : Integer; frameHeight : Integer);

end org.allbinary.game.layer.SpriteFactory_Package;


