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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.Sounds_Package; use org.allbinary.media.audio.Sounds_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package; use org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AllBinaryMediaManager is tagged;
   type AllBinaryMediaManager_Access is access all AllBinaryMediaManager'Class;
   type AllBinaryMediaManager_Access_Array is array (Natural range <>) of AllBinaryMediaManager_Access;
   type AllBinaryMediaManager_Access_Array_Access is access all AllBinaryMediaManager_Access_Array;

   type AllBinaryMediaManager is new Java_Object with null record;
   THIS_Id : Unbounded_String;

   procedure Initialize (This : in out AllBinaryMediaManager'Class);
   function Create return AllBinaryMediaManager_Access;
   function isMuted return Boolean;
   procedure setMuted (aMuted : Boolean);
   function update return Boolean;
   procedure init (soundsFactoryInterface_Param : access SoundsFactoryInterface'Class);
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface'Class);
   function createPlayerFromInputStream (stream_Param : access InputStream'Class; type_Id : Unbounded_String) return Player_Access;
   procedure createPlayerFromInputStream (stream_Param : access InputStream'Class; type_Id : Unbounded_String);
   function createPlayer (locator : Unbounded_String) return Player_Access;
   procedure createPlayer (locator : Unbounded_String);
   procedure playTone (frequency : Integer; time : Integer; volume : Integer);
   function getSupportedContentTypes (protocol : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getSupportedContentTypes (protocol : Unbounded_String);
   function getSupportedProtocols (content_type : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getSupportedProtocols (content_type : Unbounded_String);

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


