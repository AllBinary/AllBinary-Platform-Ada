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

limited with org.allbinary.game.layer.SpriteFactoryInterface_Package;
package org.allbinary.game.layer.SpriteFactoryInterface_Package_References is
   type SpriteFactoryInterface_Access is access all org.allbinary.game.layer.SpriteFactoryInterface_Package.SpriteFactoryInterface'Class;
   type SpriteFactoryInterface_Access_Array is array (Natural range <>) of SpriteFactoryInterface_Access;
   type SpriteFactoryInterface_Access_Array_Access is access all SpriteFactoryInterface_Access_Array;
   type SpriteFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of SpriteFactoryInterface_Access_Array_Access;
   type SpriteFactoryInterface_Access_Array_Access_Array_Access is access all SpriteFactoryInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.SpriteFactoryInterface_Package_References;

with org.allbinary.game.layer.SpriteFactoryInterface_Package_References;
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

package org.allbinary.game.layer.SpriteFactoryInterface_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Sprite_Package renames Standard.javax.microedition.lcdui.game.Sprite_Package;
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
   end Reference_Types;
   use Reference_Types;


   type SpriteFactoryInterface is interface;
   subtype SpriteFactoryInterface_Access is org.allbinary.game.layer.SpriteFactoryInterface_Package_References.SpriteFactoryInterface_Access;
   function "=" (Left, Right : SpriteFactoryInterface_Access) return Boolean renames org.allbinary.game.layer.SpriteFactoryInterface_Package_References."=";
   subtype SpriteFactoryInterface_Access_Array is org.allbinary.game.layer.SpriteFactoryInterface_Package_References.SpriteFactoryInterface_Access_Array;
   function "=" (Left, Right : SpriteFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.layer.SpriteFactoryInterface_Package_References."=";
   subtype SpriteFactoryInterface_Access_Array_Access is org.allbinary.game.layer.SpriteFactoryInterface_Package_References.SpriteFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : SpriteFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SpriteFactoryInterface_Package_References."=";
   subtype SpriteFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.SpriteFactoryInterface_Package_References.SpriteFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SpriteFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.SpriteFactoryInterface_Package_References."=";
   subtype SpriteFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.SpriteFactoryInterface_Package_References.SpriteFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpriteFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.SpriteFactoryInterface_Package_References."=";
   function Java_Object_Access_From_SpriteFactoryInterface (Value : SpriteFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function createSprite (This : in out SpriteFactoryInterface; image_Param : access Image_Package.Image'Class; frameWidth : Integer; frameHeight : Integer) return Sprite_Access is abstract;

end org.allbinary.game.layer.SpriteFactoryInterface_Package;


