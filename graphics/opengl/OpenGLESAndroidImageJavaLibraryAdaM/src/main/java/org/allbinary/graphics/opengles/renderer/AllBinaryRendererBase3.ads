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

limited with org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;
package org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References is
   type AllBinaryRendererBase3_Access is access all org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package.AllBinaryRendererBase3'Class;
   type AllBinaryRendererBase3_Access_Array is array (Natural range <>) of AllBinaryRendererBase3_Access;
   type AllBinaryRendererBase3_Access_Array_Access is access all AllBinaryRendererBase3_Access_Array;
   type AllBinaryRendererBase3_Access_Array_Access_Array is array (Natural range <>) of AllBinaryRendererBase3_Access_Array_Access;
   type AllBinaryRendererBase3_Access_Array_Access_Array_Access is access all AllBinaryRendererBase3_Access_Array_Access_Array;
end org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References;

with org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
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


   subtype AllBinaryRendererBase3_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access;
   function "=" (Left, Right : AllBinaryRendererBase3_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References."=";
   subtype AllBinaryRendererBase3_Access_Array is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array;
   function "=" (Left, Right : AllBinaryRendererBase3_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References."=";
   subtype AllBinaryRendererBase3_Access_Array_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access;
   function "=" (Left, Right : AllBinaryRendererBase3_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References."=";
   subtype AllBinaryRendererBase3_Access_Array_Access_Array is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryRendererBase3_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References."=";
   subtype AllBinaryRendererBase3_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References.AllBinaryRendererBase3_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryRendererBase3_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package_References."=";

   type AllBinaryRendererBase3 is new Java_Object with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AllBinaryRendererBase3'Class);
   function Create return AllBinaryRendererBase3_Access;
   procedure update (This : in out AllBinaryRendererBase3; gl_Param : access GL10_Package.GL10'Class);
   procedure add (This : in out AllBinaryRendererBase3; image_Param : access Image_Package.Image'Class);

end org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;


