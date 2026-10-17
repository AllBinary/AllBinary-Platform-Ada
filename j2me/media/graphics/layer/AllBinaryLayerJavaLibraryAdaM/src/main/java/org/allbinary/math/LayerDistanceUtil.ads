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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;

package org.allbinary.math.LayerDistanceUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;

   type LayerDistanceUtil is tagged;
   type LayerDistanceUtil_Access is access all LayerDistanceUtil'Class;
   type LayerDistanceUtil_Access_Array is array (Natural range <>) of LayerDistanceUtil_Access;
   type LayerDistanceUtil_Access_Array_Access is access all LayerDistanceUtil_Access_Array;

   type LayerDistanceUtil is new Java_Object with record
      mathUtil : MathUtil_Access;
   end record;
   instance : LayerDistanceUtil_Access;

   procedure Initialize (This : in out LayerDistanceUtil'Class);
   function Create return LayerDistanceUtil_Access;
   function getInstance return LayerDistanceUtil_Access;
   function getDistance (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; layerInterface2 : AllBinaryLayer_Access) return Integer;
   procedure getDistance (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; layerInterface2 : AllBinaryLayer_Access);
   function getDistance3D (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; layerInterface2 : AllBinaryLayer_Access) return Integer;
   procedure getDistance3D (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; layerInterface2 : AllBinaryLayer_Access);
   function getDistanceAt (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; point : GPoint_Access) return Integer;
   procedure getDistanceAt (This : in out LayerDistanceUtil; layerInterface : AllBinaryLayer_Access; point : GPoint_Access);

end org.allbinary.math.LayerDistanceUtil_Package;


