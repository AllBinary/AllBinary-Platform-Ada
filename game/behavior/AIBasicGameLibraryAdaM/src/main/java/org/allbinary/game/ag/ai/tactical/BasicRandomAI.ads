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
limited with org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package;
package org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References is
   type BasicRandomAI_Access is access all org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package.BasicRandomAI'Class;
   type BasicRandomAI_Access_Array is array (Natural range <>) of BasicRandomAI_Access;
   type BasicRandomAI_Access_Array_Access is access all BasicRandomAI_Access_Array;
   type BasicRandomAI_Access_Array_Access_Array is array (Natural range <>) of BasicRandomAI_Access_Array_Access;
   type BasicRandomAI_Access_Array_Access_Array_Access is access all BasicRandomAI_Access_Array_Access_Array;
   type BasicRandomAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicRandomAI_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicRandomAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicRandomAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicRandomAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicRandomAI_Access_Array_Access is (if Value /= null and then Value.all in BasicRandomAI_Access_Array_Object'Class then BasicRandomAI_Access_Array_Object'Class (Value.all).Value else null);
   type BasicRandomAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicRandomAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicRandomAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicRandomAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicRandomAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicRandomAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicRandomAI_Access_Array_Access_Array_Object'Class then BasicRandomAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References;

with org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.ag.ai.InputProbability_Package;
with org.allbinary.game.ag.ai.InputProbability_Package_References;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;

package org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package InputProbability_Package renames Standard.org.allbinary.game.ag.ai.InputProbability_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package Reference_Types is
   subtype InputProbability_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access;
   use type InputProbability_Access;
   subtype InputProbability_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array;
   use type InputProbability_Access_Array;
   subtype InputProbability_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access;
   use type InputProbability_Access_Array_Access;
   subtype InputProbability_Access_Array_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array;
   use type InputProbability_Access_Array_Access_Array;
   subtype InputProbability_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array_Access;
   use type InputProbability_Access_Array_Access_Array_Access;
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
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
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
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicRandomAI_Access is org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.BasicRandomAI_Access;
   function "=" (Left, Right : BasicRandomAI_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References."=";
   subtype BasicRandomAI_Access_Array is org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.BasicRandomAI_Access_Array;
   function "=" (Left, Right : BasicRandomAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References."=";
   subtype BasicRandomAI_Access_Array_Access is org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.BasicRandomAI_Access_Array_Access;
   function "=" (Left, Right : BasicRandomAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References."=";
   function Java_Box (Value : BasicRandomAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.Java_Box;
   function Java_Unbox_BasicRandomAI_Access_Array (Value : access Java_Object'Class) return BasicRandomAI_Access_Array_Access renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.Java_Unbox_BasicRandomAI_Access_Array;
   subtype BasicRandomAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.BasicRandomAI_Access_Array_Access_Array;
   function "=" (Left, Right : BasicRandomAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References."=";
   subtype BasicRandomAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.BasicRandomAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicRandomAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References."=";
   function Java_Box (Value : BasicRandomAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.Java_Box;
   function Java_Unbox_BasicRandomAI_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicRandomAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package_References.Java_Unbox_BasicRandomAI_Access_Array_Access_Array;

   type BasicRandomAI is new BasicAI with record
      i_random : Integer;
      inputProbability : InputProbability_Access;
      visitor : Visitor_Access;
      keyArray : Integer_Array_Access;
      myRandomFactory : MyRandomFactory_Access;
   end record;

   procedure Initialize (This : in out BasicRandomAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; inputProbability_Param : access InputProbability_Package.InputProbability'Class; visitor_Param : access Visitor_Package.Visitor'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; inputProbability_Param : access InputProbability_Package.InputProbability'Class; visitor_Param : access Visitor_Package.Visitor'Class) return BasicRandomAI_Access;
   procedure processAI (This : in out BasicRandomAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package;


