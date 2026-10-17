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
with android.os.Build_Package; use android.os.Build_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.system.os.android.AndroidSystemProperties_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package Build_Package renames Standard.android.os.Build_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AndroidSystemProperties is tagged;
   type AndroidSystemProperties_Access is access all AndroidSystemProperties'Class;
   type AndroidSystemProperties_Access_Array is array (Natural range <>) of AndroidSystemProperties_Access;
   type AndroidSystemProperties_Access_Array_Access is access all AndroidSystemProperties_Access_Array;

   type AndroidSystemProperties is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   SINGLETON : AndroidSystemProperties_Access;

   procedure Initialize (This : in out AndroidSystemProperties'Class; context : Context_Access);
   function Create (context : Context_Access) return AndroidSystemProperties_Access;
   function getInstance return AndroidSystemProperties_Access;
   procedure getInstance;
   function getDeviceId (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getDeviceId (This : in out AndroidSystemProperties);
   function getDeviceSoftwareVersion (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getDeviceSoftwareVersion (This : in out AndroidSystemProperties);
   function getLine1Number (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getLine1Number (This : in out AndroidSystemProperties);
   function getNetworkCountryIso (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getNetworkCountryIso (This : in out AndroidSystemProperties);
   function getNetworkOperator (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getNetworkOperator (This : in out AndroidSystemProperties);
   function getNetworkOperatorName (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getNetworkOperatorName (This : in out AndroidSystemProperties);
   function getSimCountryIso (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getSimCountryIso (This : in out AndroidSystemProperties);
   function getSimOperator (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getSimOperator (This : in out AndroidSystemProperties);
   function getSimOperatorName (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getSimOperatorName (This : in out AndroidSystemProperties);
   function getSimSerialNumber (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getSimSerialNumber (This : in out AndroidSystemProperties);
   function getSubscriberId (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getSubscriberId (This : in out AndroidSystemProperties);
   function getVoiceMailAlphaTag (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getVoiceMailAlphaTag (This : in out AndroidSystemProperties);
   function getVoiceMailNumber (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getVoiceMailNumber (This : in out AndroidSystemProperties);
   function getNetworkType (This : in out AndroidSystemProperties) return Integer;
   procedure getNetworkType (This : in out AndroidSystemProperties);
   function getPhoneType (This : in out AndroidSystemProperties) return Integer;
   procedure getPhoneType (This : in out AndroidSystemProperties);
   function getBoard (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getBoard (This : in out AndroidSystemProperties);
   function getBrand (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getBrand (This : in out AndroidSystemProperties);
   function getDevice (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getDevice (This : in out AndroidSystemProperties);
   function getFingerprint (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getFingerprint (This : in out AndroidSystemProperties);
   function getHost (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getHost (This : in out AndroidSystemProperties);
   function getId (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getId (This : in out AndroidSystemProperties);
   function getModel (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getModel (This : in out AndroidSystemProperties);
   function getProduct (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getProduct (This : in out AndroidSystemProperties);
   function getTags (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getTags (This : in out AndroidSystemProperties);
   function getTime (This : in out AndroidSystemProperties) return Long_Long_Integer;
   procedure getTime (This : in out AndroidSystemProperties);
   function getType (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getType (This : in out AndroidSystemProperties);
   function getUser (This : in out AndroidSystemProperties) return Unbounded_String;
   procedure getUser (This : in out AndroidSystemProperties);

end org.allbinary.logic.system.os.android.AndroidSystemProperties_Package;


