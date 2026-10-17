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
with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;

package org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ABRunnable_Package renames Standard.org.allbinary.thread.ABRunnable_Package;

   type DemoGameStartupRunnable is tagged;
   type DemoGameStartupRunnable_Access is access all DemoGameStartupRunnable'Class;
   type DemoGameStartupRunnable_Access_Array is array (Natural range <>) of DemoGameStartupRunnable_Access;
   type DemoGameStartupRunnable_Access_Array_Access is access all DemoGameStartupRunnable_Access_Array;

   type DemoGameStartupRunnable is new ABRunnable with record
      logUtil : LogUtil_Access;
      demoCanvas : DemoCanvas_Access;
   end record;
   TYPE_Id : Integer;

   procedure Initialize (This : in out DemoGameStartupRunnable'Class; demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class);
   function Create (demoCanvas_Param : access DemoCanvas_Package.DemoCanvas'Class) return DemoGameStartupRunnable_Access;
   procedure run (This : in out DemoGameStartupRunnable);
   function getType (This : in out DemoGameStartupRunnable) return Integer;

end org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;


