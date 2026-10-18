-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package is

   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

   type CostLayerInterfaceFactoryInterface is interface and LayerInterfaceFactoryInterface;
   type CostLayerInterfaceFactoryInterface_Access is access all CostLayerInterfaceFactoryInterface'Class;
   type CostLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of CostLayerInterfaceFactoryInterface_Access;
   type CostLayerInterfaceFactoryInterface_Access_Array_Access is access all CostLayerInterfaceFactoryInterface_Access_Array;
   type CostLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of CostLayerInterfaceFactoryInterface_Access_Array_Access;
   type CostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all CostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function getCost (This : in out CostLayerInterfaceFactoryInterface) return Integer is abstract;

end org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;


