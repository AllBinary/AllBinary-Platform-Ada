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

limited with org.allbinary.game.layer.special.SpecialGameInputInterface_Package;
package org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References is
   type SpecialGameInputInterface_Access is access all org.allbinary.game.layer.special.SpecialGameInputInterface_Package.SpecialGameInputInterface'Class;
   type SpecialGameInputInterface_Access_Array is array (Natural range <>) of SpecialGameInputInterface_Access;
   type SpecialGameInputInterface_Access_Array_Access is access all SpecialGameInputInterface_Access_Array;
   type SpecialGameInputInterface_Access_Array_Access_Array is array (Natural range <>) of SpecialGameInputInterface_Access_Array_Access;
   type SpecialGameInputInterface_Access_Array_Access_Array_Access is access all SpecialGameInputInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References;

with org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.layer.special.SpecialGameInputInterface_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
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


   type SpecialGameInputInterface is interface and PaintableInterface;
   subtype SpecialGameInputInterface_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   function Java_Object_Access_From_SpecialGameInputInterface (Value : SpecialGameInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure up (This : in out SpecialGameInputInterface) is abstract;
   procedure down (This : in out SpecialGameInputInterface) is abstract;
   procedure right (This : in out SpecialGameInputInterface) is abstract;
   procedure left (This : in out SpecialGameInputInterface) is abstract;
   procedure strafeLeft (This : in out SpecialGameInputInterface) is abstract;
   procedure strafeRight (This : in out SpecialGameInputInterface) is abstract;
   procedure fire (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special1 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special2 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special3 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special4 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;
   procedure special5 (This : in out SpecialGameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is abstract;

end org.allbinary.game.layer.special.SpecialGameInputInterface_Package;


