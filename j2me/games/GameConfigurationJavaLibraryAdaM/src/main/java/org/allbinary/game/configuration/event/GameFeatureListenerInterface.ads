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

limited with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;
package org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References is
   type GameFeatureListenerInterface_Access is access all org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package.GameFeatureListenerInterface'Class;
   type GameFeatureListenerInterface_Access_Array is array (Natural range <>) of GameFeatureListenerInterface_Access;
   type GameFeatureListenerInterface_Access_Array_Access is access all GameFeatureListenerInterface_Access_Array;
   type GameFeatureListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GameFeatureListenerInterface_Access_Array_Access;
   type GameFeatureListenerInterface_Access_Array_Access_Array_Access is access all GameFeatureListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References;

with org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
limited with org.allbinary.game.configuration.event.GameFeatureEvent_Package;
with org.allbinary.game.configuration.event.GameFeatureEvent_Package_References;

package org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package is

   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
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


   type GameFeatureListenerInterface is interface and EventListenerInterface;
   subtype GameFeatureListenerInterface_Access is org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References.GameFeatureListenerInterface_Access;
   function "=" (Left, Right : GameFeatureListenerInterface_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References."=";
   subtype GameFeatureListenerInterface_Access_Array is org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References.GameFeatureListenerInterface_Access_Array;
   function "=" (Left, Right : GameFeatureListenerInterface_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References."=";
   subtype GameFeatureListenerInterface_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References.GameFeatureListenerInterface_Access_Array_Access;
   function "=" (Left, Right : GameFeatureListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References."=";
   subtype GameFeatureListenerInterface_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References.GameFeatureListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References."=";
   subtype GameFeatureListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References.GameFeatureListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package_References."=";
   function Java_Object_Access_From_GameFeatureListenerInterface (Value : GameFeatureListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onGameFeatureChange (This : in out GameFeatureListenerInterface; gameFeatureEvent_Param : access GameFeatureEvent_Package.GameFeatureEvent'Class) is abstract;

end org.allbinary.game.configuration.event.GameFeatureListenerInterface_Package;


