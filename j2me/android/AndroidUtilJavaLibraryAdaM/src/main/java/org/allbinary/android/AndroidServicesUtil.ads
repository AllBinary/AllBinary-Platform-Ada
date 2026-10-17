-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2019 AllBinary 
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
--  with java.util.List_Package; use java.util.List_Package;
with android.app.ActivityManager_Package; use android.app.ActivityManager_Package;
with android.app.ActivityManager.RunningServiceInfo_Package; use android.app.ActivityManager.RunningServiceInfo_Package;
with android.content.ComponentName_Package; use android.content.ComponentName_Package;
with android.content.Context_Package; use android.content.Context_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.android.AndroidServicesUtil_Package is

   package ActivityManager_Package renames Standard.android.app.ActivityManager_Package;
   package RunningServiceInfo_Package renames Standard.android.app.ActivityManager.RunningServiceInfo_Package;
   package ComponentName_Package renames Standard.android.content.ComponentName_Package;
   package Context_Package renames Standard.android.content.Context_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AndroidServicesUtil is tagged;
   type AndroidServicesUtil_Access is access all AndroidServicesUtil'Class;
   type AndroidServicesUtil_Access_Array is array (Natural range <>) of AndroidServicesUtil_Access;
   type AndroidServicesUtil_Access_Array_Access is access all AndroidServicesUtil_Access_Array;

   type AndroidServicesUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      resourceUtil : ResourceUtil_Access;
      SERVICE_LIMIT_MAX : Integer;
      IS_SERVICE_RUNNING : Unbounded_String;
      SERVICE_NOT_FOUND_RUNNING : Unbounded_String;
   end record;
   instance : AndroidServicesUtil_Access;

   procedure Initialize (This : in out AndroidServicesUtil'Class);
   function Create return AndroidServicesUtil_Access;
   function getInstance return AndroidServicesUtil_Access;
   procedure getInstance;
   function isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String) return Boolean;
   procedure isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String);

end org.allbinary.android.AndroidServicesUtil_Package;


