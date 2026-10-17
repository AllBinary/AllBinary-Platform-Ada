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
with org.allbinary.game.resource.ResourceLoadingLevel_Package; use org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.game.resource.ResourceLoadingLevelFactory_Package; use org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.configuration.event.GameInitializedEvent_Package is

   package ResourceLoadingLevel_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevel_Package;
   package ResourceLoadingLevelFactory_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameInitializedEvent is tagged;
   type GameInitializedEvent_Access is access all GameInitializedEvent'Class;
   type GameInitializedEvent_Access_Array is array (Natural range <>) of GameInitializedEvent_Access;
   type GameInitializedEvent_Access_Array_Access is access all GameInitializedEvent_Access_Array;

   type GameInitializedEvent is new AllBinaryEventObject with record
      resourceLoadingLevel : ResourceLoadingLevel_Access;
      level : Integer;
   end record;

   procedure Initialize (This : in out GameInitializedEvent'Class; anyType : Java_Object_Access);
   function Create (anyType : Java_Object_Access) return GameInitializedEvent_Access;
   procedure setLevel (This : in out GameInitializedEvent; level : Integer);
   function getLevel (This : in out GameInitializedEvent) return Integer;
   procedure getLevel (This : in out GameInitializedEvent);
   procedure setResourceLoadingLevel (This : in out GameInitializedEvent; resourceLoadingLevel : ResourceLoadingLevel_Access);
   function getResourceLoadingLevel (This : in out GameInitializedEvent) return ResourceLoadingLevel_Access;
   procedure getResourceLoadingLevel (This : in out GameInitializedEvent);

end org.allbinary.game.configuration.event.GameInitializedEvent_Package;


