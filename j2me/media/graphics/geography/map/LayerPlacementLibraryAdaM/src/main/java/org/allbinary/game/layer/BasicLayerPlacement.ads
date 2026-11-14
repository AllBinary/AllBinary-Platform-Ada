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
limited with org.allbinary.game.layer.BasicLayerPlacement_Package;
package org.allbinary.game.layer.BasicLayerPlacement_Package_References is
   type BasicLayerPlacement_Access is access all org.allbinary.game.layer.BasicLayerPlacement_Package.BasicLayerPlacement'Class;
   type BasicLayerPlacement_Access_Array is array (Natural range <>) of BasicLayerPlacement_Access;
   type BasicLayerPlacement_Access_Array_Access is access all BasicLayerPlacement_Access_Array;
   type BasicLayerPlacement_Access_Array_Access_Array is array (Natural range <>) of BasicLayerPlacement_Access_Array_Access;
   type BasicLayerPlacement_Access_Array_Access_Array_Access is access all BasicLayerPlacement_Access_Array_Access_Array;
   type BasicLayerPlacement_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicLayerPlacement_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicLayerPlacement_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicLayerPlacement_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicLayerPlacement_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicLayerPlacement_Access_Array_Access is (if Value /= null and then Value.all in BasicLayerPlacement_Access_Array_Object'Class then BasicLayerPlacement_Access_Array_Object'Class (Value.all).Value else null);
   type BasicLayerPlacement_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicLayerPlacement_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicLayerPlacement_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicLayerPlacement_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicLayerPlacement_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicLayerPlacement_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicLayerPlacement_Access_Array_Access_Array_Object'Class then BasicLayerPlacement_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.BasicLayerPlacement_Package_References;

with org.allbinary.game.layer.BasicLayerPlacement_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.LayerPlacementType_Package;
with org.allbinary.game.layer.LayerPlacementType_Package_References;

package org.allbinary.game.layer.BasicLayerPlacement_Package is

   package Reference_Types is
   subtype LayerPlacementType_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access;
   use type LayerPlacementType_Access;
   subtype LayerPlacementType_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array;
   use type LayerPlacementType_Access_Array;
   subtype LayerPlacementType_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access;
   subtype LayerPlacementType_Access_Array_Access_Array is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array;
   use type LayerPlacementType_Access_Array_Access_Array;
   subtype LayerPlacementType_Access_Array_Access_Array_Access is org.allbinary.game.layer.LayerPlacementType_Package_References.LayerPlacementType_Access_Array_Access_Array_Access;
   use type LayerPlacementType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicLayerPlacement_Access is org.allbinary.game.layer.BasicLayerPlacement_Package_References.BasicLayerPlacement_Access;
   function "=" (Left, Right : BasicLayerPlacement_Access) return Boolean renames org.allbinary.game.layer.BasicLayerPlacement_Package_References."=";
   subtype BasicLayerPlacement_Access_Array is org.allbinary.game.layer.BasicLayerPlacement_Package_References.BasicLayerPlacement_Access_Array;
   function "=" (Left, Right : BasicLayerPlacement_Access_Array) return Boolean renames org.allbinary.game.layer.BasicLayerPlacement_Package_References."=";
   subtype BasicLayerPlacement_Access_Array_Access is org.allbinary.game.layer.BasicLayerPlacement_Package_References.BasicLayerPlacement_Access_Array_Access;
   function "=" (Left, Right : BasicLayerPlacement_Access_Array_Access) return Boolean renames org.allbinary.game.layer.BasicLayerPlacement_Package_References."=";
   function Java_Box (Value : BasicLayerPlacement_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.BasicLayerPlacement_Package_References.Java_Box;
   function Java_Unbox_BasicLayerPlacement_Access_Array (Value : access Java_Object'Class) return BasicLayerPlacement_Access_Array_Access renames org.allbinary.game.layer.BasicLayerPlacement_Package_References.Java_Unbox_BasicLayerPlacement_Access_Array;
   subtype BasicLayerPlacement_Access_Array_Access_Array is org.allbinary.game.layer.BasicLayerPlacement_Package_References.BasicLayerPlacement_Access_Array_Access_Array;
   function "=" (Left, Right : BasicLayerPlacement_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.BasicLayerPlacement_Package_References."=";
   subtype BasicLayerPlacement_Access_Array_Access_Array_Access is org.allbinary.game.layer.BasicLayerPlacement_Package_References.BasicLayerPlacement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicLayerPlacement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.BasicLayerPlacement_Package_References."=";
   function Java_Box (Value : BasicLayerPlacement_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.BasicLayerPlacement_Package_References.Java_Box;
   function Java_Unbox_BasicLayerPlacement_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicLayerPlacement_Access_Array_Access_Array_Access renames org.allbinary.game.layer.BasicLayerPlacement_Package_References.Java_Unbox_BasicLayerPlacement_Access_Array_Access_Array;

   type BasicLayerPlacement is new Java_Object with record
      layerType : LayerPlacementType_Access;
      width : Integer;
      height : Integer;
   end record;

   procedure Initialize (This : in out BasicLayerPlacement'Class; layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class; width : Integer; height : Integer);
   function Create (layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class; width : Integer; height : Integer) return BasicLayerPlacement_Access;
   function getWidth (This : in out BasicLayerPlacement) return Integer;
   function getHeight (This : in out BasicLayerPlacement) return Integer;
   function getLayerType (This : in out BasicLayerPlacement) return LayerPlacementType_Access;
   procedure setLayerType (This : in out BasicLayerPlacement; layerType_Param : access LayerPlacementType_Package.LayerPlacementType'Class);

end org.allbinary.game.layer.BasicLayerPlacement_Package;


