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
limited with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;
package org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References is
   type WebappClassLoaderInfo_Access is access all org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package.WebappClassLoaderInfo'Class;
   type WebappClassLoaderInfo_Access_Array is array (Natural range <>) of WebappClassLoaderInfo_Access;
   type WebappClassLoaderInfo_Access_Array_Access is access all WebappClassLoaderInfo_Access_Array;
   type WebappClassLoaderInfo_Access_Array_Access_Array is array (Natural range <>) of WebappClassLoaderInfo_Access_Array_Access;
   type WebappClassLoaderInfo_Access_Array_Access_Array_Access is access all WebappClassLoaderInfo_Access_Array_Access_Array;
   type WebappClassLoaderInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebappClassLoaderInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : WebappClassLoaderInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebappClassLoaderInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebappClassLoaderInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebappClassLoaderInfo_Access_Array_Access is (if Value /= null and then Value.all in WebappClassLoaderInfo_Access_Array_Object'Class then WebappClassLoaderInfo_Access_Array_Object'Class (Value.all).Value else null);
   type WebappClassLoaderInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebappClassLoaderInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WebappClassLoaderInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebappClassLoaderInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebappClassLoaderInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebappClassLoaderInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WebappClassLoaderInfo_Access_Array_Access_Array_Object'Class then WebappClassLoaderInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References;

with org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.ClassLoader_Package; use java.lang.ClassLoader_Package;

package org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package is

   package ClassLoader_Package renames Standard.java.lang.ClassLoader_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WebappClassLoaderInfo_Access is org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.WebappClassLoaderInfo_Access;
   function "=" (Left, Right : WebappClassLoaderInfo_Access) return Boolean renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References."=";
   subtype WebappClassLoaderInfo_Access_Array is org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.WebappClassLoaderInfo_Access_Array;
   function "=" (Left, Right : WebappClassLoaderInfo_Access_Array) return Boolean renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References."=";
   subtype WebappClassLoaderInfo_Access_Array_Access is org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.WebappClassLoaderInfo_Access_Array_Access;
   function "=" (Left, Right : WebappClassLoaderInfo_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References."=";
   function Java_Box (Value : WebappClassLoaderInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.Java_Box;
   function Java_Unbox_WebappClassLoaderInfo_Access_Array (Value : access Java_Object'Class) return WebappClassLoaderInfo_Access_Array_Access renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.Java_Unbox_WebappClassLoaderInfo_Access_Array;
   subtype WebappClassLoaderInfo_Access_Array_Access_Array is org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.WebappClassLoaderInfo_Access_Array_Access_Array;
   function "=" (Left, Right : WebappClassLoaderInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References."=";
   subtype WebappClassLoaderInfo_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.WebappClassLoaderInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WebappClassLoaderInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References."=";
   function Java_Box (Value : WebappClassLoaderInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.Java_Box;
   function Java_Unbox_WebappClassLoaderInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return WebappClassLoaderInfo_Access_Array_Access_Array_Access renames org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package_References.Java_Unbox_WebappClassLoaderInfo_Access_Array_Access_Array;

   type WebappClassLoaderInfo is new Java_Object with null record;
   classLoader : Java_Object_Access;

   procedure Initialize (This : in out WebappClassLoaderInfo'Class);
   function Create return WebappClassLoaderInfo_Access;
   procedure setLoader (classLoader_Param : access ClassLoader_Package.ClassLoader'Class);
   function getLoader return ClassLoader_Access;

end org.allbinary.logic.system.loader.WebappClassLoaderInfo_Package;


