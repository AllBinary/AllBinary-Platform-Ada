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
with org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.layer.resources.OnDemandResources_Package is

   package BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type OnDemandResources is tagged;
   type OnDemandResources_Access is access all OnDemandResources'Class;
   type OnDemandResources_Access_Array is array (Natural range <>) of OnDemandResources_Access;
   type OnDemandResources_Access_Array_Access is access all OnDemandResources_Access_Array;

   type OnDemandResources is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   NULL_ON_DEMAND_RESOURCES : OnDemandResources_Access;

   procedure Initialize (This : in out OnDemandResources'Class);
   function Create return OnDemandResources_Access;
   procedure waitFor (This : in out OnDemandResources);
   procedure init (This : in out OnDemandResources);
   function initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer) return Integer;
   procedure initAt (This : in out OnDemandResources; imageCache_Param : access ImageCache'Class; resourceAnimationInterfaceFactoryInterfaceFactory_Param : access BaseResourceAnimationInterfaceFactoryInterfaceFactory'Class; portion : Integer; loadingString : Unbounded_String; index : Integer);

end org.allbinary.game.layer.resources.OnDemandResources_Package;


