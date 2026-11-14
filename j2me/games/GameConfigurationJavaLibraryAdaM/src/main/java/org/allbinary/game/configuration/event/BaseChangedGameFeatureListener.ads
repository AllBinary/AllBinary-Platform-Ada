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
limited with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;
package org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References is
   type BaseChangedGameFeatureListener_Access is access all org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package.BaseChangedGameFeatureListener'Class;
   type BaseChangedGameFeatureListener_Access_Array is array (Natural range <>) of BaseChangedGameFeatureListener_Access;
   type BaseChangedGameFeatureListener_Access_Array_Access is access all BaseChangedGameFeatureListener_Access_Array;
   type BaseChangedGameFeatureListener_Access_Array_Access_Array is array (Natural range <>) of BaseChangedGameFeatureListener_Access_Array_Access;
   type BaseChangedGameFeatureListener_Access_Array_Access_Array_Access is access all BaseChangedGameFeatureListener_Access_Array_Access_Array;
   type BaseChangedGameFeatureListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseChangedGameFeatureListener_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseChangedGameFeatureListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseChangedGameFeatureListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseChangedGameFeatureListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseChangedGameFeatureListener_Access_Array_Access is (if Value /= null and then Value.all in BaseChangedGameFeatureListener_Access_Array_Object'Class then BaseChangedGameFeatureListener_Access_Array_Object'Class (Value.all).Value else null);
   type BaseChangedGameFeatureListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseChangedGameFeatureListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseChangedGameFeatureListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseChangedGameFeatureListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseChangedGameFeatureListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseChangedGameFeatureListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseChangedGameFeatureListener_Access_Array_Access_Array_Object'Class then BaseChangedGameFeatureListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References;

with org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;
limited with org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package; use org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
limited with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;

package org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package is

   package Feature_Package renames Standard.org.allbinary.game.configuration.feature.Feature_Package;
   package GameFeatureUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   use type Feature_Access;
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   use type Feature_Access_Array;
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   use type Feature_Access_Array_Access;
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   use type Feature_Access_Array_Access_Array;
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   use type Feature_Access_Array_Access_Array_Access;
   subtype GameFeatureUtil_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access;
   use type GameFeatureUtil_Access;
   subtype GameFeatureUtil_Access_Array is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array;
   use type GameFeatureUtil_Access_Array;
   subtype GameFeatureUtil_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access;
   use type GameFeatureUtil_Access_Array_Access;
   subtype GameFeatureUtil_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access_Array;
   use type GameFeatureUtil_Access_Array_Access_Array;
   subtype GameFeatureUtil_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureUtil_Package_References.GameFeatureUtil_Access_Array_Access_Array_Access;
   use type GameFeatureUtil_Access_Array_Access_Array_Access;
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
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
   subtype GameFeatureEvent_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access;
   use type GameFeatureEvent_Access;
   subtype GameFeatureEvent_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array;
   use type GameFeatureEvent_Access_Array;
   subtype GameFeatureEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access;
   use type GameFeatureEvent_Access_Array_Access;
   subtype GameFeatureEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array;
   use type GameFeatureEvent_Access_Array_Access_Array;
   subtype GameFeatureEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureEvent_Package_References.GameFeatureEvent_Access_Array_Access_Array_Access;
   use type GameFeatureEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseChangedGameFeatureListener_Access is org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.BaseChangedGameFeatureListener_Access;
   function "=" (Left, Right : BaseChangedGameFeatureListener_Access) return Boolean renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References."=";
   subtype BaseChangedGameFeatureListener_Access_Array is org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.BaseChangedGameFeatureListener_Access_Array;
   function "=" (Left, Right : BaseChangedGameFeatureListener_Access_Array) return Boolean renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References."=";
   subtype BaseChangedGameFeatureListener_Access_Array_Access is org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.BaseChangedGameFeatureListener_Access_Array_Access;
   function "=" (Left, Right : BaseChangedGameFeatureListener_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References."=";
   function Java_Box (Value : BaseChangedGameFeatureListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.Java_Box;
   function Java_Unbox_BaseChangedGameFeatureListener_Access_Array (Value : access Java_Object'Class) return BaseChangedGameFeatureListener_Access_Array_Access renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.Java_Unbox_BaseChangedGameFeatureListener_Access_Array;
   subtype BaseChangedGameFeatureListener_Access_Array_Access_Array is org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.BaseChangedGameFeatureListener_Access_Array_Access_Array;
   function "=" (Left, Right : BaseChangedGameFeatureListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References."=";
   subtype BaseChangedGameFeatureListener_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.BaseChangedGameFeatureListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseChangedGameFeatureListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References."=";
   function Java_Box (Value : BaseChangedGameFeatureListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.Java_Box;
   function Java_Unbox_BaseChangedGameFeatureListener_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseChangedGameFeatureListener_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package_References.Java_Unbox_BaseChangedGameFeatureListener_Access_Array_Access_Array;

   type BaseChangedGameFeatureListener is new Java_Object and GameFeatureListenerInterface with record
      logUtil : LogUtil_Access;
      gameFeatureUtil : GameFeatureUtil_Access;
      list : BasicArrayList_Access;
      changed : Boolean;
   end record;

   procedure Initialize (This : in out BaseChangedGameFeatureListener'Class);
   function Create return BaseChangedGameFeatureListener_Access;
   procedure onEvent (This : in out BaseChangedGameFeatureListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onGameFeatureChange (This : in out BaseChangedGameFeatureListener; gameFeatureEvent_Param : access GameFeatureEvent_Package.GameFeatureEvent'Class);
   procedure add (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure remove (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class);
   procedure setChanged (This : in out BaseChangedGameFeatureListener; initialized : Boolean);
   function isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class) return Boolean;
   procedure isChangedFeature (This : in out BaseChangedGameFeatureListener; gameFeature_Param : access Feature_Package.Feature'Class);
   function isChanged (This : in out BaseChangedGameFeatureListener) return Boolean;

end org.allbinary.game.configuration.event.BaseChangedGameFeatureListener_Package;


