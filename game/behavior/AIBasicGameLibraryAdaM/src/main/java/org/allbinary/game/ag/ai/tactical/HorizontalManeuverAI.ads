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

with AllBinary_Java;
limited with org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package;
package org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References is
   type HorizontalManeuverAI_Access is access all org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package.HorizontalManeuverAI'Class;
   type HorizontalManeuverAI_Access_Array is array (Natural range <>) of HorizontalManeuverAI_Access;
   type HorizontalManeuverAI_Access_Array_Access is access all HorizontalManeuverAI_Access_Array;
   type HorizontalManeuverAI_Access_Array_Access_Array is array (Natural range <>) of HorizontalManeuverAI_Access_Array_Access;
   type HorizontalManeuverAI_Access_Array_Access_Array_Access is access all HorizontalManeuverAI_Access_Array_Access_Array;
   type HorizontalManeuverAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HorizontalManeuverAI_Access_Array_Access;
   end record;
   function Java_Box (Value : HorizontalManeuverAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HorizontalManeuverAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HorizontalManeuverAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HorizontalManeuverAI_Access_Array_Access is (if Value /= null and then Value.all in HorizontalManeuverAI_Access_Array_Object'Class then HorizontalManeuverAI_Access_Array_Object'Class (Value.all).Value else null);
   type HorizontalManeuverAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HorizontalManeuverAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HorizontalManeuverAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HorizontalManeuverAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HorizontalManeuverAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HorizontalManeuverAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HorizontalManeuverAI_Access_Array_Access_Array_Object'Class then HorizontalManeuverAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References;

with org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References;
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

package org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package is

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


   subtype HorizontalManeuverAI_Access is org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.HorizontalManeuverAI_Access;
   function "=" (Left, Right : HorizontalManeuverAI_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References."=";
   subtype HorizontalManeuverAI_Access_Array is org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.HorizontalManeuverAI_Access_Array;
   function "=" (Left, Right : HorizontalManeuverAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References."=";
   subtype HorizontalManeuverAI_Access_Array_Access is org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.HorizontalManeuverAI_Access_Array_Access;
   function "=" (Left, Right : HorizontalManeuverAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References."=";
   function Java_Box (Value : HorizontalManeuverAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.Java_Box;
   function Java_Unbox_HorizontalManeuverAI_Access_Array (Value : access Java_Object'Class) return HorizontalManeuverAI_Access_Array_Access renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.Java_Unbox_HorizontalManeuverAI_Access_Array;
   subtype HorizontalManeuverAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.HorizontalManeuverAI_Access_Array_Access_Array;
   function "=" (Left, Right : HorizontalManeuverAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References."=";
   subtype HorizontalManeuverAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.HorizontalManeuverAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HorizontalManeuverAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References."=";
   function Java_Box (Value : HorizontalManeuverAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.Java_Box;
   function Java_Unbox_HorizontalManeuverAI_Access_Array_Access_Array (Value : access Java_Object'Class) return HorizontalManeuverAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package_References.Java_Unbox_HorizontalManeuverAI_Access_Array_Access_Array;

   type HorizontalManeuverAI is new BasicAI with record
      currentRelativeAngle : Integer;
      currentSpeed : Integer;
   end record;

   procedure Initialize (This : in out HorizontalManeuverAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return HorizontalManeuverAI_Access;
   procedure processAI (This : in out HorizontalManeuverAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure reverse_Id (This : in out HorizontalManeuverAI);
   procedure accelerate (This : in out HorizontalManeuverAI);
   procedure drop (This : in out HorizontalManeuverAI);

end org.allbinary.game.ag.ai.tactical.HorizontalManeuverAI_Package;


