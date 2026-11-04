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

limited with org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;
package org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References is
   type FeatureResourceAnimationInterfaceFactoryInterface_Access is access all org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package.FeatureResourceAnimationInterfaceFactoryInterface'Class;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array is array (Natural range <>) of FeatureResourceAnimationInterfaceFactoryInterface_Access;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access is access all FeatureResourceAnimationInterfaceFactoryInterface_Access_Array;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   type FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References;

with org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package; use org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with org.allbinary.game.resource.RectangleResourceFactoryInterface_Package; use org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.resource.ResourceAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package RectangleResourceFactoryInterface_Package renames Standard.org.allbinary.game.resource.RectangleResourceFactoryInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
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


   type FeatureResourceAnimationInterfaceFactoryInterface is interface and ResourceAnimationInterfaceFactoryInterface and RectangleResourceFactoryInterface and GameFeatureControlledInterface;
   subtype FeatureResourceAnimationInterfaceFactoryInterface_Access is org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References.FeatureResourceAnimationInterfaceFactoryInterface_Access;
   function "=" (Left, Right : FeatureResourceAnimationInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype FeatureResourceAnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References.FeatureResourceAnimationInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : FeatureResourceAnimationInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References.FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References.FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References."=";
   subtype FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References.FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FeatureResourceAnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_FeatureResourceAnimationInterfaceFactoryInterface (Value : FeatureResourceAnimationInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getHashtable (This : in out FeatureResourceAnimationInterfaceFactoryInterface) return ABHashtable_Access is abstract;

end org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface_Package;


