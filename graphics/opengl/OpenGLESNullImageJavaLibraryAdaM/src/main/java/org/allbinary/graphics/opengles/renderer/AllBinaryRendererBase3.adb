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


package body org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package is

   procedure Initialize_Fields (This : in out AllBinaryRendererBase3'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out AllBinaryRendererBase3'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryRendererBase3_Access is
      This : constant AllBinaryRendererBase3_Access := new AllBinaryRendererBase3;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure update (This : in out AllBinaryRendererBase3; gl : GL10_Access) is
      openGLESImage : OpenGLESImage_Access;
   begin
        while (This.list.size) > (0) loop
            openGLESImage := OpenGLESImage_Access (This.list.removeAt (0));
            if (openGLESImage) /= (null) then
                openGLESImage.set (gl);
            end if;
        end loop;
   end update;

   procedure add (This : in out AllBinaryRendererBase3; image : Image_Access) is
   begin
        This.list.add (image);
   end add;

end org.allbinary.graphics.opengles.renderer.AllBinaryRendererBase3_Package;


