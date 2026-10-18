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
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package is


   type SavedCaptureGenericProfileDataWorkerType is tagged;
   type SavedCaptureGenericProfileDataWorkerType_Access is access all SavedCaptureGenericProfileDataWorkerType'Class;
   type SavedCaptureGenericProfileDataWorkerType_Access_Array is array (Natural range <>) of SavedCaptureGenericProfileDataWorkerType_Access;
   type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access is access all SavedCaptureGenericProfileDataWorkerType_Access_Array;
   type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array is array (Natural range <>) of SavedCaptureGenericProfileDataWorkerType_Access_Array_Access;
   type SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array_Access is access all SavedCaptureGenericProfileDataWorkerType_Access_Array_Access_Array;

   type SavedCaptureGenericProfileDataWorkerType is new GenericProfileDataWorkerType with record
      path : Unbounded_String;
      lastFrame : Integer;
   end record;
   SAVED_CAPTURE : SavedCaptureGenericProfileDataWorkerType_Access;

   procedure Initialize (This : in out SavedCaptureGenericProfileDataWorkerType'Class; name : Unbounded_String; path : Unbounded_String; lastFrame : Integer);
   function Create (name : Unbounded_String; path : Unbounded_String; lastFrame : Integer) return SavedCaptureGenericProfileDataWorkerType_Access;
   function getPath (This : in out SavedCaptureGenericProfileDataWorkerType) return Unbounded_String;
   procedure setPath (This : in out SavedCaptureGenericProfileDataWorkerType; path : Unbounded_String);
   function getLastFrame (This : in out SavedCaptureGenericProfileDataWorkerType) return Integer;
   procedure setLastFrame (This : in out SavedCaptureGenericProfileDataWorkerType; lastFrame : Integer);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;


