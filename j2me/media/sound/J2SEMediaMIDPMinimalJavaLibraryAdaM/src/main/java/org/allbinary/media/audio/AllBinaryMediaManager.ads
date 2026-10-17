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
--  with java.io.BufferedInputStream_Package; use java.io.BufferedInputStream_Package;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.microedition.media.Manager_Package; use javax.microedition.media.Manager_Package;
--  with javax.microedition.media.MediaException_Package; use javax.microedition.media.MediaException_Package;
--  with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.audio.AudioContentTypeDataFactory_Package; use org.allbinary.audio.AudioContentTypeDataFactory_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package AudioContentTypeDataFactory_Package renames Standard.org.allbinary.audio.AudioContentTypeDataFactory_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AllBinaryMediaManager is tagged;
   type AllBinaryMediaManager_Access is access all AllBinaryMediaManager'Class;
   type AllBinaryMediaManager_Access_Array is array (Natural range <>) of AllBinaryMediaManager_Access;
   type AllBinaryMediaManager_Access_Array_Access is access all AllBinaryMediaManager_Access_Array;

   type AllBinaryMediaManager is new Java_Object with null record;
   THIS_Id : Unbounded_String;
   CREATE_PLAYER : Unbounded_String;

   procedure Initialize (This : in out AllBinaryMediaManager'Class);
   function Create return AllBinaryMediaManager_Access;
   function isMuted return Boolean;
   procedure isMuted;
   procedure setMuted (aMuted : Boolean);
   function update return Boolean;
   procedure update;
   procedure init (soundsFactoryInterface : SoundsFactoryInterface_Access);
   procedure shutdown (soundsFactoryInterface : SoundsFactoryInterface_Access);
   function createPlayer (resource : Unbounded_String) return Player_Access;
   procedure createPlayer (resource : Unbounded_String);
   function createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String) return Player_Access;
   procedure createPlayerFromInputStream (stream : InputStream_Access; type_Id : Unbounded_String);
   procedure playTone (frequency : Integer; time : Integer; volume : Integer);
   function isInitialized return Boolean;
   procedure isInitialized;

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


