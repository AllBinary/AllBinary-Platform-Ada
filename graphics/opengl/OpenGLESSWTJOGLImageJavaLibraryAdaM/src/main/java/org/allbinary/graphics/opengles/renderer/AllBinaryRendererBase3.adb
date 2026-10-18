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


with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package is

   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out AllBinaryRendererBase3'Class) is
   begin
      null;
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryRendererBase3'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryRendererBase3_Access is
      This : constant AllBinaryRendererBase3_Access := new AllBinaryRendererBase3;
   begin
      AllBinaryRendererBase3_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure update (This : in out AllBinaryRendererBase3; gl_Param : access GL10_Package.GL10'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      openGLESImage : OpenGLESImage_Access;
   begin
        while (This.list.size) > (0) loop
            openGLESImage := OpenGLESImage_Access (This.list.removeAt (0));
            if (openGLESImage) /= (null) then
                openGLESImage.set (gl);
            end if;
        end loop;
   end update;

   procedure add (This : in out AllBinaryRendererBase3; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        This.list.add (Java_Object_Access (image));
   end add;

end org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;


