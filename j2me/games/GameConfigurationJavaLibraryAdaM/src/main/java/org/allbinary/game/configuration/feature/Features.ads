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
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEventHandler_Package; use org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystemFactory_Package; use org.allbinary.logic.system.os.OperatingSystemFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.configuration.feature.Features_Package is

   package GameFeatureEvent_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEvent_Package;
   package GameFeatureEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package GenericOperatingSystem_Package renames Standard.org.allbinary.logic.system.os.GenericOperatingSystem_Package;
   package OperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.OperatingSystemFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type Features is tagged;
   type Features_Access is access all Features'Class;
   type Features_Access_Array is array (Natural range <>) of Features_Access;
   type Features_Access_Array_Access is access all Features_Access_Array;

   type Features is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      list : BasicArrayList_Access;
      defaultList : BasicArrayList_Access;
   end record;
   SINGLETON : Java_Object_Access;

   procedure Initialize (This : in out Features'Class);
   function Create return Features_Access;
   function getInstance return Features_Access;
   procedure getInstance;
   procedure addDefault (This : in out Features; gameFeature : Feature_Access);
   procedure add (This : in out Features; gameFeature : Feature_Access);
   procedure removeDefault (This : in out Features; gameFeature : Feature_Access);
   procedure remove (This : in out Features; gameFeature : Feature_Access);
   procedure init (This : in out Features);
   function isDefault (This : in out Features; gameFeature : Feature_Access) return Boolean;
   procedure isDefault (This : in out Features; gameFeature : Feature_Access);
   function isFeature (This : in out Features; gameFeature : Feature_Access) return Boolean;
   procedure isFeature (This : in out Features; gameFeature : Feature_Access);
   procedure toggle (This : in out Features; gameFeature : Feature_Access);

end org.allbinary.game.configuration.feature.Features_Package;


