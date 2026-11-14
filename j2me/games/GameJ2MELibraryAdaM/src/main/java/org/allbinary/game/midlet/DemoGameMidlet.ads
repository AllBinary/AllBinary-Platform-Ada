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
limited with org.allbinary.game.midlet.DemoGameMidlet_Package;
package org.allbinary.game.midlet.DemoGameMidlet_Package_References is
   type DemoGameMidlet_Access is access all org.allbinary.game.midlet.DemoGameMidlet_Package.DemoGameMidlet'Class;
   type DemoGameMidlet_Access_Array is array (Natural range <>) of DemoGameMidlet_Access;
   type DemoGameMidlet_Access_Array_Access is access all DemoGameMidlet_Access_Array;
   type DemoGameMidlet_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidlet_Access_Array_Access;
   type DemoGameMidlet_Access_Array_Access_Array_Access is access all DemoGameMidlet_Access_Array_Access_Array;
   type DemoGameMidlet_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidlet_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidlet_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidlet_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidlet_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidlet_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidlet_Access_Array_Object'Class then DemoGameMidlet_Access_Array_Object'Class (Value.all).Value else null);
   type DemoGameMidlet_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoGameMidlet_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoGameMidlet_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoGameMidlet_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoGameMidlet_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoGameMidlet_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoGameMidlet_Access_Array_Access_Array_Object'Class then DemoGameMidlet_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.midlet.DemoGameMidlet_Package_References;

with org.allbinary.game.midlet.DemoGameMidlet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References;
with org.allbinary.game.midlet.GameMidlet_Package; use org.allbinary.game.midlet.GameMidlet_Package;

package org.allbinary.game.midlet.DemoGameMidlet_Package is

   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package Reference_Types is
   subtype GameCanvasRunnableInterface_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access;
   use type GameCanvasRunnableInterface_Access;
   subtype GameCanvasRunnableInterface_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array;
   use type GameCanvasRunnableInterface_Access_Array;
   subtype GameCanvasRunnableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access;
   use type GameCanvasRunnableInterface_Access_Array_Access;
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array;
   use type GameCanvasRunnableInterface_Access_Array_Access_Array;
   subtype GameCanvasRunnableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package_References.GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   use type GameCanvasRunnableInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype ClientInformationFactory_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access;
   use type ClientInformationFactory_Access;
   subtype ClientInformationFactory_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array;
   use type ClientInformationFactory_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access;
   subtype ClientInformationFactory_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array;
   use type ClientInformationFactory_Access_Array_Access_Array;
   subtype ClientInformationFactory_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package_References.ClientInformationFactory_Access_Array_Access_Array_Access;
   use type ClientInformationFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameMidlet_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access;
   function "=" (Left, Right : DemoGameMidlet_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array;
   function "=" (Left, Right : DemoGameMidlet_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   function Java_Box (Value : DemoGameMidlet_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidlet_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidlet_Access_Array (Value : access Java_Object'Class) return DemoGameMidlet_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidlet_Package_References.Java_Unbox_DemoGameMidlet_Access_Array;
   subtype DemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   subtype DemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidlet_Package_References."=";
   function Java_Box (Value : DemoGameMidlet_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.midlet.DemoGameMidlet_Package_References.Java_Box;
   function Java_Unbox_DemoGameMidlet_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoGameMidlet_Access_Array_Access_Array_Access renames org.allbinary.game.midlet.DemoGameMidlet_Package_References.Java_Unbox_DemoGameMidlet_Access_Array_Access_Array;

   type DemoGameMidlet is new GameMidlet with null record;

   procedure Initialize (This : in out DemoGameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return DemoGameMidlet_Access;
   function isContinue (This : in out DemoGameMidlet) return Boolean;
   function getHighestLevel (This : in out DemoGameMidlet) return Integer;
   function createDemoGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access;
   function createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return GameCanvasRunnableInterface_Access;
   procedure createGameCanvasRunnable (This : in out DemoGameMidlet; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   function createGameCanvasRunnableInterface (This : in out DemoGameMidlet) return GameCanvasRunnableInterface_Access;
   procedure demoSetup (This : in out DemoGameMidlet);
   procedure postDemoSetup (This : in out DemoGameMidlet);
   procedure setDemo (This : in out DemoGameMidlet);
   procedure createGame (This : in out DemoGameMidlet);
   function isReady (This : in out DemoGameMidlet) return Boolean;

end org.allbinary.game.midlet.DemoGameMidlet_Package;


