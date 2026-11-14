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
limited with org.allbinary.media.image.AndroidImageUtil_Package;
package org.allbinary.media.image.AndroidImageUtil_Package_References is
   type AndroidImageUtil_Access is access all org.allbinary.media.image.AndroidImageUtil_Package.AndroidImageUtil'Class;
   type AndroidImageUtil_Access_Array is array (Natural range <>) of AndroidImageUtil_Access;
   type AndroidImageUtil_Access_Array_Access is access all AndroidImageUtil_Access_Array;
   type AndroidImageUtil_Access_Array_Access_Array is array (Natural range <>) of AndroidImageUtil_Access_Array_Access;
   type AndroidImageUtil_Access_Array_Access_Array_Access is access all AndroidImageUtil_Access_Array_Access_Array;
   type AndroidImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidImageUtil_Access_Array_Access is (if Value /= null and then Value.all in AndroidImageUtil_Access_Array_Object'Class then AndroidImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidImageUtil_Access_Array_Access_Array_Object'Class then AndroidImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.AndroidImageUtil_Package_References;

with org.allbinary.media.image.AndroidImageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.graphics.Bitmap_Package;
with android.graphics.Bitmap_Package_References;
limited with android.graphics.Matrix_Package;
with android.graphics.Matrix_Package_References;
limited with android.graphics.Paint_Package;
with android.graphics.Paint_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;

package org.allbinary.media.image.AndroidImageUtil_Package is

   package Bitmap_Package renames Standard.android.graphics.Bitmap_Package;
   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package Paint_Package renames Standard.android.graphics.Paint_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Reference_Types is
   subtype Bitmap_Access is android.graphics.Bitmap_Package_References.Bitmap_Access;
   use type Bitmap_Access;
   subtype Bitmap_Access_Array is android.graphics.Bitmap_Package_References.Bitmap_Access_Array;
   use type Bitmap_Access_Array;
   subtype Bitmap_Access_Array_Access is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access;
   use type Bitmap_Access_Array_Access;
   subtype Bitmap_Access_Array_Access_Array is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access_Array;
   use type Bitmap_Access_Array_Access_Array;
   subtype Bitmap_Access_Array_Access_Array_Access is android.graphics.Bitmap_Package_References.Bitmap_Access_Array_Access_Array_Access;
   use type Bitmap_Access_Array_Access_Array_Access;
   subtype Matrix_Access is android.graphics.Matrix_Package_References.Matrix_Access;
   use type Matrix_Access;
   subtype Matrix_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array;
   use type Matrix_Access_Array;
   subtype Matrix_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access;
   use type Matrix_Access_Array_Access;
   subtype Matrix_Access_Array_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array;
   use type Matrix_Access_Array_Access_Array;
   subtype Matrix_Access_Array_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array_Access;
   use type Matrix_Access_Array_Access_Array_Access;
   subtype Paint_Access is android.graphics.Paint_Package_References.Paint_Access;
   use type Paint_Access;
   subtype Paint_Access_Array is android.graphics.Paint_Package_References.Paint_Access_Array;
   use type Paint_Access_Array;
   subtype Paint_Access_Array_Access is android.graphics.Paint_Package_References.Paint_Access_Array_Access;
   use type Paint_Access_Array_Access;
   subtype Paint_Access_Array_Access_Array is android.graphics.Paint_Package_References.Paint_Access_Array_Access_Array;
   use type Paint_Access_Array_Access_Array;
   subtype Paint_Access_Array_Access_Array_Access is android.graphics.Paint_Package_References.Paint_Access_Array_Access_Array_Access;
   use type Paint_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AndroidImageUtil_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access;
   function "=" (Left, Right : AndroidImageUtil_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array;
   function "=" (Left, Right : AndroidImageUtil_Access_Array) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   function Java_Box (Value : AndroidImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.AndroidImageUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidImageUtil_Access_Array (Value : access Java_Object'Class) return AndroidImageUtil_Access_Array_Access renames org.allbinary.media.image.AndroidImageUtil_Package_References.Java_Unbox_AndroidImageUtil_Access_Array;
   subtype AndroidImageUtil_Access_Array_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   subtype AndroidImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.AndroidImageUtil_Package_References."=";
   function Java_Box (Value : AndroidImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.AndroidImageUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidImageUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.AndroidImageUtil_Package_References.Java_Unbox_AndroidImageUtil_Access_Array_Access_Array;

   type AndroidImageUtil is new Java_Object with null record;
   instance : AndroidImageUtil_Access;

   procedure Initialize (This : in out AndroidImageUtil'Class);
   function Create return AndroidImageUtil_Access;
   function getInstance return AndroidImageUtil_Access;
   procedure paintBitmap (This : in out AndroidImageUtil; bitmap_Param : access Bitmap_Package.Bitmap'Class; originalBitmap_Param : access Bitmap_Package.Bitmap'Class; paint_Param : access Paint_Package.Paint'Class);
   procedure paint (This : in out AndroidImageUtil; image_Param : access Image_Package.Image'Class; originalImage_Param : access Image_Package.Image'Class; paint_Param : access Paint_Package.Paint'Class);
   procedure rotate (This : in out AndroidImageUtil; image_Param : access Image_Package.Image'Class; originalImage_Param : access Image_Package.Image'Class; matrix_Param : access Matrix_Package.Matrix'Class; paint_Param : access Paint_Package.Paint'Class);

end org.allbinary.media.image.AndroidImageUtil_Package;


