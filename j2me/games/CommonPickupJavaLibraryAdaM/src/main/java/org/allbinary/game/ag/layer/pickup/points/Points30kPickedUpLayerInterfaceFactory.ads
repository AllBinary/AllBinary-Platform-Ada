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
limited with org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References is
   type Points30kPickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package.Points30kPickedUpLayerInterfaceFactory'Class;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of Points30kPickedUpLayerInterfaceFactory_Access;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access is access all Points30kPickedUpLayerInterfaceFactory_Access_Array;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of Points30kPickedUpLayerInterfaceFactory_Access_Array_Access;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Points30kPickedUpLayerInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Points30kPickedUpLayerInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in Points30kPickedUpLayerInterfaceFactory_Access_Array_Object'Class then Points30kPickedUpLayerInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class then Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References;

package org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package is

   package PickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupProcessorInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   subtype PointsLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access;
   use type PointsLayerCircularStaticPool_Access;
   subtype PointsLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array;
   use type PointsLayerCircularStaticPool_Access_Array;
   subtype PointsLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access;
   use type PointsLayerCircularStaticPool_Access_Array_Access;
   subtype PointsLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access_Array;
   use type PointsLayerCircularStaticPool_Access_Array_Access_Array;
   subtype PointsLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package_References.PointsLayerCircularStaticPool_Access_Array_Access_Array_Access;
   use type PointsLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Points30kPickedUpLayerInterfaceFactory_Access is org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Points30kPickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : Points30kPickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References."=";
   subtype Points30kPickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Points30kPickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : Points30kPickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References."=";
   subtype Points30kPickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Points30kPickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array (Value : access Java_Object'Class) return Points30kPickedUpLayerInterfaceFactory_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array;
   subtype Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References."=";
   subtype Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package_References.Java_Unbox_Points30kPickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type Points30kPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and PickupProcessorInterface with record
      pool : PointsLayerCircularStaticPool_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out Points30kPickedUpLayerInterfaceFactory'Class);
   function Create return Points30kPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getTotal (This : in out Points30kPickedUpLayerInterfaceFactory) return Integer;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure process (This : in out Points30kPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.points.Points30kPickedUpLayerInterfaceFactory_Package;


