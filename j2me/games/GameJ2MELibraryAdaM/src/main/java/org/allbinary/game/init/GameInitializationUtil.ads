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
limited with org.allbinary.game.init.GameInitializationUtil_Package;
package org.allbinary.game.init.GameInitializationUtil_Package_References is
   type GameInitializationUtil_Access is access all org.allbinary.game.init.GameInitializationUtil_Package.GameInitializationUtil'Class;
   type GameInitializationUtil_Access_Array is array (Natural range <>) of GameInitializationUtil_Access;
   type GameInitializationUtil_Access_Array_Access is access all GameInitializationUtil_Access_Array;
   type GameInitializationUtil_Access_Array_Access_Array is array (Natural range <>) of GameInitializationUtil_Access_Array_Access;
   type GameInitializationUtil_Access_Array_Access_Array_Access is access all GameInitializationUtil_Access_Array_Access_Array;
   type GameInitializationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializationUtil_Access_Array_Access is (if Value /= null and then Value.all in GameInitializationUtil_Access_Array_Object'Class then GameInitializationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameInitializationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInitializationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInitializationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInitializationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInitializationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInitializationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInitializationUtil_Access_Array_Access_Array_Object'Class then GameInitializationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.init.GameInitializationUtil_Package_References;

with org.allbinary.game.init.GameInitializationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.configuration.event.GameInitializedEvent_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package_References;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;

package org.allbinary.game.init.GameInitializationUtil_Package is

   package GameInitializedEvent_Package renames Standard.org.allbinary.game.configuration.event.GameInitializedEvent_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype GameInitializedEvent_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access;
   use type GameInitializedEvent_Access;
   subtype GameInitializedEvent_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array;
   use type GameInitializedEvent_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access;
   subtype GameInitializedEvent_Access_Array_Access_Array is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array;
   use type GameInitializedEvent_Access_Array_Access_Array;
   subtype GameInitializedEvent_Access_Array_Access_Array_Access is org.allbinary.game.configuration.event.GameInitializedEvent_Package_References.GameInitializedEvent_Access_Array_Access_Array_Access;
   use type GameInitializedEvent_Access_Array_Access_Array_Access;
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype BasicBuildGameInitializerFactory_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access;
   use type BasicBuildGameInitializerFactory_Access;
   subtype BasicBuildGameInitializerFactory_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array;
   use type BasicBuildGameInitializerFactory_Access_Array;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access;
   use type BasicBuildGameInitializerFactory_Access_Array_Access;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   use type BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   use type BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInitializationUtil_Access is org.allbinary.game.init.GameInitializationUtil_Package_References.GameInitializationUtil_Access;
   function "=" (Left, Right : GameInitializationUtil_Access) return Boolean renames org.allbinary.game.init.GameInitializationUtil_Package_References."=";
   subtype GameInitializationUtil_Access_Array is org.allbinary.game.init.GameInitializationUtil_Package_References.GameInitializationUtil_Access_Array;
   function "=" (Left, Right : GameInitializationUtil_Access_Array) return Boolean renames org.allbinary.game.init.GameInitializationUtil_Package_References."=";
   subtype GameInitializationUtil_Access_Array_Access is org.allbinary.game.init.GameInitializationUtil_Package_References.GameInitializationUtil_Access_Array_Access;
   function "=" (Left, Right : GameInitializationUtil_Access_Array_Access) return Boolean renames org.allbinary.game.init.GameInitializationUtil_Package_References."=";
   function Java_Box (Value : GameInitializationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.GameInitializationUtil_Package_References.Java_Box;
   function Java_Unbox_GameInitializationUtil_Access_Array (Value : access Java_Object'Class) return GameInitializationUtil_Access_Array_Access renames org.allbinary.game.init.GameInitializationUtil_Package_References.Java_Unbox_GameInitializationUtil_Access_Array;
   subtype GameInitializationUtil_Access_Array_Access_Array is org.allbinary.game.init.GameInitializationUtil_Package_References.GameInitializationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameInitializationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.GameInitializationUtil_Package_References."=";
   subtype GameInitializationUtil_Access_Array_Access_Array_Access is org.allbinary.game.init.GameInitializationUtil_Package_References.GameInitializationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInitializationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.GameInitializationUtil_Package_References."=";
   function Java_Box (Value : GameInitializationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.GameInitializationUtil_Package_References.Java_Box;
   function Java_Unbox_GameInitializationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInitializationUtil_Access_Array_Access_Array_Access renames org.allbinary.game.init.GameInitializationUtil_Package_References.Java_Unbox_GameInitializationUtil_Access_Array_Access_Array;

   type GameInitializationUtil is new Java_Object with record
      EVENT : GameInitializedEvent_Access;
   end record;
   instance : GameInitializationUtil_Access;

   procedure Initialize (This : in out GameInitializationUtil'Class);
   function Create return GameInitializationUtil_Access;
   procedure initDemo (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class);
   procedure initGame (This : in out GameInitializationUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; canvas_Param : access MyCanvas_Package.MyCanvas'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class);
   function getInstance return GameInitializationUtil_Access;

end org.allbinary.game.init.GameInitializationUtil_Package;


