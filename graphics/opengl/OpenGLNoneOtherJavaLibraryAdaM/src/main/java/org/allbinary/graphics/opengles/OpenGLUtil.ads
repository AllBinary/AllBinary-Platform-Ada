--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.graphics.opengles.OpenGLUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;

   type OpenGLUtil is tagged;
   type OpenGLUtil_Access is access all OpenGLUtil'Class;
   type OpenGLUtil_Access_Array is array (Natural range <>) of OpenGLUtil_Access;
   type OpenGLUtil_Access_Array_Access is access all OpenGLUtil_Access_Array;
   type OpenGLUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLUtil_Access_Array_Access;
   type OpenGLUtil_Access_Array_Access_Array_Access is access all OpenGLUtil_Access_Array_Access_Array;

   type OpenGLUtil is new Java_Object with null record;
   instance : OpenGLUtil_Access;

   procedure Initialize (This : in out OpenGLUtil'Class);
   function Create return OpenGLUtil_Access;
   function getInstance return OpenGLUtil_Access;
   function addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class) return Image_Access;
   procedure addImage (This : in out OpenGLUtil; image_Param : access Image_Package.Image'Class);
   procedure clear (This : in out OpenGLUtil);
   procedure addRunnable (This : in out OpenGLUtil; runnable_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.graphics.opengles.OpenGLUtil_Package;


