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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
with org.allbinary.game.midlet.DemoGameMidlet_Package; use org.allbinary.game.midlet.DemoGameMidlet_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package; use org.allbinary.game.midlet.DemoGameMidletEvent_Package;

package org.allbinary.game.midlet.DemoRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type DemoRunnable is tagged;
   type DemoRunnable_Access is access all DemoRunnable'Class;
   type DemoRunnable_Access_Array is array (Natural range <>) of DemoRunnable_Access;
   type DemoRunnable_Access_Array_Access is access all DemoRunnable_Access_Array;
   type DemoRunnable_Access_Array_Access_Array is array (Natural range <>) of DemoRunnable_Access_Array_Access;
   type DemoRunnable_Access_Array_Access_Array_Access is access all DemoRunnable_Access_Array_Access_Array;

   type DemoRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      demoGameMidlet : DemoGameMidlet_Access;
      startDemoGameMidletEvent : DemoGameMidletEvent_Access;
   end record;

   procedure Initialize (This : in out DemoRunnable'Class; demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class);
   function Create (demoGameMidlet_Param : access DemoGameMidlet_Package.DemoGameMidlet'Class) return DemoRunnable_Access;
   procedure run (This : in out DemoRunnable);

end org.allbinary.game.midlet.DemoRunnable_Package;


