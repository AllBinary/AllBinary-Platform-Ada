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

limited with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;
package org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References is
   type ArtificialIntelligenceInterfaceFactoryInterface_Access is access all org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package.ArtificialIntelligenceInterfaceFactoryInterface'Class;
   type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterfaceFactoryInterface_Access;
   type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access is access all ArtificialIntelligenceInterfaceFactoryInterface_Access_Array;
   type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access;
   type ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References;

with org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References;
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
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package is

   package ArtificialIntelligenceInterface_Package renames Standard.org.allbinary.ai.ArtificialIntelligenceInterface_Package;
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


   type ArtificialIntelligenceInterfaceFactoryInterface is interface;
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   subtype ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References.ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArtificialIntelligenceInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_ArtificialIntelligenceInterfaceFactoryInterface (Value : ArtificialIntelligenceInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out ArtificialIntelligenceInterfaceFactoryInterface; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ArtificialIntelligenceInterface_Access is abstract;
   procedure getInstance (This : in out ArtificialIntelligenceInterfaceFactoryInterface; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is abstract;

end org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface_Package;


