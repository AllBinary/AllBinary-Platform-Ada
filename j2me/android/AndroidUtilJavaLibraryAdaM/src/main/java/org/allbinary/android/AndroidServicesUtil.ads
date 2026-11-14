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

with AllBinary_Java;
limited with org.allbinary.android.AndroidServicesUtil_Package;
package org.allbinary.android.AndroidServicesUtil_Package_References is
   type AndroidServicesUtil_Access is access all org.allbinary.android.AndroidServicesUtil_Package.AndroidServicesUtil'Class;
   type AndroidServicesUtil_Access_Array is array (Natural range <>) of AndroidServicesUtil_Access;
   type AndroidServicesUtil_Access_Array_Access is access all AndroidServicesUtil_Access_Array;
   type AndroidServicesUtil_Access_Array_Access_Array is array (Natural range <>) of AndroidServicesUtil_Access_Array_Access;
   type AndroidServicesUtil_Access_Array_Access_Array_Access is access all AndroidServicesUtil_Access_Array_Access_Array;
   type AndroidServicesUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidServicesUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidServicesUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidServicesUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidServicesUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidServicesUtil_Access_Array_Access is (if Value /= null and then Value.all in AndroidServicesUtil_Access_Array_Object'Class then AndroidServicesUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidServicesUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidServicesUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidServicesUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidServicesUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidServicesUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidServicesUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidServicesUtil_Access_Array_Access_Array_Object'Class then AndroidServicesUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.AndroidServicesUtil_Package_References;

with org.allbinary.android.AndroidServicesUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.List_Package; use java.util.List_Package;
limited with org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.data.resource.ResourceUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.android.AndroidServicesUtil_Package is

   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype ResourceUtil_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access;
   use type ResourceUtil_Access;
   subtype ResourceUtil_Access_Array is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array;
   use type ResourceUtil_Access_Array;
   subtype ResourceUtil_Access_Array_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access;
   use type ResourceUtil_Access_Array_Access;
   subtype ResourceUtil_Access_Array_Access_Array is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access_Array;
   use type ResourceUtil_Access_Array_Access_Array;
   subtype ResourceUtil_Access_Array_Access_Array_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access_Array_Access;
   use type ResourceUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidServicesUtil_Access is org.allbinary.android.AndroidServicesUtil_Package_References.AndroidServicesUtil_Access;
   function "=" (Left, Right : AndroidServicesUtil_Access) return Boolean renames org.allbinary.android.AndroidServicesUtil_Package_References."=";
   subtype AndroidServicesUtil_Access_Array is org.allbinary.android.AndroidServicesUtil_Package_References.AndroidServicesUtil_Access_Array;
   function "=" (Left, Right : AndroidServicesUtil_Access_Array) return Boolean renames org.allbinary.android.AndroidServicesUtil_Package_References."=";
   subtype AndroidServicesUtil_Access_Array_Access is org.allbinary.android.AndroidServicesUtil_Package_References.AndroidServicesUtil_Access_Array_Access;
   function "=" (Left, Right : AndroidServicesUtil_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidServicesUtil_Package_References."=";
   function Java_Box (Value : AndroidServicesUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.AndroidServicesUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidServicesUtil_Access_Array (Value : access Java_Object'Class) return AndroidServicesUtil_Access_Array_Access renames org.allbinary.android.AndroidServicesUtil_Package_References.Java_Unbox_AndroidServicesUtil_Access_Array;
   subtype AndroidServicesUtil_Access_Array_Access_Array is org.allbinary.android.AndroidServicesUtil_Package_References.AndroidServicesUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidServicesUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.android.AndroidServicesUtil_Package_References."=";
   subtype AndroidServicesUtil_Access_Array_Access_Array_Access is org.allbinary.android.AndroidServicesUtil_Package_References.AndroidServicesUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidServicesUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidServicesUtil_Package_References."=";
   function Java_Box (Value : AndroidServicesUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.AndroidServicesUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidServicesUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidServicesUtil_Access_Array_Access_Array_Access renames org.allbinary.android.AndroidServicesUtil_Package_References.Java_Unbox_AndroidServicesUtil_Access_Array_Access_Array;

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
   function isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String) return Boolean;
   procedure isServiceRunning (This : in out AndroidServicesUtil; name : Unbounded_String);

end org.allbinary.android.AndroidServicesUtil_Package;


