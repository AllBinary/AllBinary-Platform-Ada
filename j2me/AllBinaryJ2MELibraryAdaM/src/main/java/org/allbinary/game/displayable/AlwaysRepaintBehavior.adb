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


package body org.allbinary.game.displayable.AlwaysRepaintBehavior_Package is

   procedure Initialize_Fields (This : in out AlwaysRepaintBehavior'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("AlwaysRepaintBehavior");
   end Initialize_Fields;

   procedure Initialize (This : in out AlwaysRepaintBehavior'Class) is
   begin
      RepaintBehavior_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AlwaysRepaintBehavior_Access is
      This : constant AlwaysRepaintBehavior_Access := new AlwaysRepaintBehavior;
   begin
      AlwaysRepaintBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AlwaysRepaintBehavior_Access is
   begin
        return AlwaysRepaintBehavior_Package.instanceC;
   end getInstance;

   procedure repaint (This : in out AlwaysRepaintBehavior; canvas : Canvas_Access) is
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
--                          when Java_Occurrence : others =>
--                              declare
--                                  e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
--                              begin
--                          commonStrings := CommonStrings_Package.getInstance;
--                          logUtil := LogUtil_Package.getInstance;
--                          logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
--                              end;
--                      end;
--     end run;
, This.NAME);
            thread.start;
        end if;
   end repaint;

   procedure onChangeRepaint (This : in out AlwaysRepaintBehavior; canvas : Canvas_Access) is
   begin
        null;
   end onChangeRepaint;

begin
   null;
   instanceC := AlwaysRepaintBehavior_Package.Create;

end org.allbinary.game.displayable.AlwaysRepaintBehavior_Package;


