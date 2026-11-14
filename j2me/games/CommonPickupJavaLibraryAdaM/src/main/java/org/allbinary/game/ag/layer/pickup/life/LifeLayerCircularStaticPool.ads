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
limited with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;
package org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References is
   type LifeLayerCircularStaticPool_Access is access all org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package.LifeLayerCircularStaticPool'Class;
   type LifeLayerCircularStaticPool_Access_Array is array (Natural range <>) of LifeLayerCircularStaticPool_Access;
   type LifeLayerCircularStaticPool_Access_Array_Access is access all LifeLayerCircularStaticPool_Access_Array;
   type LifeLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of LifeLayerCircularStaticPool_Access_Array_Access;
   type LifeLayerCircularStaticPool_Access_Array_Access_Array_Access is access all LifeLayerCircularStaticPool_Access_Array_Access_Array;
   type LifeLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in LifeLayerCircularStaticPool_Access_Array_Object'Class then LifeLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type LifeLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LifeLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then LifeLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References;

with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References;
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

package org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package is

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


   subtype LifeLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : LifeLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_LifeLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return LifeLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.Java_Unbox_LifeLayerCircularStaticPool_Access_Array;
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifeLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : LifeLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_LifeLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return LifeLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.Java_Unbox_LifeLayerCircularStaticPool_Access_Array_Access_Array;

   type LifeLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out LifeLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer);
   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return LifeLayerCircularStaticPool_Access;
   procedure visit (This : in out LifeLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;


