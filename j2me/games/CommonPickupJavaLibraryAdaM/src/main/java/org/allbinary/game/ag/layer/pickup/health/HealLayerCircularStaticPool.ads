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
limited with org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;
package org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References is
   type HealLayerCircularStaticPool_Access is access all org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package.HealLayerCircularStaticPool'Class;
   type HealLayerCircularStaticPool_Access_Array is array (Natural range <>) of HealLayerCircularStaticPool_Access;
   type HealLayerCircularStaticPool_Access_Array_Access is access all HealLayerCircularStaticPool_Access_Array;
   type HealLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of HealLayerCircularStaticPool_Access_Array_Access;
   type HealLayerCircularStaticPool_Access_Array_Access_Array_Access is access all HealLayerCircularStaticPool_Access_Array_Access_Array;
   type HealLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : HealLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in HealLayerCircularStaticPool_Access_Array_Object'Class then HealLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type HealLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then HealLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References;

with org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
limited with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References;

package org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package Reference_Types is
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
   subtype AllBinaryLayerFactoryInterface_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access;
   use type AllBinaryLayerFactoryInterface_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerFactoryInterface_Package_References.AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryLayerFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access;
   function "=" (Left, Right : HealLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References."=";
   subtype HealLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : HealLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References."=";
   subtype HealLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : HealLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : HealLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_HealLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return HealLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.Java_Unbox_HealLayerCircularStaticPool_Access_Array;
   subtype HealLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : HealLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References."=";
   subtype HealLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : HealLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_HealLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return HealLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.Java_Unbox_HealLayerCircularStaticPool_Access_Array_Access_Array;

   type HealLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out HealLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer);
   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return HealLayerCircularStaticPool_Access;
   procedure visit (This : in out HealLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;


