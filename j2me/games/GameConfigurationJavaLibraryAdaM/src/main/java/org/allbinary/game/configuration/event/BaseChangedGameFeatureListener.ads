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
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package; use org.allbinary.game.configuration.event.GameFeatureEvent_Package;

package org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BaseChangedGameFeatureListener is tagged;
   type BaseChangedGameFeatureListener_Access is access all BaseChangedGameFeatureListener'Class;
   type BaseChangedGameFeatureListener_Access_Array is array (Natural range <>) of BaseChangedGameFeatureListener_Access;
   type BaseChangedGameFeatureListener_Access_Array_Access is access all BaseChangedGameFeatureListener_Access_Array;

   type BaseChangedGameFeatureListener is new GameFeatureListenerInterface with record
      logUtil : LogUtil_Access;
      gameFeatureUtil : GameFeatureUtil_Access;
      list : BasicArrayList_Access;
      changed : Boolean;
   end record;

   procedure Initialize (This : in out BaseChangedGameFeatureListener'Class);
   function Create return BaseChangedGameFeatureListener_Access;
   procedure onEvent (This : in out BaseChangedGameFeatureListener; eventObject : AllBinaryEventObject_Access);
   procedure onGameFeatureChange (This : in out BaseChangedGameFeatureListener; gameFeatureEvent : GameFeatureEvent_Access);
   procedure add (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access);
   procedure remove (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access);
   procedure setChanged (This : in out BaseChangedGameFeatureListener; initialized : Boolean);
   function isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access) return Boolean;
   procedure isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature : Feature_Access);
   function isChanged (This : in out BaseChangedGameFeatureListener) return Boolean;

end org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;


