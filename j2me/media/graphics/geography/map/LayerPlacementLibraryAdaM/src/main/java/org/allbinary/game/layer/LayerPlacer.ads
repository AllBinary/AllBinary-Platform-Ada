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
limited with org.allbinary.game.layer.LayerPlacer_Package;
package org.allbinary.game.layer.LayerPlacer_Package_References is
   type LayerPlacer_Access is access all org.allbinary.game.layer.LayerPlacer_Package.LayerPlacer'Class;
   type LayerPlacer_Access_Array is array (Natural range <>) of LayerPlacer_Access;
   type LayerPlacer_Access_Array_Access is access all LayerPlacer_Access_Array;
   type LayerPlacer_Access_Array_Access_Array is array (Natural range <>) of LayerPlacer_Access_Array_Access;
   type LayerPlacer_Access_Array_Access_Array_Access is access all LayerPlacer_Access_Array_Access_Array;
   type LayerPlacer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerPlacer_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerPlacer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerPlacer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerPlacer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerPlacer_Access_Array_Access is (if Value /= null and then Value.all in LayerPlacer_Access_Array_Object'Class then LayerPlacer_Access_Array_Object'Class (Value.all).Value else null);
   type LayerPlacer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LayerPlacer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LayerPlacer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LayerPlacer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LayerPlacer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LayerPlacer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LayerPlacer_Access_Array_Access_Array_Object'Class then LayerPlacer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.LayerPlacer_Package_References;

with org.allbinary.game.layer.LayerPlacer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.layer.LayerInterfaceVisitor_Package;
with org.allbinary.layer.LayerInterfaceVisitor_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
limited with org.allbinary.game.layer.LayerPlacementInterface_Package;
with org.allbinary.game.layer.LayerPlacementInterface_Package_References;

package org.allbinary.game.layer.LayerPlacer_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package LayerInterfaceVisitor_Package renames Standard.org.allbinary.layer.LayerInterfaceVisitor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype LayerInterfaceVisitor_Access is org.allbinary.layer.LayerInterfaceVisitor_Package_References.LayerInterfaceVisitor_Access;
   use type LayerInterfaceVisitor_Access;
   subtype LayerInterfaceVisitor_Access_Array is org.allbinary.layer.LayerInterfaceVisitor_Package_References.LayerInterfaceVisitor_Access_Array;
   use type LayerInterfaceVisitor_Access_Array;
   subtype LayerInterfaceVisitor_Access_Array_Access is org.allbinary.layer.LayerInterfaceVisitor_Package_References.LayerInterfaceVisitor_Access_Array_Access;
   use type LayerInterfaceVisitor_Access_Array_Access;
   subtype LayerInterfaceVisitor_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceVisitor_Package_References.LayerInterfaceVisitor_Access_Array_Access_Array;
   use type LayerInterfaceVisitor_Access_Array_Access_Array;
   subtype LayerInterfaceVisitor_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceVisitor_Package_References.LayerInterfaceVisitor_Access_Array_Access_Array_Access;
   use type LayerInterfaceVisitor_Access_Array_Access_Array_Access;
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
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   use type EnumerationUtil_Access;
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   use type EnumerationUtil_Access_Array;
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access;
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   use type EnumerationUtil_Access_Array_Access_Array;
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   use type EnumerationUtil_Access_Array_Access_Array_Access;
   subtype LayerPlacementInterface_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access;
   use type LayerPlacementInterface_Access;
   subtype LayerPlacementInterface_Access_Array is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array;
   use type LayerPlacementInterface_Access_Array;
   subtype LayerPlacementInterface_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access;
   use type LayerPlacementInterface_Access_Array_Access;
   subtype LayerPlacementInterface_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access_Array;
   use type LayerPlacementInterface_Access_Array_Access_Array;
   subtype LayerPlacementInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementInterface_Package_References.LayerPlacementInterface_Access_Array_Access_Array_Access;
   use type LayerPlacementInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerPlacer_Access is org.allbinary.game.layer.LayerPlacer_Package_References.LayerPlacer_Access;
   function "=" (Left, Right : LayerPlacer_Access) return Boolean renames org.allbinary.game.layer.LayerPlacer_Package_References."=";
   subtype LayerPlacer_Access_Array is org.allbinary.game.layer.LayerPlacer_Package_References.LayerPlacer_Access_Array;
   function "=" (Left, Right : LayerPlacer_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacer_Package_References."=";
   subtype LayerPlacer_Access_Array_Access is org.allbinary.game.layer.LayerPlacer_Package_References.LayerPlacer_Access_Array_Access;
   function "=" (Left, Right : LayerPlacer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacer_Package_References."=";
   function Java_Box (Value : LayerPlacer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.LayerPlacer_Package_References.Java_Box;
   function Java_Unbox_LayerPlacer_Access_Array (Value : access Java_Object'Class) return LayerPlacer_Access_Array_Access renames org.allbinary.game.layer.LayerPlacer_Package_References.Java_Unbox_LayerPlacer_Access_Array;
   subtype LayerPlacer_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacer_Package_References.LayerPlacer_Access_Array_Access_Array;
   function "=" (Left, Right : LayerPlacer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LayerPlacer_Package_References."=";
   subtype LayerPlacer_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacer_Package_References.LayerPlacer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerPlacer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LayerPlacer_Package_References."=";
   function Java_Box (Value : LayerPlacer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.LayerPlacer_Package_References.Java_Box;
   function Java_Unbox_LayerPlacer_Access_Array_Access_Array (Value : access Java_Object'Class) return LayerPlacer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.LayerPlacer_Package_References.Java_Unbox_LayerPlacer_Access_Array_Access_Array;

   type LayerPlacer is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
      layerInterfaceVisitor : LayerInterfaceVisitor_Access;
      dimension : GPoint_Access;
   end record;

   procedure Initialize (This : in out LayerPlacer'Class; layerInterfaceVisitor_Param : access LayerInterfaceVisitor_Package.LayerInterfaceVisitor'Class; dimension_Param : access GPoint_Package.GPoint'Class);
   function Create (layerInterfaceVisitor_Param : access LayerInterfaceVisitor_Package.LayerInterfaceVisitor'Class; dimension_Param : access GPoint_Package.GPoint'Class) return LayerPlacer_Access;
   procedure processList (This : in out LayerPlacer; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure process (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class);
   function getPoint (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class) return GPoint_Access;
   procedure getPoint (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class);

end org.allbinary.game.layer.LayerPlacer_Package;


