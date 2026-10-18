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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.game.configuration.feature.GameFeatureCanvas_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type GameFeatureCanvas is tagged;
   type GameFeatureCanvas_Access is access all GameFeatureCanvas'Class;
   type GameFeatureCanvas_Access_Array is array (Natural range <>) of GameFeatureCanvas_Access;
   type GameFeatureCanvas_Access_Array_Access is access all GameFeatureCanvas_Access_Array;
   type GameFeatureCanvas_Access_Array_Access_Array is array (Natural range <>) of GameFeatureCanvas_Access_Array_Access;
   type GameFeatureCanvas_Access_Array_Access_Array_Access is access all GameFeatureCanvas_Access_Array_Access_Array;

   type GameFeatureCanvas is new Canvas with null record;

   procedure Initialize (This : in out GameFeatureCanvas'Class);
   function Create return GameFeatureCanvas_Access;
   procedure paint (This : in out GameFeatureCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.configuration.feature.GameFeatureCanvas_Package;


