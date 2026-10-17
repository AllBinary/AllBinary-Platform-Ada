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
with org.allbinary.game.layer.resources.OnDemandResources_Package; use org.allbinary.game.layer.resources.OnDemandResources_Package;

package org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package is


   type OnDemandResourcesFactory is tagged;
   type OnDemandResourcesFactory_Access is access all OnDemandResourcesFactory'Class;
   type OnDemandResourcesFactory_Access_Array is array (Natural range <>) of OnDemandResourcesFactory_Access;
   type OnDemandResourcesFactory_Access_Array_Access is access all OnDemandResourcesFactory_Access_Array;

   type OnDemandResourcesFactory is new Java_Object with null record;

   procedure Initialize (This : in out OnDemandResourcesFactory'Class);
   function Create return OnDemandResourcesFactory_Access;
   function size (This : in out OnDemandResourcesFactory) return Integer;
   function remove (This : in out OnDemandResourcesFactory; layerId : Integer) return OnDemandResources_Access;
   procedure remove (This : in out OnDemandResourcesFactory; layerId : Integer);

end org.allbinary.game.layer.resources.OnDemandResourcesFactory_Package;


