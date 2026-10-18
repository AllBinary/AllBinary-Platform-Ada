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


with org.allbinary.graphics.ScreenCaptureNoneFactory_Package; use org.allbinary.graphics.ScreenCaptureNoneFactory_Package;

package body org.allbinary.graphics.ScreenCaptureFactory_Package is

   procedure Initialize_Fields (This : in out ScreenCaptureFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenCaptureFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenCaptureFactory_Access is
      This : constant ScreenCaptureFactory_Access := new ScreenCaptureFactory;
   begin
      ScreenCaptureFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScreenCapture_Access is
   begin
        return ScreenCaptureFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := ScreenCaptureNoneFactory_Package.getInstance;

end org.allbinary.graphics.ScreenCaptureFactory_Package;


