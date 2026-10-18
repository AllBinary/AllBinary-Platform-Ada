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



package body org.allbinary.thread.BaseImageLoadingProcessor_Package is

   procedure Initialize_Fields (This : in out BaseImageLoadingProcessor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseImageLoadingProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseImageLoadingProcessor_Access is
      This : constant BaseImageLoadingProcessor_Access := new BaseImageLoadingProcessor;
   begin
      BaseImageLoadingProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BaseImageLoadingProcessor_Access is
   begin
        return BaseImageLoadingProcessor_Package.instance;
   end getInstance;

   procedure runTask (This : in out BaseImageLoadingProcessor) is
   begin
        null;
   end runTask;

begin
   null;
   instance := BaseImageLoadingProcessor_Package.Create;

end org.allbinary.thread.BaseImageLoadingProcessor_Package;


