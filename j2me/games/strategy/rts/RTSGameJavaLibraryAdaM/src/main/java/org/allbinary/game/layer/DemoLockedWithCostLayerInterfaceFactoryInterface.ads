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
with org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.CostLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package is


   type DemoLockedWithCostLayerInterfaceFactoryInterface is interface and CostLayerInterfaceFactoryInterface;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access is access all DemoLockedWithCostLayerInterfaceFactoryInterface'Class;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of DemoLockedWithCostLayerInterfaceFactoryInterface_Access;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access is access all DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access;
   type DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all DemoLockedWithCostLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function isDemoLocked (This : in out DemoLockedWithCostLayerInterfaceFactoryInterface) return Boolean is abstract;

end org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface_Package;


