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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.NullRunnable_Package; use org.allbinary.thread.NullRunnable_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.displayable.AlwaysRepaintBehavior_Package is

   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   procedure Initialize_Fields (This : in out AlwaysRepaintBehavior'Class) is
   begin
      null;
      This.AlwaysRepaintBehavior_Field_NAME := To_Unbounded_String ("AlwaysRepaintBehavior");
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
        return AlwaysRepaintBehavior_Access (AlwaysRepaintBehavior_Package.instanceC);
   end getInstance;

   procedure repaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class) is
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
--                          logUtil.put (commonStrings.EXCEPTION_Id, AlwaysRepaintBehavior_Access'(This'Unchecked_Access), commonStrings.RUN, e);
--                              end;
--                      end;
--     end run;
, This.AlwaysRepaintBehavior_Field_NAME);
            thread.start;
        end if;
   end repaint;

   procedure onChangeRepaint (This : in out AlwaysRepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        null;
   end onChangeRepaint;

begin
   null;
   instanceC := AlwaysRepaintBehavior_Package.Create;

end org.allbinary.game.displayable.AlwaysRepaintBehavior_Package;


