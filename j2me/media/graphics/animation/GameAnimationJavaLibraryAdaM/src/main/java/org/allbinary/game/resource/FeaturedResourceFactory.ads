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
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package; use org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.resource.FeaturedResourceFactory_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type FeaturedResourceFactory is tagged;
   type FeaturedResourceFactory_Access is access all FeaturedResourceFactory'Class;
   type FeaturedResourceFactory_Access_Array is array (Natural range <>) of FeaturedResourceFactory_Access;
   type FeaturedResourceFactory_Access_Array_Access is access all FeaturedResourceFactory_Access_Array;
   type FeaturedResourceFactory_Access_Array_Access_Array is array (Natural range <>) of FeaturedResourceFactory_Access_Array_Access;
   type FeaturedResourceFactory_Access_Array_Access_Array_Access is access all FeaturedResourceFactory_Access_Array_Access_Array;

   type FeaturedResourceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
      commonStrings : CommonStrings_Access;
      ANIMATION_FEATURES : Unbounded_String;
      IMAGE_LABEL : Unbounded_String;
      IMAGE_GRAPHICS_ARRAY : Unbounded_String;
      IMAGE_GRAPHICS_ROTATION : Unbounded_String;
      SPRITE_QUARTER : Unbounded_String;
      SPRITE_FULL : Unbounded_String;
      IS_LOADING_LEVEL_LABEL : Unbounded_String;
      IS_FEATURE : Unbounded_String;
      GAME_FEATURE_CONTROLLED : Unbounded_String;
   end record;

   procedure Initialize (This : in out FeaturedResourceFactory'Class);
   function Create return FeaturedResourceFactory_Access;
   procedure init (This : in out FeaturedResourceFactory; level : Integer);
   procedure clear (This : in out FeaturedResourceFactory);
   procedure add (This : in out FeaturedResourceFactory; featureInterface_Param : access GameFeatureControlledInterface_Package.GameFeatureControlledInterface'Class);
   function getList (This : in out FeaturedResourceFactory) return BasicArrayList_Access;

end org.allbinary.game.resource.FeaturedResourceFactory_Package;


