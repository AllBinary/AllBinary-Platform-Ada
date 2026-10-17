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
with org.allbinary.animation.image.ModifierBaseProcessor_Package; use org.allbinary.animation.image.ModifierBaseProcessor_Package;

package org.allbinary.animation.image.SetColorProcessor_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type SetColorProcessor is tagged;
   type SetColorProcessor_Access is access all SetColorProcessor'Class;
   type SetColorProcessor_Access_Array is array (Natural range <>) of SetColorProcessor_Access;
   type SetColorProcessor_Access_Array_Access is access all SetColorProcessor_Access_Array;

   type SetColorProcessor is new ModifierBaseProcessor with null record;
   instanceC : SetColorProcessor_Access;

   procedure Initialize (This : in out SetColorProcessor'Class);
   function Create return SetColorProcessor_Access;
   function getInstance return SetColorProcessor_Access;
   procedure updateColor (This : in out SetColorProcessor; imageModifierUtil : ImageModifierUtil_Access; originalImage : Image_Access; imageToShow : Image_Access; index : Integer; basicColor : BasicColor_Access);

end org.allbinary.animation.image.SetColorProcessor_Package;


