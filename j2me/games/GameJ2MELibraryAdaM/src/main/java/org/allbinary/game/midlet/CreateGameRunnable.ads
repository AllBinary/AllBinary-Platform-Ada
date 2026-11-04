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

limited with org.allbinary.game.midlet.CreateGameRunnable_Package;
package org.allbinary.game.midlet.CreateGameRunnable_Package_References is
   type CreateGameRunnable_Access is access all org.allbinary.game.midlet.CreateGameRunnable_Package.CreateGameRunnable'Class;
   type CreateGameRunnable_Access_Array is array (Natural range <>) of CreateGameRunnable_Access;
   type CreateGameRunnable_Access_Array_Access is access all CreateGameRunnable_Access_Array;
   type CreateGameRunnable_Access_Array_Access_Array is array (Natural range <>) of CreateGameRunnable_Access_Array_Access;
   type CreateGameRunnable_Access_Array_Access_Array_Access is access all CreateGameRunnable_Access_Array_Access_Array;
end org.allbinary.game.midlet.CreateGameRunnable_Package_References;

with org.allbinary.game.midlet.CreateGameRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package_References;
limited with org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package_References;

package org.allbinary.game.midlet.CreateGameRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype DemoGameMidlet_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access;
   use type DemoGameMidlet_Access;
   subtype DemoGameMidlet_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array;
   use type DemoGameMidlet_Access_Array;
   subtype DemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access;
   use type DemoGameMidlet_Access_Array_Access;
   subtype DemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array;
   use type DemoGameMidlet_Access_Array_Access_Array;
   subtype DemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidlet_Package_References.DemoGameMidlet_Access_Array_Access_Array_Access;
   use type DemoGameMidlet_Access_Array_Access_Array_Access;
   subtype DemoGameMidletEvent_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access;
   use type DemoGameMidletEvent_Access;
   subtype DemoGameMidletEvent_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array;
   use type DemoGameMidletEvent_Access_Array;
   subtype DemoGameMidletEvent_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access;
   use type DemoGameMidletEvent_Access_Array_Access;
   subtype DemoGameMidletEvent_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array;
   use type DemoGameMidletEvent_Access_Array_Access_Array;
   subtype DemoGameMidletEvent_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array_Access;
   use type DemoGameMidletEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CreateGameRunnable_Access is org.allbinary.game.midlet.CreateGameRunnable_Package_References.CreateGameRunnable_Access;
   function "=" (Left, Right : CreateGameRunnable_Access) return Boolean renames org.allbinary.game.midlet.CreateGameRunnable_Package_References."=";
   subtype CreateGameRunnable_Access_Array is org.allbinary.game.midlet.CreateGameRunnable_Package_References.CreateGameRunnable_Access_Array;
   function "=" (Left, Right : CreateGameRunnable_Access_Array) return Boolean renames org.allbinary.game.midlet.CreateGameRunnable_Package_References."=";
   subtype CreateGameRunnable_Access_Array_Access is org.allbinary.game.midlet.CreateGameRunnable_Package_References.CreateGameRunnable_Access_Array_Access;
   function "=" (Left, Right : CreateGameRunnable_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.CreateGameRunnable_Package_References."=";
   subtype CreateGameRunnable_Access_Array_Access_Array is org.allbinary.game.midlet.CreateGameRunnable_Package_References.CreateGameRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : CreateGameRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.CreateGameRunnable_Package_References."=";
   subtype CreateGameRunnable_Access_Array_Access_Array_Access is org.allbinary.game.midlet.CreateGameRunnable_Package_References.CreateGameRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CreateGameRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.CreateGameRunnable_Package_References."=";

   type CreateGameRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      demoGameMidlet : DemoGameMidlet_Access;
      hashtable : ABHashtable_Access;
      startGameMidletEvent : DemoGameMidletEvent_Access;
   end record;

   procedure Initialize (This : in out CreateGameRunnable'Class; demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function Create (demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return CreateGameRunnable_Access;
   procedure run (This : in out CreateGameRunnable);

end org.allbinary.game.midlet.CreateGameRunnable_Package;


