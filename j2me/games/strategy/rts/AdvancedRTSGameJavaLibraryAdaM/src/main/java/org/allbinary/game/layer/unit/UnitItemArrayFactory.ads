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
limited with org.allbinary.game.layer.unit.UnitItemArrayFactory_Package;
package org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References is
   type UnitItemArrayFactory_Access is access all org.allbinary.game.layer.unit.UnitItemArrayFactory_Package.UnitItemArrayFactory'Class;
   type UnitItemArrayFactory_Access_Array is array (Natural range <>) of UnitItemArrayFactory_Access;
   type UnitItemArrayFactory_Access_Array_Access is access all UnitItemArrayFactory_Access_Array;
   type UnitItemArrayFactory_Access_Array_Access_Array is array (Natural range <>) of UnitItemArrayFactory_Access_Array_Access;
   type UnitItemArrayFactory_Access_Array_Access_Array_Access is access all UnitItemArrayFactory_Access_Array_Access_Array;
   type UnitItemArrayFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitItemArrayFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitItemArrayFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitItemArrayFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitItemArrayFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitItemArrayFactory_Access_Array_Access is (if Value /= null and then Value.all in UnitItemArrayFactory_Access_Array_Object'Class then UnitItemArrayFactory_Access_Array_Object'Class (Value.all).Value else null);
   type UnitItemArrayFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UnitItemArrayFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UnitItemArrayFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UnitItemArrayFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UnitItemArrayFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UnitItemArrayFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UnitItemArrayFactory_Access_Array_Access_Array_Object'Class then UnitItemArrayFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References;

with org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References;
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
limited with org.allbinary.game.layer.waypoint.FlagGameResources_Package;
with org.allbinary.game.layer.waypoint.FlagGameResources_Package_References;
limited with org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package; use org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
limited with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;

package org.allbinary.game.layer.unit.UnitItemArrayFactory_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package FlagGameResources_Package renames Standard.org.allbinary.game.layer.waypoint.FlagGameResources_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ItemArraySingletonFactoryInterface_Package renames Standard.org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
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
   subtype FlagGameResources_Access is org.allbinary.game.layer.waypoint.FlagGameResources_Package_References.FlagGameResources_Access;
   use type FlagGameResources_Access;
   subtype FlagGameResources_Access_Array is org.allbinary.game.layer.waypoint.FlagGameResources_Package_References.FlagGameResources_Access_Array;
   use type FlagGameResources_Access_Array;
   subtype FlagGameResources_Access_Array_Access is org.allbinary.game.layer.waypoint.FlagGameResources_Package_References.FlagGameResources_Access_Array_Access;
   use type FlagGameResources_Access_Array_Access;
   subtype FlagGameResources_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.FlagGameResources_Package_References.FlagGameResources_Access_Array_Access_Array;
   use type FlagGameResources_Access_Array_Access_Array;
   subtype FlagGameResources_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.FlagGameResources_Package_References.FlagGameResources_Access_Array_Access_Array_Access;
   use type FlagGameResources_Access_Array_Access_Array_Access;
   subtype ABCustomItem_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access;
   use type ABCustomItem_Access;
   subtype ABCustomItem_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array;
   use type ABCustomItem_Access_Array;
   subtype ABCustomItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access;
   subtype ABCustomItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array;
   use type ABCustomItem_Access_Array_Access_Array;
   subtype ABCustomItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomItem_Package_References.ABCustomItem_Access_Array_Access_Array_Access;
   use type ABCustomItem_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
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


   subtype UnitItemArrayFactory_Access is org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.UnitItemArrayFactory_Access;
   function "=" (Left, Right : UnitItemArrayFactory_Access) return Boolean renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References."=";
   subtype UnitItemArrayFactory_Access_Array is org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.UnitItemArrayFactory_Access_Array;
   function "=" (Left, Right : UnitItemArrayFactory_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References."=";
   subtype UnitItemArrayFactory_Access_Array_Access is org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.UnitItemArrayFactory_Access_Array_Access;
   function "=" (Left, Right : UnitItemArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References."=";
   function Java_Box (Value : UnitItemArrayFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.Java_Box;
   function Java_Unbox_UnitItemArrayFactory_Access_Array (Value : access Java_Object'Class) return UnitItemArrayFactory_Access_Array_Access renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.Java_Unbox_UnitItemArrayFactory_Access_Array;
   subtype UnitItemArrayFactory_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.UnitItemArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : UnitItemArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References."=";
   subtype UnitItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.UnitItemArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UnitItemArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References."=";
   function Java_Box (Value : UnitItemArrayFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.Java_Box;
   function Java_Unbox_UnitItemArrayFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return UnitItemArrayFactory_Access_Array_Access_Array_Access renames org.allbinary.game.layer.unit.UnitItemArrayFactory_Package_References.Java_Unbox_UnitItemArrayFactory_Access_Array_Access_Array;

   type UnitItemArrayFactory is new Java_Object and ItemArraySingletonFactoryInterface with record
      commonSeps : CommonSeps_Access;
      basicColor : BasicColor_Access;
      resources : BasicGameResources_Access_Array_Access;
   end record;
   ITEMS : ABCustomItem_Access_Array_Access;

   procedure Initialize (This : in out UnitItemArrayFactory'Class; resources : BasicGameResources_Access_Array_Access);
   function Create (resources : BasicGameResources_Access_Array_Access) return UnitItemArrayFactory_Access;
   function createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access;
   procedure createFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);
   function createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class) return ABCustomItem_Access;
   procedure createNamedFlagItem (This : in out UnitItemArrayFactory; flagResources_Param : access FlagGameResources_Package.FlagGameResources'Class; name : Unbounded_String; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);
   function getItems (This : in out UnitItemArrayFactory) return ABCustomItem_Access_Array_Access;
   function getResources (This : in out UnitItemArrayFactory) return BasicGameResources_Access_Array_Access;
   function indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class) return Integer;
   procedure indexOf (This : in out UnitItemArrayFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class);

end org.allbinary.game.layer.unit.UnitItemArrayFactory_Package;


