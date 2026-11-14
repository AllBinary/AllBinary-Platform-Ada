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
limited with org.allbinary.game.configuration.event.GameInitializedEvent_Package;
package org.allbinary.game.configuration.event.GameInitializedEvent_Package_References is
   type GameInitializedEvent_Access is access all org.allbinary.game.configuration.event.GameInitializedEvent_Package.GameInitializedEvent'Class;
   type GameInitializedEvent_Access_Array is array (Natural range <>) of GameInitializedEvent_Access;
   type GameInitializedEvent_Access_Array_Access is access all GameInitializedEvent_Access_Array;
   type GameInitializedEvent_Access_Array_Access_Array is array (Natural range <>) of GameInitializedEvent_Access_Array_Access;
   type GameInitializedEvent_Access_Array_Access_Array_Access is access all GameInitializedEvent_Access_Array_Access_Array;
   type GameInitializedEvent_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializedEvent_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializedEvent_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializedEvent_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializedEvent_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializedEvent_Access_Array_Access is (if Value /= null and then Value.all in GameInitializedEvent_Access_Array_Object'Class then GameInitializedEvent_Access_Array_Object'Class (Value.all).Value else null);
   type GameInitializedEvent_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializedEvent_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializedEvent_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializedEvent_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializedEvent_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializedEvent_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInitializedEvent_Access_Array_Access_Array_Object'Class then GameInitializedEvent_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;

with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.resource.ResourceLoadingLevel_Package;
with org.allbinary.game.resource.ResourceLoadingLevel_Package_References;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.configuration.event.GameInitializedEvent_Package is

   package ResourceLoadingLevel_Package renames Standard.org.allbinary.game.resource.ResourceLoadingLevel_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype ResourceLoadingLevel_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access;
   use type ResourceLoadingLevel_Access;
   subtype ResourceLoadingLevel_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array;
   use type ResourceLoadingLevel_Access_Array;
   subtype ResourceLoadingLevel_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access;
   use type ResourceLoadingLevel_Access_Array_Access;
   subtype ResourceLoadingLevel_Access_Array_Access_Array is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array;
   use type ResourceLoadingLevel_Access_Array_Access_Array;
   subtype ResourceLoadingLevel_Access_Array_Access_Array_Access is org.allbinary.game.resource.ResourceLoadingLevel_Package_References.ResourceLoadingLevel_Access_Array_Access_Array_Access;
   use type ResourceLoadingLevel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   function "=" (Left, Right : GameInitializedEvent_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   function Java_Box (Value : GameInitializedEvent_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.Java_Box;
   function Java_Unbox_GameInitializedEvent_Access_Array (Value : access Java_Object'Class) return GameInitializedEvent_Access_Array_Access renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.Java_Unbox_GameInitializedEvent_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInitializedEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References."=";
   function Java_Box (Value : GameInitializedEvent_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.Java_Box;
   function Java_Unbox_GameInitializedEvent_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInitializedEvent_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.Java_Unbox_GameInitializedEvent_Access_Array_Access_Array;

   type GameInitializedEvent is new AllBinaryEventObject with record
      resourceLoadingLevel : ResourceLoadingLevel_Access;
      level : Integer;
   end record;

   procedure Initialize (This : in out GameInitializedEvent'Class; anyType_Param : access Java_Object'Class);
   function Create (anyType_Param : access Java_Object'Class) return GameInitializedEvent_Access;
   procedure setLevel (This : in out GameInitializedEvent; level : Integer);
   function getLevel (This : in out GameInitializedEvent) return Integer;
   procedure setResourceLoadingLevel (This : in out GameInitializedEvent; resourceLoadingLevel_Param : access ResourceLoadingLevel_Package.ResourceLoadingLevel'Class);
   function getResourceLoadingLevel (This : in out GameInitializedEvent) return ResourceLoadingLevel_Access;

end org.allbinary.game.configuration.event.GameInitializedEvent_Package;


