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

limited with org.allbinary.game.layer.special.SpecialGameInput_Package;
package org.allbinary.game.layer.special.SpecialGameInput_Package_References is
   type SpecialGameInput_Access is access all org.allbinary.game.layer.special.SpecialGameInput_Package.SpecialGameInput'Class;
   type SpecialGameInput_Access_Array is array (Natural range <>) of SpecialGameInput_Access;
   type SpecialGameInput_Access_Array_Access is access all SpecialGameInput_Access_Array;
   type SpecialGameInput_Access_Array_Access_Array is array (Natural range <>) of SpecialGameInput_Access_Array_Access;
   type SpecialGameInput_Access_Array_Access_Array_Access is access all SpecialGameInput_Access_Array_Access_Array;
end org.allbinary.game.layer.special.SpecialGameInput_Package_References;

with org.allbinary.game.layer.special.SpecialGameInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.SpecialGameInput_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpecialGameInput_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access;
   function "=" (Left, Right : SpecialGameInput_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array;
   function "=" (Left, Right : SpecialGameInput_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";

   type SpecialGameInput is new Java_Object and SpecialGameInputInterface with null record;

   procedure Initialize (This : in out SpecialGameInput'Class);
   function Create return SpecialGameInput_Access;
   procedure up (This : in out SpecialGameInput);
   procedure down (This : in out SpecialGameInput);
   procedure right (This : in out SpecialGameInput);
   procedure left (This : in out SpecialGameInput);
   procedure strafeLeft (This : in out SpecialGameInput);
   procedure strafeRight (This : in out SpecialGameInput);
   procedure fire (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special1 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special2 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special3 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special4 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure special5 (This : in out SpecialGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure paint (This : in out SpecialGameInput; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out SpecialGameInput; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.layer.special.SpecialGameInput_Package;


