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

limited with org.allbinary.game.ag.ai.tactical.LurchAI_Package;
package org.allbinary.game.ag.ai.tactical.LurchAI_Package_References is
   type LurchAI_Access is access all org.allbinary.game.ag.ai.tactical.LurchAI_Package.LurchAI'Class;
   type LurchAI_Access_Array is array (Natural range <>) of LurchAI_Access;
   type LurchAI_Access_Array_Access is access all LurchAI_Access_Array;
   type LurchAI_Access_Array_Access_Array is array (Natural range <>) of LurchAI_Access_Array_Access;
   type LurchAI_Access_Array_Access_Array_Access is access all LurchAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.tactical.LurchAI_Package_References;

with org.allbinary.game.ag.ai.tactical.LurchAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.ag.ai.tactical.LurchAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
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


   subtype LurchAI_Access is org.allbinary.game.ag.ai.tactical.LurchAI_Package_References.LurchAI_Access;
   function "=" (Left, Right : LurchAI_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.LurchAI_Package_References."=";
   subtype LurchAI_Access_Array is org.allbinary.game.ag.ai.tactical.LurchAI_Package_References.LurchAI_Access_Array;
   function "=" (Left, Right : LurchAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.LurchAI_Package_References."=";
   subtype LurchAI_Access_Array_Access is org.allbinary.game.ag.ai.tactical.LurchAI_Package_References.LurchAI_Access_Array_Access;
   function "=" (Left, Right : LurchAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.LurchAI_Package_References."=";
   subtype LurchAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.tactical.LurchAI_Package_References.LurchAI_Access_Array_Access_Array;
   function "=" (Left, Right : LurchAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.LurchAI_Package_References."=";
   subtype LurchAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.tactical.LurchAI_Package_References.LurchAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LurchAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.LurchAI_Package_References."=";

   type LurchAI is new BasicAI with record
      currentRelativeAngle : Integer;
      currentSpeed : Integer;
   end record;

   procedure Initialize (This : in out LurchAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return LurchAI_Access;
   procedure processAI (This : in out LurchAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure reverse_Id (This : in out LurchAI);
   procedure accelerate (This : in out LurchAI);
   procedure drop (This : in out LurchAI);

end org.allbinary.game.ag.ai.tactical.LurchAI_Package;


