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


package body org.allbinary.game.displayable.RepaintBehavior_Package is

   procedure Initialize_Fields (This : in out RepaintBehavior'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NAME := To_Unbounded_String ("RepaintBehavior");
   end Initialize_Fields;

   procedure Initialize (This : in out RepaintBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RepaintBehavior_Access is
      This : constant RepaintBehavior_Access := new RepaintBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return RepaintBehavior_Access is
   begin
        return RepaintBehavior_Package.instance;
   end getInstance;

   procedure repaint (This : in out RepaintBehavior; canvas : Canvas_Access) is
   begin
        null;
   end repaint;

   procedure onChangeRepaint (This : in out RepaintBehavior; canvas : Canvas_Access) is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      thread : Thread_Access;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if features.isFeature (openGLFeatureFactory.OPENGL) then
            DisplayInfoSingleton_Package.getInstance.process;
        else
            thread := Thread_Package.Create (ARunnable_Package.Create  --  Java anonymous class body: implement it as a named type
--                  
--     procedure run (This : in out ) is
--        commonStrings : CommonStrings_Access;
--        logUtil : LogUtil_Access;
--     begin
--                      begin
--                          canvas.repaint;
--                          DisplayInfoSingleton_Package.getInstance.process;
--                      exception
--                          when e : others =>
--                          commonStrings := CommonStrings_Package.getInstance;
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
--                      end;
--     end run;
, This.NAME);
            thread.start;
        end if;
   end onChangeRepaint;

   procedure getInstance is
      Java_Result : constant RepaintBehavior_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := RepaintBehavior_Package.Create;

end org.allbinary.game.displayable.RepaintBehavior_Package;


