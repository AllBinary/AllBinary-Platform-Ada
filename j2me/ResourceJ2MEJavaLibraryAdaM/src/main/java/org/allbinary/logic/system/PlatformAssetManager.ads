-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.logic.system.PlatformAssetManager_Package;
package org.allbinary.logic.system.PlatformAssetManager_Package_References is
   type PlatformAssetManager_Access is access all org.allbinary.logic.system.PlatformAssetManager_Package.PlatformAssetManager'Class;
   type PlatformAssetManager_Access_Array is array (Natural range <>) of PlatformAssetManager_Access;
   type PlatformAssetManager_Access_Array_Access is access all PlatformAssetManager_Access_Array;
   type PlatformAssetManager_Access_Array_Access_Array is array (Natural range <>) of PlatformAssetManager_Access_Array_Access;
   type PlatformAssetManager_Access_Array_Access_Array_Access is access all PlatformAssetManager_Access_Array_Access_Array;
   type PlatformAssetManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformAssetManager_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformAssetManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformAssetManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformAssetManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformAssetManager_Access_Array_Access is (if Value /= null and then Value.all in PlatformAssetManager_Access_Array_Object'Class then PlatformAssetManager_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformAssetManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformAssetManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformAssetManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformAssetManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformAssetManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformAssetManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformAssetManager_Access_Array_Access_Array_Object'Class then PlatformAssetManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.PlatformAssetManager_Package_References;

with org.allbinary.logic.system.PlatformAssetManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;

package org.allbinary.logic.system.PlatformAssetManager_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PlatformAssetManager_Access is org.allbinary.logic.system.PlatformAssetManager_Package_References.PlatformAssetManager_Access;
   function "=" (Left, Right : PlatformAssetManager_Access) return Boolean renames org.allbinary.logic.system.PlatformAssetManager_Package_References."=";
   subtype PlatformAssetManager_Access_Array is org.allbinary.logic.system.PlatformAssetManager_Package_References.PlatformAssetManager_Access_Array;
   function "=" (Left, Right : PlatformAssetManager_Access_Array) return Boolean renames org.allbinary.logic.system.PlatformAssetManager_Package_References."=";
   subtype PlatformAssetManager_Access_Array_Access is org.allbinary.logic.system.PlatformAssetManager_Package_References.PlatformAssetManager_Access_Array_Access;
   function "=" (Left, Right : PlatformAssetManager_Access_Array_Access) return Boolean renames org.allbinary.logic.system.PlatformAssetManager_Package_References."=";
   function Java_Box (Value : PlatformAssetManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.PlatformAssetManager_Package_References.Java_Box;
   function Java_Unbox_PlatformAssetManager_Access_Array (Value : access Java_Object'Class) return PlatformAssetManager_Access_Array_Access renames org.allbinary.logic.system.PlatformAssetManager_Package_References.Java_Unbox_PlatformAssetManager_Access_Array;
   subtype PlatformAssetManager_Access_Array_Access_Array is org.allbinary.logic.system.PlatformAssetManager_Package_References.PlatformAssetManager_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformAssetManager_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.PlatformAssetManager_Package_References."=";
   subtype PlatformAssetManager_Access_Array_Access_Array_Access is org.allbinary.logic.system.PlatformAssetManager_Package_References.PlatformAssetManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformAssetManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.PlatformAssetManager_Package_References."=";
   function Java_Box (Value : PlatformAssetManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.PlatformAssetManager_Package_References.Java_Box;
   function Java_Unbox_PlatformAssetManager_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformAssetManager_Access_Array_Access_Array_Access renames org.allbinary.logic.system.PlatformAssetManager_Package_References.Java_Unbox_PlatformAssetManager_Access_Array_Access_Array;

   type PlatformAssetManager is new Java_Object with null record;
   instance : PlatformAssetManager_Access;

   procedure Initialize (This : in out PlatformAssetManager'Class);
   function Create return PlatformAssetManager_Access;
   function getInstance return PlatformAssetManager_Access;
   function getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String) return InputStream_Access;
   procedure getResourceAsStream (This : in out PlatformAssetManager; resource : Unbounded_String);

end org.allbinary.logic.system.PlatformAssetManager_Package;


