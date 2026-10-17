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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.layer.relationship.RelativeLayerRelationship_Package is

   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package RelativeRelationship_Package renames org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type RelativeLayerRelationship is tagged;
   type RelativeLayerRelationship_Access is access all RelativeLayerRelationship'Class;
   type RelativeLayerRelationship_Access_Array is array (Natural range <>) of RelativeLayerRelationship_Access;
   type RelativeLayerRelationship_Access_Array_Access is access all RelativeLayerRelationship_Access_Array;

   type RelativeLayerRelationship is new RelativeRelationship with record
      layer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out RelativeLayerRelationship'Class; layer : AllBinaryLayer_Access; point : GPoint_Access; typesAllowedList : BasicArrayList_Access);
   function Create (layer : AllBinaryLayer_Access; point : GPoint_Access; typesAllowedList : BasicArrayList_Access) return RelativeLayerRelationship_Access;
   function getX (This : in out RelativeLayerRelationship) return Integer;
   procedure getX (This : in out RelativeLayerRelationship);
   function getY (This : in out RelativeLayerRelationship) return Integer;
   procedure getY (This : in out RelativeLayerRelationship);
   function getZ (This : in out RelativeLayerRelationship) return Integer;
   procedure getZ (This : in out RelativeLayerRelationship);

end org.allbinary.layer.relationship.RelativeLayerRelationship_Package;


