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
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.layer.relationship.RelativeLayerRelationship_Package; use org.allbinary.layer.relationship.RelativeLayerRelationship_Package;

package org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type MiddleRelativeLayerRelationship is tagged;
   type MiddleRelativeLayerRelationship_Access is access all MiddleRelativeLayerRelationship'Class;
   type MiddleRelativeLayerRelationship_Access_Array is array (Natural range <>) of MiddleRelativeLayerRelationship_Access;
   type MiddleRelativeLayerRelationship_Access_Array_Access is access all MiddleRelativeLayerRelationship_Access_Array;

   type MiddleRelativeLayerRelationship is new RelativeLayerRelationship with null record;

   procedure Initialize (This : in out MiddleRelativeLayerRelationship'Class; layer_Param : access AllBinaryLayer'Class);
   function Create (layer_Param : access AllBinaryLayer'Class) return MiddleRelativeLayerRelationship_Access;

end org.allbinary.layer.relationship.MiddleRelativeLayerRelationship_Package;


