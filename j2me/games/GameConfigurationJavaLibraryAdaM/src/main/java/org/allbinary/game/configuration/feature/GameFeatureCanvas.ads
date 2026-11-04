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

limited with org.allbinary.game.configuration.feature.GameFeatureCanvas_Package;
package org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References is
   type GameFeatureCanvas_Access is access all org.allbinary.game.configuration.feature.GameFeatureCanvas_Package.GameFeatureCanvas'Class;
   type GameFeatureCanvas_Access_Array is array (Natural range <>) of GameFeatureCanvas_Access;
   type GameFeatureCanvas_Access_Array_Access is access all GameFeatureCanvas_Access_Array;
   type GameFeatureCanvas_Access_Array_Access_Array is array (Natural range <>) of GameFeatureCanvas_Access_Array_Access;
   type GameFeatureCanvas_Access_Array_Access_Array_Access is access all GameFeatureCanvas_Access_Array_Access_Array;
end org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References;

with org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;

package org.allbinary.game.configuration.feature.GameFeatureCanvas_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype GameFeatureCanvas_Access is org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References.GameFeatureCanvas_Access;
   function "=" (Left, Right : GameFeatureCanvas_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References."=";
   subtype GameFeatureCanvas_Access_Array is org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References.GameFeatureCanvas_Access_Array;
   function "=" (Left, Right : GameFeatureCanvas_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References."=";
   subtype GameFeatureCanvas_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References.GameFeatureCanvas_Access_Array_Access;
   function "=" (Left, Right : GameFeatureCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References."=";
   subtype GameFeatureCanvas_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References.GameFeatureCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References."=";
   subtype GameFeatureCanvas_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References.GameFeatureCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureCanvas_Package_References."=";

   type GameFeatureCanvas is new Canvas with null record;

   procedure Initialize (This : in out GameFeatureCanvas'Class);
   function Create return GameFeatureCanvas_Access;
   procedure paint (This : in out GameFeatureCanvas; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.configuration.feature.GameFeatureCanvas_Package;


