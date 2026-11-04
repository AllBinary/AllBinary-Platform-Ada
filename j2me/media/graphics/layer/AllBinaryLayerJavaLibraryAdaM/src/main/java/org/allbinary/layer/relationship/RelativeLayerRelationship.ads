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

limited with org.allbinary.layer.relationship.RelativeLayerRelationship_Package;
package org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References is
   type RelativeLayerRelationship_Access is access all org.allbinary.layer.relationship.RelativeLayerRelationship_Package.RelativeLayerRelationship'Class;
   type RelativeLayerRelationship_Access_Array is array (Natural range <>) of RelativeLayerRelationship_Access;
   type RelativeLayerRelationship_Access_Array_Access is access all RelativeLayerRelationship_Access_Array;
   type RelativeLayerRelationship_Access_Array_Access_Array is array (Natural range <>) of RelativeLayerRelationship_Access_Array_Access;
   type RelativeLayerRelationship_Access_Array_Access_Array_Access is access all RelativeLayerRelationship_Access_Array_Access_Array;
end org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References;

with org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References;
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
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.layer.relationship.RelativeLayerRelationship_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype RelativeLayerRelationship_Access is org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References.RelativeLayerRelationship_Access;
   function "=" (Left, Right : RelativeLayerRelationship_Access) return Boolean renames org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References."=";
   subtype RelativeLayerRelationship_Access_Array is org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References.RelativeLayerRelationship_Access_Array;
   function "=" (Left, Right : RelativeLayerRelationship_Access_Array) return Boolean renames org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References."=";
   subtype RelativeLayerRelationship_Access_Array_Access is org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References.RelativeLayerRelationship_Access_Array_Access;
   function "=" (Left, Right : RelativeLayerRelationship_Access_Array_Access) return Boolean renames org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References."=";
   subtype RelativeLayerRelationship_Access_Array_Access_Array is org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References.RelativeLayerRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : RelativeLayerRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References."=";
   subtype RelativeLayerRelationship_Access_Array_Access_Array_Access is org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References.RelativeLayerRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RelativeLayerRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.relationship.RelativeLayerRelationship_Package_References."=";

   type RelativeLayerRelationship is new RelativeRelationship with record
      layer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out RelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; point_Param : access GPoint_Package.GPoint'Class; typesAllowedList_Param : access BasicArrayList_Package.BasicArrayList'Class) return RelativeLayerRelationship_Access;
   function getX (This : in out RelativeLayerRelationship) return Integer;
   function getY (This : in out RelativeLayerRelationship) return Integer;
   function getZ (This : in out RelativeLayerRelationship) return Integer;

end org.allbinary.layer.relationship.RelativeLayerRelationship_Package;


