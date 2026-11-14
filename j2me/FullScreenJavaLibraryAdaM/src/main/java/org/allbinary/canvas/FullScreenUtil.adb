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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.canvas.Processor_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;

package body org.allbinary.canvas.FullScreenUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
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
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
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
        RunnableCanvas_Access (fullScreenInterface).waitOnNotify (0);
        if (commandListener) /= (null) then
            FullScreenUtil'Class (This).init (fullScreenInterface);
        end if;
   end initOnRun;

   procedure init (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) is
      fullScreenInterface : constant Canvas_Access := Canvas_Access (fullScreenInterface_Param);
      mainFeatureFactory : MainFeatureFactory_Access;
      features : Features_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        features := Features_Package.getInstance;
        if features.isFeature (mainFeatureFactory.FULL_SCREEN) then
            fullScreenInterface.setFullScreenMode (True);
        else
            fullScreenInterface.setFullScreenMode (False);
        end if;
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
        return FullScreenUtil'Class (This).isScreenChange (fullScreenInterface.isFullScreenMode);
   end isScreenChangeCanvas;

   procedure isScreenChange (This : in out FullScreenUtil; isFullScreen : Boolean) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChange (isFullScreen => isFullScreen);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChange;

   procedure isScreenChangeCanvas (This : in out FullScreenUtil; fullScreenInterface_Param : access Canvas_Package.Canvas'Class) is
      Java_Result : constant Boolean := FullScreenUtil'Class (This).isScreenChangeCanvas (fullScreenInterface_Param => fullScreenInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isScreenChangeCanvas;

begin
   null;
   instance := FullScreenUtil_Package.Create;

end org.allbinary.canvas.FullScreenUtil_Package;


