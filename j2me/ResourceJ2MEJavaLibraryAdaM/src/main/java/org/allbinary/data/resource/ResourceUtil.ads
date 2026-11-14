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

with AllBinary_Java;
limited with org.allbinary.data.resource.ResourceUtil_Package;
package org.allbinary.data.resource.ResourceUtil_Package_References is
   type ResourceUtil_Access is access all org.allbinary.data.resource.ResourceUtil_Package.ResourceUtil'Class;
   type ResourceUtil_Access_Array is array (Natural range <>) of ResourceUtil_Access;
   type ResourceUtil_Access_Array_Access is access all ResourceUtil_Access_Array;
   type ResourceUtil_Access_Array_Access_Array is array (Natural range <>) of ResourceUtil_Access_Array_Access;
   type ResourceUtil_Access_Array_Access_Array_Access is access all ResourceUtil_Access_Array_Access_Array;
   type ResourceUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceUtil_Access_Array_Access is (if Value /= null and then Value.all in ResourceUtil_Access_Array_Object'Class then ResourceUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ResourceUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ResourceUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ResourceUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ResourceUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ResourceUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ResourceUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ResourceUtil_Access_Array_Access_Array_Object'Class then ResourceUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.resource.ResourceUtil_Package_References;

with org.allbinary.data.resource.ResourceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.data.resource.ResourceUtil_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype ResourceUtil_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access;
   function "=" (Left, Right : ResourceUtil_Access) return Boolean renames org.allbinary.data.resource.ResourceUtil_Package_References."=";
   subtype ResourceUtil_Access_Array is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array;
   function "=" (Left, Right : ResourceUtil_Access_Array) return Boolean renames org.allbinary.data.resource.ResourceUtil_Package_References."=";
   subtype ResourceUtil_Access_Array_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access;
   function "=" (Left, Right : ResourceUtil_Access_Array_Access) return Boolean renames org.allbinary.data.resource.ResourceUtil_Package_References."=";
   function Java_Box (Value : ResourceUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.resource.ResourceUtil_Package_References.Java_Box;
   function Java_Unbox_ResourceUtil_Access_Array (Value : access Java_Object'Class) return ResourceUtil_Access_Array_Access renames org.allbinary.data.resource.ResourceUtil_Package_References.Java_Unbox_ResourceUtil_Access_Array;
   subtype ResourceUtil_Access_Array_Access_Array is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ResourceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.data.resource.ResourceUtil_Package_References."=";
   subtype ResourceUtil_Access_Array_Access_Array_Access is org.allbinary.data.resource.ResourceUtil_Package_References.ResourceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ResourceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.resource.ResourceUtil_Package_References."=";
   function Java_Box (Value : ResourceUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.resource.ResourceUtil_Package_References.Java_Box;
   function Java_Unbox_ResourceUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ResourceUtil_Access_Array_Access_Array_Access renames org.allbinary.data.resource.ResourceUtil_Package_References.Java_Unbox_ResourceUtil_Access_Array_Access_Array;

   type ResourceUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ResourceUtil_Access;

   procedure Initialize (This : in out ResourceUtil'Class);
   function Create return ResourceUtil_Access;
   function getInstance return ResourceUtil_Access;
   procedure setLoadingPaths (This : in out ResourceUtil; path : Unbounded_String; ext : Unbounded_String);
   function getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String) return InputStream_Access;
   procedure getResourceAsStream (This : in out ResourceUtil; resource : Unbounded_String);
   function getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer) return InputStream_Access;
   procedure getResourceAsStreamAtStart (This : in out ResourceUtil; resource : Unbounded_String; startIndex : Integer);
   procedure addResource (This : in out ResourceUtil; resource : Unbounded_String; value : Integer);

end org.allbinary.data.resource.ResourceUtil_Package;


