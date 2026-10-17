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


package body org.allbinary.graphics.RendererStateFactory_Package is

   procedure Initialize_Fields (This : in out RendererStateFactory'Class) is
   begin
      null;
      This.loaded := False;
      This.surfaceChanged := False;
   end Initialize_Fields;

   procedure Initialize (This : in out RendererStateFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RendererStateFactory_Access is
      This : constant RendererStateFactory_Access := new RendererStateFactory;
   begin
      RendererStateFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RendererStateFactory_Access is
   begin
        return RendererStateFactory_Package.instance;
   end getInstance;

   procedure setLoaded (This : in out RendererStateFactory; loaded : Boolean) is
   begin
        This.loaded := loaded;
   end setLoaded;

   function isLoaded (This : in out RendererStateFactory) return Boolean is
   begin
        return This.loaded;
   end isLoaded;

   procedure setSurfaceChanged (This : in out RendererStateFactory; initialized : Boolean) is
   begin
        This.surfaceChanged := initialized;
   end setSurfaceChanged;

   function isSurfaceChanged (This : in out RendererStateFactory) return Boolean is
   begin
        return This.surfaceChanged;
   end isSurfaceChanged;

begin
   null;
   instance := RendererStateFactory_Package.Create;

end org.allbinary.graphics.RendererStateFactory_Package;


