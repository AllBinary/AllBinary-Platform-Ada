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
--  with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.LayerInterfaceFactory_Package; use org.allbinary.layer.LayerInterfaceFactory_Package;
with org.allbinary.layer.LayerInterfaceVisitor_Package; use org.allbinary.layer.LayerInterfaceVisitor_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.game.layer.LayerPlacementInterface_Package; use org.allbinary.game.layer.LayerPlacementInterface_Package;
with org.allbinary.game.layer.LayerPlacementType_Package; use org.allbinary.game.layer.LayerPlacementType_Package;
with org.allbinary.game.layer.LayerPlacementTypeFactory_Package; use org.allbinary.game.layer.LayerPlacementTypeFactory_Package;

package org.allbinary.game.layer.LayerPlacer_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package LayerInterfaceFactory_Package renames Standard.org.allbinary.layer.LayerInterfaceFactory_Package;
   package LayerInterfaceVisitor_Package renames Standard.org.allbinary.layer.LayerInterfaceVisitor_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;

   type LayerPlacer is tagged;
   type LayerPlacer_Access is access all LayerPlacer'Class;
   type LayerPlacer_Access_Array is array (Natural range <>) of LayerPlacer_Access;
   type LayerPlacer_Access_Array_Access is access all LayerPlacer_Access_Array;

   type LayerPlacer is new Java_Object with record
      enumerationUtil : EnumerationUtil_Access;
      layerInterfaceVisitor : LayerInterfaceVisitor_Access;
      dimension : GPoint_Access;
   end record;

   procedure Initialize (This : in out LayerPlacer'Class; layerInterfaceVisitor : LayerInterfaceVisitor_Access; dimension : GPoint_Access);
   function Create (layerInterfaceVisitor : LayerInterfaceVisitor_Access; dimension : GPoint_Access) return LayerPlacer_Access;
   procedure processList (This : in out LayerPlacer; list : BasicArrayList_Access);
   procedure process (This : in out LayerPlacer; layerPlacementInterface : LayerPlacementInterface_Access);
   function getPoint (This : in out LayerPlacer; layerPlacementInterface : LayerPlacementInterface_Access) return GPoint_Access;
   procedure getPoint (This : in out LayerPlacer; layerPlacementInterface : LayerPlacementInterface_Access);

end org.allbinary.game.layer.LayerPlacer_Package;


