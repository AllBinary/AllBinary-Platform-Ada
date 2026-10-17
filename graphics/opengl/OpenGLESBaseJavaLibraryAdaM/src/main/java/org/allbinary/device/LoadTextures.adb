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


package body org.allbinary.device.LoadTextures_Package is

   procedure Initialize_Fields (This : in out LoadTextures'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LoadTextures'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LoadTextures_Access is
      This : constant LoadTextures_Access := new LoadTextures;
   begin
      LoadTextures_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure load (This : in out LoadTextures; gl_Param : access GL10'Class) is
      gl : GL10_Access := GL10_Access (gl_Param);
   begin
        null;
   end load;

end org.allbinary.device.LoadTextures_Package;


