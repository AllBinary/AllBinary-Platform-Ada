-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
limited with org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package;
package org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References is
   type DecalAnimationInterfaceFactory_Access is access all org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package.DecalAnimationInterfaceFactory'Class;
   type DecalAnimationInterfaceFactory_Access_Array is array (Natural range <>) of DecalAnimationInterfaceFactory_Access;
   type DecalAnimationInterfaceFactory_Access_Array_Access is access all DecalAnimationInterfaceFactory_Access_Array;
   type DecalAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of DecalAnimationInterfaceFactory_Access_Array_Access;
   type DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all DecalAnimationInterfaceFactory_Access_Array_Access_Array;
   type DecalAnimationInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DecalAnimationInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : DecalAnimationInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DecalAnimationInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DecalAnimationInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DecalAnimationInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in DecalAnimationInterfaceFactory_Access_Array_Object'Class then DecalAnimationInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type DecalAnimationInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DecalAnimationInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DecalAnimationInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DecalAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class then DecalAnimationInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References;

with org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.resources.BasicGameResources_Package;
with org.allbinary.game.layer.resources.BasicGameResources_Package_References;
limited with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype BasicGameResources_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access;
   use type BasicGameResources_Access;
   subtype BasicGameResources_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array;
   use type BasicGameResources_Access_Array;
   subtype BasicGameResources_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access;
   use type BasicGameResources_Access_Array_Access;
   subtype BasicGameResources_Access_Array_Access_Array is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array;
   use type BasicGameResources_Access_Array_Access_Array;
   subtype BasicGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.resources.BasicGameResources_Package_References.BasicGameResources_Access_Array_Access_Array_Access;
   use type BasicGameResources_Access_Array_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access;
   use type AnimationInterfaceFactoryInterface_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceFactoryInterface_Package_References.AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type AnimationInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DecalAnimationInterfaceFactory_Access is org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.DecalAnimationInterfaceFactory_Access;
   function "=" (Left, Right : DecalAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References."=";
   subtype DecalAnimationInterfaceFactory_Access_Array is org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.DecalAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : DecalAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References."=";
   subtype DecalAnimationInterfaceFactory_Access_Array_Access is org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.DecalAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : DecalAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : DecalAnimationInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_DecalAnimationInterfaceFactory_Access_Array (Value : access Java_Object'Class) return DecalAnimationInterfaceFactory_Access_Array_Access renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.Java_Unbox_DecalAnimationInterfaceFactory_Access_Array;
   subtype DecalAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.DecalAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DecalAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References."=";
   subtype DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References."=";
   function Java_Box (Value : DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_DecalAnimationInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package_References.Java_Unbox_DecalAnimationInterfaceFactory_Access_Array_Access_Array;

   type DecalAnimationInterfaceFactory is new Java_Object with null record;
   instance : DecalAnimationInterfaceFactory_Access;

   procedure Initialize (This : in out DecalAnimationInterfaceFactory'Class);
   function Create return DecalAnimationInterfaceFactory_Access;
   function getInstance return DecalAnimationInterfaceFactory_Access;
   function getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AnimationInterfaceFactoryInterface_Access;
   procedure getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package;


