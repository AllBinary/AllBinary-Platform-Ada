-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type DecalAnimationInterfaceFactory is tagged;
   type DecalAnimationInterfaceFactory_Access is access all DecalAnimationInterfaceFactory'Class;
   type DecalAnimationInterfaceFactory_Access_Array is array (Natural range <>) of DecalAnimationInterfaceFactory_Access;
   type DecalAnimationInterfaceFactory_Access_Array_Access is access all DecalAnimationInterfaceFactory_Access_Array;
   type DecalAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of DecalAnimationInterfaceFactory_Access_Array_Access;
   type DecalAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all DecalAnimationInterfaceFactory_Access_Array_Access_Array;

   type DecalAnimationInterfaceFactory is new Java_Object with null record;
   instance : DecalAnimationInterfaceFactory_Access;

   procedure Initialize (This : in out DecalAnimationInterfaceFactory'Class);
   function Create return DecalAnimationInterfaceFactory_Access;
   function getInstance return DecalAnimationInterfaceFactory_Access;
   function getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return AnimationInterfaceFactoryInterface_Access;
   procedure getAnimationFactory (This : in out DecalAnimationInterfaceFactory; basicGameResources_Param : access BasicGameResources_Package.BasicGameResources'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.layer.unit.DecalAnimationInterfaceFactory_Package;


