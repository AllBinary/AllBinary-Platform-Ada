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
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.net.URL_Package; use java.net.URL_Package;
--  with java.net.URLConnection_Package; use java.net.URLConnection_Package;
--  with java.util.jar.JarEntry_Package; use java.util.jar.JarEntry_Package;
--  with java.util.jar.JarInputStream_Package; use java.util.jar.JarInputStream_Package;

package org.allbinary.logic.java.jar.JarUtil_Package is


   type JarUtil is tagged;
   type JarUtil_Access is access all JarUtil'Class;
   type JarUtil_Access_Array is array (Natural range <>) of JarUtil_Access;
   type JarUtil_Access_Array_Access is access all JarUtil_Access_Array;

   type JarUtil is new Java_Object with record
      jarURL : URL_Access;
   end record;

   procedure Initialize (This : in out JarUtil'Class; jarURL_Param : access URL_Package.URL'Class);
   function Create (jarURL_Param : access URL_Package.URL'Class) return JarUtil_Access;
   procedure show (This : in out JarUtil);
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.java.jar.JarUtil_Package;


