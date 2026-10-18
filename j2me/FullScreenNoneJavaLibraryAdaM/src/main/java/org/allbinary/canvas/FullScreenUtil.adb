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
   procedure initOnRun (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class) is
      fullScreenInterface : constant Canvas_Access := Canvas_Access (fullScreenInterface_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
   begin
        if (commandListener) /= (null) then
            FullScreenUtil'Class (This).init (fullScreenInterface);
        end if;
   end initOnRun;

   procedure init (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) is
      fullScreenInterface : constant Canvas_Access := Canvas_Access (fullScreenInterface_Param);
   begin
        null;
   end init;

   function isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) return Boolean is
      mainFeatureFactory : MainFeatureFactory_Access;
      features : Features_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        features := Features_Package.getInstance;
        if (features.isFeature (mainFeatureFactory.FULL_SCREEN)) /= (isFullScreen) then
            return True;
        end if;
        return False;
   end isScreenChange;

   function isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) return Boolean is
      fullScreenInterface : constant Canvas_Access := Canvas_Access (fullScreenInterface_Param);
   begin
        return FullScreenUtil'Class (This).isScreenChange (False);
   end isScreenChangeCanvas;

   procedure isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChange (isFullScreen);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChange;

   procedure isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChangeCanvas (fullScreenInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChangeCanvas;

begin
   null;
   instance := FullScreenUtil_Package.Create;

end org.allbinary.canvas.FullScreenUtil_Package;


