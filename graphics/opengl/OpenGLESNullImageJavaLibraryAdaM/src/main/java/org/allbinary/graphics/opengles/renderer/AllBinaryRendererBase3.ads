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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package is

   package OpenGLESImage_Package renames org.allbinary.image.opengles.OpenGLESImage_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type AllBinaryRendererBase3 is tagged;
   type AllBinaryRendererBase3_Access is access all AllBinaryRendererBase3'Class;
   type AllBinaryRendererBase3_Access_Array is array (Natural range <>) of AllBinaryRendererBase3_Access;
   type AllBinaryRendererBase3_Access_Array_Access is access all AllBinaryRendererBase3_Access_Array;

   type AllBinaryRendererBase3 is new Java_Object with record
      list : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out AllBinaryRendererBase3'Class);
   function Create return AllBinaryRendererBase3_Access;
   procedure update (This : in out AllBinaryRendererBase3; gl : GL10_Access);
   procedure add (This : in out AllBinaryRendererBase3; image : Image_Access);

end org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;


