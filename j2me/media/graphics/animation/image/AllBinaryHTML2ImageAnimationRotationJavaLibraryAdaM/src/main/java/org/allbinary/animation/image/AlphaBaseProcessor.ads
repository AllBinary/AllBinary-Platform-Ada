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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;

package org.allbinary.animation.image.AlphaBaseProcessor_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type AlphaBaseProcessor is tagged;
   type AlphaBaseProcessor_Access is access all AlphaBaseProcessor'Class;
   type AlphaBaseProcessor_Access_Array is array (Natural range <>) of AlphaBaseProcessor_Access;
   type AlphaBaseProcessor_Access_Array_Access is access all AlphaBaseProcessor_Access_Array;

   type AlphaBaseProcessor is new Java_Object with null record;
   instance : AlphaBaseProcessor_Access;

   procedure Initialize (This : in out AlphaBaseProcessor'Class);
   function Create return AlphaBaseProcessor_Access;
   function getInstance return AlphaBaseProcessor_Access;
   procedure setAlpha (This : in out AlphaBaseProcessor; imageModifierUtil_Param : access ImageModifierUtil_Package.ImageModifierUtil'Class; originalImage_Param : access Image_Package.Image'Class; imageToShow_Param : access Image_Package.Image'Class; alpha : Integer);

end org.allbinary.animation.image.AlphaBaseProcessor_Package;


