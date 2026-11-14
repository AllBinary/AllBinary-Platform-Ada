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

with AllBinary_Java;
limited with org.allbinary.game.resource.FeaturedResourceFactory_Package;
package org.allbinary.game.resource.FeaturedResourceFactory_Package_References is
   type FeaturedResourceFactory_Access is access all org.allbinary.game.resource.FeaturedResourceFactory_Package.FeaturedResourceFactory'Class;
   type FeaturedResourceFactory_Access_Array is array (Natural range <>) of FeaturedResourceFactory_Access;
   type FeaturedResourceFactory_Access_Array_Access is access all FeaturedResourceFactory_Access_Array;
   type FeaturedResourceFactory_Access_Array_Access_Array is array (Natural range <>) of FeaturedResourceFactory_Access_Array_Access;
   type FeaturedResourceFactory_Access_Array_Access_Array_Access is access all FeaturedResourceFactory_Access_Array_Access_Array;
   type FeaturedResourceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FeaturedResourceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : FeaturedResourceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FeaturedResourceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FeaturedResourceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FeaturedResourceFactory_Access_Array_Access is (if Value /= null and then Value.all in FeaturedResourceFactory_Access_Array_Object'Class then FeaturedResourceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type FeaturedResourceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FeaturedResourceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FeaturedResourceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FeaturedResourceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FeaturedResourceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FeaturedResourceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FeaturedResourceFactory_Access_Array_Access_Array_Object'Class then FeaturedResourceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.resource.FeaturedResourceFactory_Package_References;

with org.allbinary.game.resource.FeaturedResourceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
with org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.game.resource.FeaturedResourceFactory_Package is

   package GameFeatureControlledInterface_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GameFeatureControlledInterface_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access;
   use type GameFeatureControlledInterface_Access;
   subtype GameFeatureControlledInterface_Access_Array is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array;
   use type GameFeatureControlledInterface_Access_Array;
   subtype GameFeatureControlledInterface_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access;
   use type GameFeatureControlledInterface_Access_Array_Access;
   subtype GameFeatureControlledInterface_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access_Array;
   use type GameFeatureControlledInterface_Access_Array_Access_Array;
   subtype GameFeatureControlledInterface_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureControlledInterface_Package_References.GameFeatureControlledInterface_Access_Array_Access_Array_Access;
   use type GameFeatureControlledInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FeaturedResourceFactory_Access is org.allbinary.game.resource.FeaturedResourceFactory_Package_References.FeaturedResourceFactory_Access;
   function "=" (Left, Right : FeaturedResourceFactory_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References."=";
   subtype FeaturedResourceFactory_Access_Array is org.allbinary.game.resource.FeaturedResourceFactory_Package_References.FeaturedResourceFactory_Access_Array;
   function "=" (Left, Right : FeaturedResourceFactory_Access_Array) return Boolean renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References."=";
   subtype FeaturedResourceFactory_Access_Array_Access is org.allbinary.game.resource.FeaturedResourceFactory_Package_References.FeaturedResourceFactory_Access_Array_Access;
   function "=" (Left, Right : FeaturedResourceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References."=";
   function Java_Box (Value : FeaturedResourceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References.Java_Box;
   function Java_Unbox_FeaturedResourceFactory_Access_Array (Value : access Java_Object'Class) return FeaturedResourceFactory_Access_Array_Access renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References.Java_Unbox_FeaturedResourceFactory_Access_Array;
   subtype FeaturedResourceFactory_Access_Array_Access_Array is org.allbinary.game.resource.FeaturedResourceFactory_Package_References.FeaturedResourceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FeaturedResourceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References."=";
   subtype FeaturedResourceFactory_Access_Array_Access_Array_Access is org.allbinary.game.resource.FeaturedResourceFactory_Package_References.FeaturedResourceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FeaturedResourceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References."=";
   function Java_Box (Value : FeaturedResourceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References.Java_Box;
   function Java_Unbox_FeaturedResourceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return FeaturedResourceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.resource.FeaturedResourceFactory_Package_References.Java_Unbox_FeaturedResourceFactory_Access_Array_Access_Array;

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


