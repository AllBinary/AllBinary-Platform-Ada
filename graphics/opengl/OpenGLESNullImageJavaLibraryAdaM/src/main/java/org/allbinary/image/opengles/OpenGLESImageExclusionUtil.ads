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
limited with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;
package org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References is
   type OpenGLESImageExclusionUtil_Access is access all org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package.OpenGLESImageExclusionUtil'Class;
   type OpenGLESImageExclusionUtil_Access_Array is array (Natural range <>) of OpenGLESImageExclusionUtil_Access;
   type OpenGLESImageExclusionUtil_Access_Array_Access is access all OpenGLESImageExclusionUtil_Access_Array;
   type OpenGLESImageExclusionUtil_Access_Array_Access_Array is array (Natural range <>) of OpenGLESImageExclusionUtil_Access_Array_Access;
   type OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is access all OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   type OpenGLESImageExclusionUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageExclusionUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageExclusionUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageExclusionUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageExclusionUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageExclusionUtil_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageExclusionUtil_Access_Array_Object'Class then OpenGLESImageExclusionUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OpenGLESImageExclusionUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OpenGLESImageExclusionUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OpenGLESImageExclusionUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OpenGLESImageExclusionUtil_Access_Array_Access_Array_Object'Class then OpenGLESImageExclusionUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References;

with org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLESImageExclusionUtil_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   function Java_Box (Value : OpenGLESImageExclusionUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageExclusionUtil_Access_Array (Value : access Java_Object'Class) return OpenGLESImageExclusionUtil_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.Java_Unbox_OpenGLESImageExclusionUtil_Access_Array;
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   subtype OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References."=";
   function Java_Box (Value : OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.Java_Box;
   function Java_Unbox_OpenGLESImageExclusionUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OpenGLESImageExclusionUtil_Access_Array_Access_Array_Access renames org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package_References.Java_Unbox_OpenGLESImageExclusionUtil_Access_Array_Access_Array;

   type OpenGLESImageExclusionUtil is new Java_Object with record
      list : BasicArrayList_Access;
   end record;
   instance : OpenGLESImageExclusionUtil_Access;

   procedure Initialize (This : in out OpenGLESImageExclusionUtil'Class);
   function Create return OpenGLESImageExclusionUtil_Access;
   function getInstance return OpenGLESImageExclusionUtil_Access;
   function isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class) return Boolean;
   procedure isCustomScaling (This : in out OpenGLESImageExclusionUtil; image_Param : access Image_Package.Image'Class);

end org.allbinary.image.opengles.OpenGLESImageExclusionUtil_Package;


