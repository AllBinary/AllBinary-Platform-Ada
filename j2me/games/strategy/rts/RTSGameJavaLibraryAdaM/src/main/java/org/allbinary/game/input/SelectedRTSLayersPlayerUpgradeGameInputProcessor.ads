-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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

with AllBinary_Java;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package;
package org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References is
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access is access all org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package.SelectedRTSLayersPlayerUpgradeGameInputProcessor'Class;
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access;
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access is access all SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array;
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access;
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access is access all SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array;
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Object'Class then SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Object'Class then SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References;

with org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package; use org.allbinary.game.input.SelectedRTSLayersPlayerGameInputProcessor_Package;
limited with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package;
with org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References;

package org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
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
   subtype SelectedRTSLayersPlayerGameInput_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access;
   use type SelectedRTSLayersPlayerGameInput_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array;
   subtype SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerGameInput_Package_References.SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   use type SelectedRTSLayersPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access is org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array;
   subtype SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References."=";
   subtype SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References."=";
   function Java_Box (Value : SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package_References.Java_Unbox_SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access_Array_Access_Array;

   type SelectedRTSLayersPlayerUpgradeGameInputProcessor is new SelectedRTSLayersPlayerGameInputProcessor with null record;

   procedure Initialize (This : in out SelectedRTSLayersPlayerUpgradeGameInputProcessor'Class; selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class);
   function Create (selectedRTSLayersPlayerGameInput_Param : access SelectedRTSLayersPlayerGameInput_Package.SelectedRTSLayersPlayerGameInput'Class) return SelectedRTSLayersPlayerUpgradeGameInputProcessor_Access;
   procedure processEvent (This : in out SelectedRTSLayersPlayerUpgradeGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.input.SelectedRTSLayersPlayerUpgradeGameInputProcessor_Package;


