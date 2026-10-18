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


with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;

package body org.allbinary.game.displayable.RepaintBehavior_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package NullRunnable_Package renames Standard.org.allbinary.thread.NullRunnable_Package;
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
      RepaintBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RepaintBehavior_Access is
   begin
        return RepaintBehavior_Package.instance;
   end getInstance;

   procedure repaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        null;
   end repaint;

   procedure onChangeRepaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
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
--                          logUtil.put (commonStrings.EXCEPTION_Id, RepaintBehavior_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                              end;
--                      end;
--     end run;
, This.NAME);
            thread.start;
        end if;
   end onChangeRepaint;

begin
   null;
   instance := RepaintBehavior_Package.Create;

end org.allbinary.game.displayable.RepaintBehavior_Package;


