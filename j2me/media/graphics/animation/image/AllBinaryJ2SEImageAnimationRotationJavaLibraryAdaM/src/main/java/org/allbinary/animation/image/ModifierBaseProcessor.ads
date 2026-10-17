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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;

package org.allbinary.animation.image.ModifierBaseProcessor_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type ModifierBaseProcessor is tagged;
   type ModifierBaseProcessor_Access is access all ModifierBaseProcessor'Class;
   type ModifierBaseProcessor_Access_Array is array (Natural range <>) of ModifierBaseProcessor_Access;
   type ModifierBaseProcessor_Access_Array_Access is access all ModifierBaseProcessor_Access_Array;

   type ModifierBaseProcessor is new Java_Object with null record;
   instance : ModifierBaseProcessor_Access;

   procedure Initialize (This : in out ModifierBaseProcessor'Class);
   function Create return ModifierBaseProcessor_Access;
   function getInstance return ModifierBaseProcessor_Access;
   procedure updateColor (This : in out ModifierBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure updateAlpha (This : in out ModifierBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; alpha : Integer);

end org.allbinary.animation.image.ModifierBaseProcessor_Package;


