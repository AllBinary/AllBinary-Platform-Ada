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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

package org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type HealLayerFactory is tagged;
   type HealLayerFactory_Access is access all HealLayerFactory'Class;
   type HealLayerFactory_Access_Array is array (Natural range <>) of HealLayerFactory_Access;
   type HealLayerFactory_Access_Array_Access is access all HealLayerFactory_Access_Array;

   type HealLayerFactory is new AllBinaryLayerFactoryInterface with null record;

   procedure Initialize (This : in out HealLayerFactory'Class);
   function Create return HealLayerFactory_Access;
   function getInstance (This : in out HealLayerFactory) return AllBinaryLayer_Access;
   procedure getInstance (This : in out HealLayerFactory);

end org.allbinary.game.ag.layer.pickup.health.HealLayerFactory_Package;


