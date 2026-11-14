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
limited with org.allbinary.image.ImageTool_Package;
package org.allbinary.image.ImageTool_Package_References is
   type ImageTool_Access is access all org.allbinary.image.ImageTool_Package.ImageTool'Class;
   type ImageTool_Access_Array is array (Natural range <>) of ImageTool_Access;
   type ImageTool_Access_Array_Access is access all ImageTool_Access_Array;
   type ImageTool_Access_Array_Access_Array is array (Natural range <>) of ImageTool_Access_Array_Access;
   type ImageTool_Access_Array_Access_Array_Access is access all ImageTool_Access_Array_Access_Array;
   type ImageTool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageTool_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageTool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageTool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageTool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageTool_Access_Array_Access is (if Value /= null and then Value.all in ImageTool_Access_Array_Object'Class then ImageTool_Access_Array_Object'Class (Value.all).Value else null);
   type ImageTool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageTool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageTool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageTool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageTool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageTool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageTool_Access_Array_Access_Array_Object'Class then ImageTool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.ImageTool_Package_References;

with org.allbinary.image.ImageTool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
--  with java.awt.EventQueue_Package; use java.awt.EventQueue_Package;

package org.allbinary.image.ImageTool_Package is

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


   subtype ImageTool_Access is org.allbinary.image.ImageTool_Package_References.ImageTool_Access;
   function "=" (Left, Right : ImageTool_Access) return Boolean renames org.allbinary.image.ImageTool_Package_References."=";
   subtype ImageTool_Access_Array is org.allbinary.image.ImageTool_Package_References.ImageTool_Access_Array;
   function "=" (Left, Right : ImageTool_Access_Array) return Boolean renames org.allbinary.image.ImageTool_Package_References."=";
   subtype ImageTool_Access_Array_Access is org.allbinary.image.ImageTool_Package_References.ImageTool_Access_Array_Access;
   function "=" (Left, Right : ImageTool_Access_Array_Access) return Boolean renames org.allbinary.image.ImageTool_Package_References."=";
   function Java_Box (Value : ImageTool_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageTool_Package_References.Java_Box;
   function Java_Unbox_ImageTool_Access_Array (Value : access Java_Object'Class) return ImageTool_Access_Array_Access renames org.allbinary.image.ImageTool_Package_References.Java_Unbox_ImageTool_Access_Array;
   subtype ImageTool_Access_Array_Access_Array is org.allbinary.image.ImageTool_Package_References.ImageTool_Access_Array_Access_Array;
   function "=" (Left, Right : ImageTool_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageTool_Package_References."=";
   subtype ImageTool_Access_Array_Access_Array_Access is org.allbinary.image.ImageTool_Package_References.ImageTool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageTool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageTool_Package_References."=";
   function Java_Box (Value : ImageTool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.ImageTool_Package_References.Java_Box;
   function Java_Unbox_ImageTool_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageTool_Access_Array_Access_Array_Access renames org.allbinary.image.ImageTool_Package_References.Java_Unbox_ImageTool_Access_Array_Access_Array;

   type ImageTool is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ImageTool'Class);
   function Create return ImageTool_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.image.ImageTool_Package;


