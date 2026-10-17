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

package org.allbinary.game.resource.ResourceLoadingLevelFactory_Package is


   type ResourceLoadingLevelFactory is tagged;
   type ResourceLoadingLevelFactory_Access is access all ResourceLoadingLevelFactory'Class;
   type ResourceLoadingLevelFactory_Access_Array is array (Natural range <>) of ResourceLoadingLevelFactory_Access;
   type ResourceLoadingLevelFactory_Access_Array_Access is access all ResourceLoadingLevelFactory_Access_Array;

   type ResourceLoadingLevelFactory is new Java_Object with record
      LOAD_EARLY : ResourceLoadingLevel_Access;
      LOAD_TOUCH : ResourceLoadingLevel_Access;
      LOAD_GAME : ResourceLoadingLevel_Access;
      LEVEL : ResourceLoadingLevel_Access;
      MAX_LEVEL : ResourceLoadingLevel_Access;
      LOAD_ALL : ResourceLoadingLevel_Access;
      RESOURCE_LOADING_LEVEL_ARRAY : ResourceLoadingLevel_Access_Array_Access;
   end record;
   instance : ResourceLoadingLevelFactory_Access;

   procedure Initialize (This : in out ResourceLoadingLevelFactory'Class);
   function Create return ResourceLoadingLevelFactory_Access;
   function getInstance return ResourceLoadingLevelFactory_Access;
   procedure getInstance;
   function getLevelString (This : in out ResourceLoadingLevelFactory; level_Case : Integer) return Unbounded_String;
   procedure getLevelString (This : in out ResourceLoadingLevelFactory; level_Case : Integer);

end org.allbinary.game.resource.ResourceLoadingLevelFactory_Package;


