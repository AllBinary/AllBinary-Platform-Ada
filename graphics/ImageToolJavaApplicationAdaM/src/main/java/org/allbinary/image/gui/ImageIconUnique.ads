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
limited with org.allbinary.image.gui.ImageIconUnique_Package;
package org.allbinary.image.gui.ImageIconUnique_Package_References is
   type ImageIconUnique_Access is access all org.allbinary.image.gui.ImageIconUnique_Package.ImageIconUnique'Class;
   type ImageIconUnique_Access_Array is array (Natural range <>) of ImageIconUnique_Access;
   type ImageIconUnique_Access_Array_Access is access all ImageIconUnique_Access_Array;
   type ImageIconUnique_Access_Array_Access_Array is array (Natural range <>) of ImageIconUnique_Access_Array_Access;
   type ImageIconUnique_Access_Array_Access_Array_Access is access all ImageIconUnique_Access_Array_Access_Array;
   type ImageIconUnique_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageIconUnique_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageIconUnique_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageIconUnique_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageIconUnique_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageIconUnique_Access_Array_Access is (if Value /= null and then Value.all in ImageIconUnique_Access_Array_Object'Class then ImageIconUnique_Access_Array_Object'Class (Value.all).Value else null);
   type ImageIconUnique_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageIconUnique_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageIconUnique_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageIconUnique_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageIconUnique_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageIconUnique_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageIconUnique_Access_Array_Access_Array_Object'Class then ImageIconUnique_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.image.gui.ImageIconUnique_Package_References;

with org.allbinary.image.gui.ImageIconUnique_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.image.gui.ImageIcon_Package; use org.allbinary.image.gui.ImageIcon_Package;

package org.allbinary.image.gui.ImageIconUnique_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ImageIconUnique_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access;
   function "=" (Left, Right : ImageIconUnique_Access) return Boolean renames org.allbinary.image.gui.ImageIconUnique_Package_References."=";
   subtype ImageIconUnique_Access_Array is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array;
   function "=" (Left, Right : ImageIconUnique_Access_Array) return Boolean renames org.allbinary.image.gui.ImageIconUnique_Package_References."=";
   subtype ImageIconUnique_Access_Array_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access;
   function "=" (Left, Right : ImageIconUnique_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageIconUnique_Package_References."=";
   function Java_Box (Value : ImageIconUnique_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageIconUnique_Package_References.Java_Box;
   function Java_Unbox_ImageIconUnique_Access_Array (Value : access Java_Object'Class) return ImageIconUnique_Access_Array_Access renames org.allbinary.image.gui.ImageIconUnique_Package_References.Java_Unbox_ImageIconUnique_Access_Array;
   subtype ImageIconUnique_Access_Array_Access_Array is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access_Array;
   function "=" (Left, Right : ImageIconUnique_Access_Array_Access_Array) return Boolean renames org.allbinary.image.gui.ImageIconUnique_Package_References."=";
   subtype ImageIconUnique_Access_Array_Access_Array_Access is org.allbinary.image.gui.ImageIconUnique_Package_References.ImageIconUnique_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageIconUnique_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.gui.ImageIconUnique_Package_References."=";
   function Java_Box (Value : ImageIconUnique_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.image.gui.ImageIconUnique_Package_References.Java_Box;
   function Java_Unbox_ImageIconUnique_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageIconUnique_Access_Array_Access_Array_Access renames org.allbinary.image.gui.ImageIconUnique_Package_References.Java_Unbox_ImageIconUnique_Access_Array_Access_Array;

   type ImageIconUnique is new ImageIcon with record
      id : Integer;
   end record;

   procedure Initialize (This : in out ImageIconUnique'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; index : Integer);
   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; index : Integer) return ImageIconUnique_Access;
   function getId (This : in out ImageIconUnique) return Integer;
   procedure setId (This : in out ImageIconUnique; id : Integer);

end org.allbinary.image.gui.ImageIconUnique_Package;


