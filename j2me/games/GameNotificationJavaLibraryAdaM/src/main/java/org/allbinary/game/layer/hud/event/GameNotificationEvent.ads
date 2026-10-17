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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.layer.hud.event.GameNotificationEvent_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameNotificationEvent is tagged;
   type GameNotificationEvent_Access is access all GameNotificationEvent'Class;
   type GameNotificationEvent_Access_Array is array (Natural range <>) of GameNotificationEvent_Access;
   type GameNotificationEvent_Access_Array_Access is access all GameNotificationEvent_Access_Array;

   type GameNotificationEvent is new AllBinaryEventObject with record
      string_Id : Unbounded_String;
      seconds : Integer;
      basicColor : BasicColor_Access;
      removeable : Boolean;
   end record;

   procedure Initialize (This : in out GameNotificationEvent'Class; anyType_Param : access Java_Object'Class; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean);
   function Create (anyType_Param : access Java_Object'Class; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean) return GameNotificationEvent_Access;
   function getString (This : in out GameNotificationEvent) return Unbounded_String;
   function getSeconds (This : in out GameNotificationEvent) return Integer;
   function getBasicColorP (This : in out GameNotificationEvent) return BasicColor_Access;
   function getPermanent (This : in out GameNotificationEvent) return Boolean;
   procedure setString (This : in out GameNotificationEvent; string_Id : Unbounded_String);
   procedure setBasicColorP (This : in out GameNotificationEvent; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;


