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

limited with org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;
package org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References is
   type RTSPlayerRightGameInputProcessor_Access is access all org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package.RTSPlayerRightGameInputProcessor'Class;
   type RTSPlayerRightGameInputProcessor_Access_Array is array (Natural range <>) of RTSPlayerRightGameInputProcessor_Access;
   type RTSPlayerRightGameInputProcessor_Access_Array_Access is access all RTSPlayerRightGameInputProcessor_Access_Array;
   type RTSPlayerRightGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of RTSPlayerRightGameInputProcessor_Access_Array_Access;
   type RTSPlayerRightGameInputProcessor_Access_Array_Access_Array_Access is access all RTSPlayerRightGameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References;

with org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References;
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
with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package; use org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;
limited with org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package_References;

package org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package is

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
   subtype RTSPlayerGameInput_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access;
   use type RTSPlayerGameInput_Access;
   subtype RTSPlayerGameInput_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array;
   use type RTSPlayerGameInput_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access;
   subtype RTSPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array;
   use type RTSPlayerGameInput_Access_Array_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSPlayerRightGameInputProcessor_Access is org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References.RTSPlayerRightGameInputProcessor_Access;
   function "=" (Left, Right : RTSPlayerRightGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References."=";
   subtype RTSPlayerRightGameInputProcessor_Access_Array is org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References.RTSPlayerRightGameInputProcessor_Access_Array;
   function "=" (Left, Right : RTSPlayerRightGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References."=";
   subtype RTSPlayerRightGameInputProcessor_Access_Array_Access is org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References.RTSPlayerRightGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerRightGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References."=";
   subtype RTSPlayerRightGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References.RTSPlayerRightGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerRightGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References."=";
   subtype RTSPlayerRightGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References.RTSPlayerRightGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerRightGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package_References."=";

   type RTSPlayerRightGameInputProcessor is new RTSPlayerGameInputProcessor with null record;

   procedure Initialize (This : in out RTSPlayerRightGameInputProcessor'Class; rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class);
   function Create (rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) return RTSPlayerRightGameInputProcessor_Access;
   procedure processEvent (This : in out RTSPlayerRightGameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.input.RTSPlayerRightGameInputProcessor_Package;


