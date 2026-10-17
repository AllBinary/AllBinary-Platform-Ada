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


package body org.allbinary.canvas.FullScreenUtil_Package is

   procedure Initialize_Fields (This : in out FullScreenUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out FullScreenUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FullScreenUtil_Access is
      This : constant FullScreenUtil_Access := new FullScreenUtil;
   begin
      FullScreenUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FullScreenUtil_Access is
   begin
        return FullScreenUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure initOnRun (This : in out FullScreenUtil; fullScreenInterface : Canvas_Access; commandListener : CommandListener_Access) is
   begin
        null;
   end initOnRun;

   procedure init (This : in out FullScreenUtil; fullScreenInterface : Canvas_Access) is
   begin
        null;
   end init;

   function isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) return Boolean is
   begin
        return False;
   end isScreenChange;

   function isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface : Canvas_Access) return Boolean is
   begin
        return This.isScreenChange (fullScreenInterface.isFullScreenMode);
   end isScreenChangeCanvas;

   procedure isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChange (isFullScreen);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChange;

   procedure isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface : Canvas_Access) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChangeCanvas (fullScreenInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChangeCanvas;

begin
   null;
   instance := FullScreenUtil_Package.Create;

end org.allbinary.canvas.FullScreenUtil_Package;


