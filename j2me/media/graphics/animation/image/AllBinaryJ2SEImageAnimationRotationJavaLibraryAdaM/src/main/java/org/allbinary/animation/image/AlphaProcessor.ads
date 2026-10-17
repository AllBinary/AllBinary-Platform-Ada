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
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.animation.image.ModifierBaseProcessor_Package; use org.allbinary.animation.image.ModifierBaseProcessor_Package;

package org.allbinary.animation.image.AlphaProcessor_Package is

   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type AlphaProcessor is tagged;
   type AlphaProcessor_Access is access all AlphaProcessor'Class;
   type AlphaProcessor_Access_Array is array (Natural range <>) of AlphaProcessor_Access;
   type AlphaProcessor_Access_Array_Access is access all AlphaProcessor_Access_Array;

   type AlphaProcessor is new ModifierBaseProcessor with null record;
   instanceC : AlphaProcessor_Access;

   procedure Initialize (This : in out AlphaProcessor'Class);
   function Create return AlphaProcessor_Access;
   function getInstance return AlphaProcessor_Access;
   procedure updateAlpha (This : in out AlphaProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; index : Integer; alpha : Integer);

end org.allbinary.animation.image.AlphaProcessor_Package;


