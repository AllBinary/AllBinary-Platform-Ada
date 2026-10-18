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
with android.content.Context_Package; use android.content.Context_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.os.android.AndroidSystemProperties_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AndroidSystemProperties is tagged;
   type AndroidSystemProperties_Access is access all AndroidSystemProperties'Class;
   type AndroidSystemProperties_Access_Array is array (Natural range <>) of AndroidSystemProperties_Access;
   type AndroidSystemProperties_Access_Array_Access is access all AndroidSystemProperties_Access_Array;
   type AndroidSystemProperties_Access_Array_Access_Array is array (Natural range <>) of AndroidSystemProperties_Access_Array_Access;
   type AndroidSystemProperties_Access_Array_Access_Array_Access is access all AndroidSystemProperties_Access_Array_Access_Array;

   type AndroidSystemProperties is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   SINGLETON : AndroidSystemProperties_Access;

   procedure Initialize (This : in out AndroidSystemProperties'Class; context_Param : access Context_Package.Context'Class);
   function Create (context_Param : access Context_Package.Context'Class) return AndroidSystemProperties_Access;
   function getInstance return AndroidSystemProperties_Access;
   function getDeviceId (This : in out AndroidSystemProperties) return Unbounded_String;
   function getDeviceSoftwareVersion (This : in out AndroidSystemProperties) return Unbounded_String;
   function getLine1Number (This : in out AndroidSystemProperties) return Unbounded_String;
   function getNetworkCountryIso (This : in out AndroidSystemProperties) return Unbounded_String;
   function getNetworkOperator (This : in out AndroidSystemProperties) return Unbounded_String;
   function getNetworkOperatorName (This : in out AndroidSystemProperties) return Unbounded_String;
   function getSimCountryIso (This : in out AndroidSystemProperties) return Unbounded_String;
   function getSimOperator (This : in out AndroidSystemProperties) return Unbounded_String;
   function getSimOperatorName (This : in out AndroidSystemProperties) return Unbounded_String;
   function getSimSerialNumber (This : in out AndroidSystemProperties) return Unbounded_String;
   function getSubscriberId (This : in out AndroidSystemProperties) return Unbounded_String;
   function getVoiceMailAlphaTag (This : in out AndroidSystemProperties) return Unbounded_String;
   function getVoiceMailNumber (This : in out AndroidSystemProperties) return Unbounded_String;
   function getNetworkType (This : in out AndroidSystemProperties) return Integer;
   function getPhoneType (This : in out AndroidSystemProperties) return Integer;
   function getBoard (This : in out AndroidSystemProperties) return Unbounded_String;
   function getBrand (This : in out AndroidSystemProperties) return Unbounded_String;
   function getDevice (This : in out AndroidSystemProperties) return Unbounded_String;
   function getFingerprint (This : in out AndroidSystemProperties) return Unbounded_String;
   function getHost (This : in out AndroidSystemProperties) return Unbounded_String;
   function getId (This : in out AndroidSystemProperties) return Unbounded_String;
   function getModel (This : in out AndroidSystemProperties) return Unbounded_String;
   function getProduct (This : in out AndroidSystemProperties) return Unbounded_String;
   function getTags (This : in out AndroidSystemProperties) return Unbounded_String;
   function getTime (This : in out AndroidSystemProperties) return Long_Long_Integer;
   function getType (This : in out AndroidSystemProperties) return Unbounded_String;
   function getUser (This : in out AndroidSystemProperties) return Unbounded_String;

end org.allbinary.logic.system.os.android.AndroidSystemProperties_Package;


