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

limited with org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package;
package org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References is
   type MiddleRelativeLayerRelationship_Access is access all org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package.MiddleRelativeLayerRelationship'Class;
   type MiddleRelativeLayerRelationship_Access_Array is array (Natural range <>) of MiddleRelativeLayerRelationship_Access;
   type MiddleRelativeLayerRelationship_Access_Array_Access is access all MiddleRelativeLayerRelationship_Access_Array;
   type MiddleRelativeLayerRelationship_Access_Array_Access_Array is array (Natural range <>) of MiddleRelativeLayerRelationship_Access_Array_Access;
   type MiddleRelativeLayerRelationship_Access_Array_Access_Array_Access is access all MiddleRelativeLayerRelationship_Access_Array_Access_Array;
end org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References;

with org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References;
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
with org.allbinary.layer.relationship.RelativeLayerRelationship_Package; use org.allbinary.layer.relationship.RelativeLayerRelationship_Package;

package org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype MiddleRelativeLayerRelationship_Access is org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References.MiddleRelativeLayerRelationship_Access;
   function "=" (Left, Right : MiddleRelativeLayerRelationship_Access) return Boolean renames org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References."=";
   subtype MiddleRelativeLayerRelationship_Access_Array is org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References.MiddleRelativeLayerRelationship_Access_Array;
   function "=" (Left, Right : MiddleRelativeLayerRelationship_Access_Array) return Boolean renames org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References."=";
   subtype MiddleRelativeLayerRelationship_Access_Array_Access is org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References.MiddleRelativeLayerRelationship_Access_Array_Access;
   function "=" (Left, Right : MiddleRelativeLayerRelationship_Access_Array_Access) return Boolean renames org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References."=";
   subtype MiddleRelativeLayerRelationship_Access_Array_Access_Array is org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References.MiddleRelativeLayerRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : MiddleRelativeLayerRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References."=";
   subtype MiddleRelativeLayerRelationship_Access_Array_Access_Array_Access is org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References.MiddleRelativeLayerRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MiddleRelativeLayerRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package_References."=";

   type MiddleRelativeLayerRelationship is new RelativeLayerRelationship with null record;

   procedure Initialize (This : in out MiddleRelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function Create (layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return MiddleRelativeLayerRelationship_Access;

end org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package;


