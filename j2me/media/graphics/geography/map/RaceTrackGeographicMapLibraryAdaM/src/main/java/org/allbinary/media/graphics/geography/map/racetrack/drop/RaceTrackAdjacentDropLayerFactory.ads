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
limited with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References is
   type RaceTrackAdjacentDropLayerFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package.RaceTrackAdjacentDropLayerFactory'Class;
   type RaceTrackAdjacentDropLayerFactory_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropLayerFactory_Access;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access is access all RaceTrackAdjacentDropLayerFactory_Access_Array;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropLayerFactory_Access_Array_Access;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access is access all RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array;
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackAdjacentDropLayerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackAdjacentDropLayerFactory_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackAdjacentDropLayerFactory_Access_Array_Object'Class then RaceTrackAdjacentDropLayerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Object'Class then RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
limited with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype LayerInterfaceFactoryInterface_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access;
   use type LayerInterfaceFactoryInterface_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackAdjacentDropLayerFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.RaceTrackAdjacentDropLayerFactory_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropLayerFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References."=";
   subtype RaceTrackAdjacentDropLayerFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.RaceTrackAdjacentDropLayerFactory_Access_Array;
   function "=" (Left, Right : RaceTrackAdjacentDropLayerFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References."=";
   subtype RaceTrackAdjacentDropLayerFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.RaceTrackAdjacentDropLayerFactory_Access_Array_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References."=";
   function Java_Box (Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array (Value : access Java_Object'Class) return RaceTrackAdjacentDropLayerFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array;
   subtype RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References."=";
   subtype RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References."=";
   function Java_Box (Value : RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package_References.Java_Unbox_RaceTrackAdjacentDropLayerFactory_Access_Array_Access_Array;

   type RaceTrackAdjacentDropLayerFactory is new Java_Object with record
      list : BasicArrayList_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;
   DROP_LAYER_FACTORY : RaceTrackAdjacentDropLayerFactory_Access;

   procedure Initialize (This : in out RaceTrackAdjacentDropLayerFactory'Class);
   function Create return RaceTrackAdjacentDropLayerFactory_Access;
   procedure clear (This : in out RaceTrackAdjacentDropLayerFactory);
   function getInstance return RaceTrackAdjacentDropLayerFactory_Access;
   function getSize (This : in out RaceTrackAdjacentDropLayerFactory) return Integer;
   function getRandomInstance (This : in out RaceTrackAdjacentDropLayerFactory) return LayerInterfaceFactoryInterface_Access;
   procedure add (This : in out RaceTrackAdjacentDropLayerFactory; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;


