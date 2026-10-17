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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;

package org.allbinary.canvas.FullScreenUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;

   type FullScreenUtil is tagged;
   type FullScreenUtil_Access is access all FullScreenUtil'Class;
   type FullScreenUtil_Access_Array is array (Natural range <>) of FullScreenUtil_Access;
   type FullScreenUtil_Access_Array_Access is access all FullScreenUtil_Access_Array;

   type FullScreenUtil is new Java_Object with null record;
   instance : FullScreenUtil_Access;

   procedure Initialize (This : in out FullScreenUtil'Class);
   function Create return FullScreenUtil_Access;
   function getInstance return FullScreenUtil_Access;
   procedure initOnRun (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure init (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class);
   function isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) return Boolean;
   procedure isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean);
   function isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) return Boolean;
   procedure isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.canvas.FullScreenUtil_Package;


