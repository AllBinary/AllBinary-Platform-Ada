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

limited with org.allbinary.media.audio.AllBinaryMediaManager_Package;
package org.allbinary.media.audio.AllBinaryMediaManager_Package_References is
   type AllBinaryMediaManager_Access is access all org.allbinary.media.audio.AllBinaryMediaManager_Package.AllBinaryMediaManager'Class;
   type AllBinaryMediaManager_Access_Array is array (Natural range <>) of AllBinaryMediaManager_Access;
   type AllBinaryMediaManager_Access_Array_Access is access all AllBinaryMediaManager_Access_Array;
   type AllBinaryMediaManager_Access_Array_Access_Array is array (Natural range <>) of AllBinaryMediaManager_Access_Array_Access;
   type AllBinaryMediaManager_Access_Array_Access_Array_Access is access all AllBinaryMediaManager_Access_Array_Access_Array;
end org.allbinary.media.audio.AllBinaryMediaManager_Package_References;

with org.allbinary.media.audio.AllBinaryMediaManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with javax.microedition.media.Player_Package;
with javax.microedition.media.Player_Package_References;
limited with org.allbinary.media.audio.SoundsFactoryInterface_Package;
with org.allbinary.media.audio.SoundsFactoryInterface_Package_References;

package org.allbinary.media.audio.AllBinaryMediaManager_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   package Reference_Types is
   subtype Player_Access is javax.microedition.media.Player_Package_References.Player_Access;
   use type Player_Access;
   subtype Player_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array;
   use type Player_Access_Array;
   subtype Player_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access;
   use type Player_Access_Array_Access;
   subtype Player_Access_Array_Access_Array is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array;
   use type Player_Access_Array_Access_Array;
   subtype Player_Access_Array_Access_Array_Access is javax.microedition.media.Player_Package_References.Player_Access_Array_Access_Array_Access;
   use type Player_Access_Array_Access_Array_Access;
   subtype SoundsFactoryInterface_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access;
   use type SoundsFactoryInterface_Access;
   subtype SoundsFactoryInterface_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array;
   use type SoundsFactoryInterface_Access_Array;
   subtype SoundsFactoryInterface_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access;
   use type SoundsFactoryInterface_Access_Array_Access;
   subtype SoundsFactoryInterface_Access_Array_Access_Array is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array;
   use type SoundsFactoryInterface_Access_Array_Access_Array;
   subtype SoundsFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.audio.SoundsFactoryInterface_Package_References.SoundsFactoryInterface_Access_Array_Access_Array_Access;
   use type SoundsFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryMediaManager_Access is org.allbinary.media.audio.AllBinaryMediaManager_Package_References.AllBinaryMediaManager_Access;
   function "=" (Left, Right : AllBinaryMediaManager_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManager_Package_References."=";
   subtype AllBinaryMediaManager_Access_Array is org.allbinary.media.audio.AllBinaryMediaManager_Package_References.AllBinaryMediaManager_Access_Array;
   function "=" (Left, Right : AllBinaryMediaManager_Access_Array) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManager_Package_References."=";
   subtype AllBinaryMediaManager_Access_Array_Access is org.allbinary.media.audio.AllBinaryMediaManager_Package_References.AllBinaryMediaManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMediaManager_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManager_Package_References."=";
   subtype AllBinaryMediaManager_Access_Array_Access_Array is org.allbinary.media.audio.AllBinaryMediaManager_Package_References.AllBinaryMediaManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMediaManager_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManager_Package_References."=";
   subtype AllBinaryMediaManager_Access_Array_Access_Array_Access is org.allbinary.media.audio.AllBinaryMediaManager_Package_References.AllBinaryMediaManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMediaManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.AllBinaryMediaManager_Package_References."=";

   type AllBinaryMediaManager is new Java_Object with null record;
   THIS_Id : Unbounded_String;

   procedure Initialize (This : in out AllBinaryMediaManager'Class);
   function Create return AllBinaryMediaManager_Access;
   function isMuted return Boolean;
   procedure setMuted (aMuted : Boolean);
   function update return Boolean;
   procedure init (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class);
   procedure shutdown (soundsFactoryInterface_Param : access SoundsFactoryInterface_Package.SoundsFactoryInterface'Class);
   function createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String) return Player_Access;
   procedure createPlayerFromInputStream (stream_Param : access InputStream_Package.InputStream'Class; type_Id : Unbounded_String);
   function createPlayer (locator : Unbounded_String) return Player_Access;
   procedure createPlayer (locator : Unbounded_String);
   procedure playTone (frequency : Integer; time : Integer; volume : Integer);
   function getSupportedContentTypes (protocol : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getSupportedContentTypes (protocol : Unbounded_String);
   function getSupportedProtocols (content_type : Unbounded_String) return Unbounded_String_Array_Access;
   procedure getSupportedProtocols (content_type : Unbounded_String);

end org.allbinary.media.audio.AllBinaryMediaManager_Package;


