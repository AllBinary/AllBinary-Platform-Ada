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
limited with org.allbinary.logic.java.jar.JarUtil_Package;
package org.allbinary.logic.java.jar.JarUtil_Package_References is
   type JarUtil_Access is access all org.allbinary.logic.java.jar.JarUtil_Package.JarUtil'Class;
   type JarUtil_Access_Array is array (Natural range <>) of JarUtil_Access;
   type JarUtil_Access_Array_Access is access all JarUtil_Access_Array;
   type JarUtil_Access_Array_Access_Array is array (Natural range <>) of JarUtil_Access_Array_Access;
   type JarUtil_Access_Array_Access_Array_Access is access all JarUtil_Access_Array_Access_Array;
   type JarUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JarUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : JarUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JarUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JarUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JarUtil_Access_Array_Access is (if Value /= null and then Value.all in JarUtil_Access_Array_Object'Class then JarUtil_Access_Array_Object'Class (Value.all).Value else null);
   type JarUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : JarUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : JarUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new JarUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_JarUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return JarUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in JarUtil_Access_Array_Access_Array_Object'Class then JarUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.jar.JarUtil_Package_References;

with org.allbinary.logic.java.jar.JarUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.net.URL_Package; use java.net.URL_Package;
--  with java.net.URLConnection_Package; use java.net.URLConnection_Package;
--  with java.util.jar.JarEntry_Package; use java.util.jar.JarEntry_Package;
--  with java.util.jar.JarInputStream_Package; use java.util.jar.JarInputStream_Package;

package org.allbinary.logic.java.jar.JarUtil_Package is

   package URL_Package renames Standard.java.net.URL_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype JarUtil_Access is org.allbinary.logic.java.jar.JarUtil_Package_References.JarUtil_Access;
   function "=" (Left, Right : JarUtil_Access) return Boolean renames org.allbinary.logic.java.jar.JarUtil_Package_References."=";
   subtype JarUtil_Access_Array is org.allbinary.logic.java.jar.JarUtil_Package_References.JarUtil_Access_Array;
   function "=" (Left, Right : JarUtil_Access_Array) return Boolean renames org.allbinary.logic.java.jar.JarUtil_Package_References."=";
   subtype JarUtil_Access_Array_Access is org.allbinary.logic.java.jar.JarUtil_Package_References.JarUtil_Access_Array_Access;
   function "=" (Left, Right : JarUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.java.jar.JarUtil_Package_References."=";
   function Java_Box (Value : JarUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.jar.JarUtil_Package_References.Java_Box;
   function Java_Unbox_JarUtil_Access_Array (Value : access Java_Object'Class) return JarUtil_Access_Array_Access renames org.allbinary.logic.java.jar.JarUtil_Package_References.Java_Unbox_JarUtil_Access_Array;
   subtype JarUtil_Access_Array_Access_Array is org.allbinary.logic.java.jar.JarUtil_Package_References.JarUtil_Access_Array_Access_Array;
   function "=" (Left, Right : JarUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.jar.JarUtil_Package_References."=";
   subtype JarUtil_Access_Array_Access_Array_Access is org.allbinary.logic.java.jar.JarUtil_Package_References.JarUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : JarUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.jar.JarUtil_Package_References."=";
   function Java_Box (Value : JarUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.jar.JarUtil_Package_References.Java_Box;
   function Java_Unbox_JarUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return JarUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.java.jar.JarUtil_Package_References.Java_Unbox_JarUtil_Access_Array_Access_Array;

   type JarUtil is new Java_Object with record
      jarURL : URL_Access;
   end record;

   procedure Initialize (This : in out JarUtil'Class; jarURL_Param : access URL_Package.URL'Class);
   function Create (jarURL_Param : access URL_Package.URL'Class) return JarUtil_Access;
   procedure show (This : in out JarUtil);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.java.jar.JarUtil_Package;


