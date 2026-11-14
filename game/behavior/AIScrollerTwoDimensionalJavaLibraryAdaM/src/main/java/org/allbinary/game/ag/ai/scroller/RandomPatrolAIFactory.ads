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
limited with org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package;
package org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References is
   type RandomPatrolAIFactory_Access is access all org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package.RandomPatrolAIFactory'Class;
   type RandomPatrolAIFactory_Access_Array is array (Natural range <>) of RandomPatrolAIFactory_Access;
   type RandomPatrolAIFactory_Access_Array_Access is access all RandomPatrolAIFactory_Access_Array;
   type RandomPatrolAIFactory_Access_Array_Access_Array is array (Natural range <>) of RandomPatrolAIFactory_Access_Array_Access;
   type RandomPatrolAIFactory_Access_Array_Access_Array_Access is access all RandomPatrolAIFactory_Access_Array_Access_Array;
   type RandomPatrolAIFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RandomPatrolAIFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RandomPatrolAIFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RandomPatrolAIFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RandomPatrolAIFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RandomPatrolAIFactory_Access_Array_Access is (if Value /= null and then Value.all in RandomPatrolAIFactory_Access_Array_Object'Class then RandomPatrolAIFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RandomPatrolAIFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RandomPatrolAIFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RandomPatrolAIFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RandomPatrolAIFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RandomPatrolAIFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RandomPatrolAIFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RandomPatrolAIFactory_Access_Array_Access_Array_Object'Class then RandomPatrolAIFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References;

with org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.ai.ArtificialIntelligenceInterface_Package;
with org.allbinary.ai.ArtificialIntelligenceInterface_Package_References;
with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package; use org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
   package ArtificialIntelligenceInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype ArtificialIntelligenceInterface_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access;
   use type ArtificialIntelligenceInterface_Access;
   subtype ArtificialIntelligenceInterface_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array;
   subtype ArtificialIntelligenceInterface_Access_Array_Access_Array_Access is org.allbinary.ai.ArtificialIntelligenceInterface_Package_References.ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
   use type ArtificialIntelligenceInterface_Access_Array_Access_Array_Access;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RandomPatrolAIFactory_Access is org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.RandomPatrolAIFactory_Access;
   function "=" (Left, Right : RandomPatrolAIFactory_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References."=";
   subtype RandomPatrolAIFactory_Access_Array is org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.RandomPatrolAIFactory_Access_Array;
   function "=" (Left, Right : RandomPatrolAIFactory_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References."=";
   subtype RandomPatrolAIFactory_Access_Array_Access is org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.RandomPatrolAIFactory_Access_Array_Access;
   function "=" (Left, Right : RandomPatrolAIFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References."=";
   function Java_Box (Value : RandomPatrolAIFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.Java_Box;
   function Java_Unbox_RandomPatrolAIFactory_Access_Array (Value : access Java_Object'Class) return RandomPatrolAIFactory_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.Java_Unbox_RandomPatrolAIFactory_Access_Array;
   subtype RandomPatrolAIFactory_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.RandomPatrolAIFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RandomPatrolAIFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References."=";
   subtype RandomPatrolAIFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.RandomPatrolAIFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RandomPatrolAIFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References."=";
   function Java_Box (Value : RandomPatrolAIFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.Java_Box;
   function Java_Unbox_RandomPatrolAIFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RandomPatrolAIFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package_References.Java_Unbox_RandomPatrolAIFactory_Access_Array_Access_Array;

   type RandomPatrolAIFactory is new Java_Object and ArtificialIntelligenceInterfaceFactoryInterface with null record;

   procedure Initialize (This : in out RandomPatrolAIFactory'Class);
   function Create return RandomPatrolAIFactory_Access;
   function getInstance (This : in out RandomPatrolAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access;
   procedure getInstance (This : in out RandomPatrolAIFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);

end org.allbinary.game.ag.ai.scroller.RandomPatrolAIFactory_Package;


