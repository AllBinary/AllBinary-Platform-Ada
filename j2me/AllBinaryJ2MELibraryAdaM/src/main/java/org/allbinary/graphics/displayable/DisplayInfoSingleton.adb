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


package body org.allbinary.graphics.displayable.DisplayInfoSingleton_Package is

   procedure Initialize_Fields (This : in out DisplayInfoSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonLabels := CommonLabels_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.ORIENTATION := To_Unbounded_String ("ORIENTATION");
      This.ADJUSTING_FOR_SCALING_IN_PORTRAIT := To_Unbounded_String ("Adjusting for Scaling in portrait display ratio: ");
      This.ADJUSTING_FOR_SCALING_IN_LANDSCAPE := To_Unbounded_String ("Adjusting for Scaling in landscape display ratio: ");
      This.last_Case := new Integer_Array'(0 .. (4) - 1 => 0);
      This.lastHalf := new Integer_Array'(0 .. (4) - 1 => 0);
      This.full_Case := new Integer_Array'(0 .. (4) - 1 => 0);
      This.top := 0;
      This.left := 0;
      This.xOffset := 0;
      This.yOffset := 0;
      This.scaleLargestTo := 0.0;
      This.WIDTH := 0;
      This.HEIGHT := 1;
      This.CUSTOM_WIDTH := 2;
      This.CUSTOM_HEIGHT := 3;
      This.scalableListener := BaseScalable_Package.Create;
      This.displayRatio := 0.0;
      This.ratio := 1.0;
      This.SET_LAST_SIZE_METHOD_NAME := To_Unbounded_String ("setLastSize");
      This.FULL_WIDTH := To_Unbounded_String (" FullWidth: ");
      This.FULL_HEIGHT := To_Unbounded_String (" FullHeight: ");
      This.LAST_WIDTH := To_Unbounded_String ("LastWidth: ");
      This.LAST_HEIGHT := To_Unbounded_String (" LastHeight: ");
      This.PORTRAIT := To_Unbounded_String ("Portrait");
      This.LANDSCAPE := To_Unbounded_String ("Landscape");
      This.displayChangeEvent := DisplayChangeEvent_Package.Create (This'Unchecked_Access);
      This.FIRE_METHOD_NAME := To_Unbounded_String ("fire");
      This.REASON := To_Unbounded_String ("reason: ");
      This.UPDATE_FROM_ORIENTATION_CHANGE := To_Unbounded_String ("Updating from Orientation Change ");
      This.list := BasicArrayListD_Package.Create;
      This.DISPLAY_INFO := To_Unbounded_String ("Display Info: ");
      This.FULL := To_Unbounded_String ("full");
      This.LAST := To_Unbounded_String ("last");
      This.LAST_HALF := To_Unbounded_String ("lastHalf");
   end Initialize_Fields;


   function getInstance return DisplayInfoSingleton_Access is
   begin
        return DisplayInfoSingleton_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out DisplayInfoSingleton'Class) is
      size : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        size := This.last_Case'Length;
        for index in 0 .. (size) - 1 loop
            This.last_Case (index) := 0;
            This.lastHalf (index) := 0;
            This.full_Case (index) := 0;
        end loop;
        if AndroidUtil_Package.isAndroid then
            This.scaleLargestTo := 640.0;
        else
            This.scaleLargestTo := 1080.0;
        end if;
   end Initialize;

   function Create return DisplayInfoSingleton_Access is
      This : constant DisplayInfoSingleton_Access := new DisplayInfoSingleton;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getLastHalf (This : in out DisplayInfoSingleton) return Integer_Array_Access is
   begin
        return This.lastHalf;
   end getLastHalf;

   function getLast (This : in out DisplayInfoSingleton) return Integer_Array_Access is
   begin
        return This.last_Case;
   end getLast;

   function getFull (This : in out DisplayInfoSingleton) return Integer_Array_Access is
   begin
        return This.full_Case;
   end getFull;

   function getScaleLargestTo (This : in out DisplayInfoSingleton) return Float is
   begin
        return This.scaleLargestTo;
   end getScaleLargestTo;

   procedure setScaleLargestTo (This : in out DisplayInfoSingleton; scaleLargestTo : Integer) is
   begin
        This.scaleLargestTo := Float (scaleLargestTo);
   end setScaleLargestTo;

   procedure setLastSize (This : in out DisplayInfoSingleton; aLastWidth : Integer; aLastHeight : Integer; reason_Case : Unbounded_String) is
   begin
        if ((This.full_Case (This.WIDTH)) /= (aLastWidth)) or else ((This.full_Case (This.HEIGHT)) /= (aLastHeight)) then
            This.setLastSizeForce (aLastWidth, aLastHeight, reason_Case);
        end if;
   end setLastSize;

   procedure setLastSizeForce (This : in out DisplayInfoSingleton; aLastWidth : Integer; aLastHeight : Integer; reason_Case : Unbounded_String) is
      stringMaker : StringMaker_Access;
      aFullWidth : Integer;
      aFullHeight : Integer;
      operatingSystemInterface : GenericOperatingSystem_Access;
   begin
        stringMaker := StringMaker_Package.Create;
        This.logUtil.putF (stringMaker.append (CommonLabels_Package.getInstance.START_LABEL).append (reason_Case).toString, This'Unchecked_Access, This.SET_LAST_SIZE_METHOD_NAME);
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker.delete (0, stringMaker.length);
        This.logUtil.putF (stringMaker.append (This.FULL_WIDTH).appendint (aFullWidth).append (This.FULL_HEIGHT).appendint (aFullHeight).append (This.toString).toString, This'Unchecked_Access, This.SET_LAST_SIZE_METHOD_NAME);
        operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
        if operatingSystemInterface.isOverScan then
            aLastWidth := ((aLastWidth) * (operatingSystemInterface.getOverScanXPercent)) / (100);
            aLastHeight := ((aLastHeight) * (operatingSystemInterface.getOverScanYPercent)) / (100);
        end if;
        if operatingSystemInterface.isScalable then
            if This.isPortraitWH (aLastWidth, aLastHeight) then
                if (Float (aLastHeight)) > (This.scaleLargestTo) then
                    This.displayRatio := (This.scaleLargestTo) / (Float (aLastHeight));
                    This.ratio := (Float (aLastHeight)) / (This.scaleLargestTo);
                    stringMaker.delete (0, stringMaker.length);
                    This.logUtil.putF (stringMaker.append (This.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat (This.displayRatio).toString, This'Unchecked_Access, This.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer (((Float (aLastWidth)) * (This.displayRatio)));
                    aLastHeight := Integer (((Float (aLastHeight)) * (This.displayRatio)));
                    This.scalableListener.scale (This.ratio);
                else
                    This.ratio := 1.0;
                    This.scalableListener.scale (This.ratio);
                end if;
            else
                if (Float (aLastWidth)) > (This.scaleLargestTo) then
                    This.displayRatio := (This.scaleLargestTo) / (Float (aLastWidth));
                    This.ratio := (Float (aLastWidth)) / (This.scaleLargestTo);
                    stringMaker.delete (0, stringMaker.length);
                    This.logUtil.putF (stringMaker.append (This.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat (This.displayRatio).toString, This'Unchecked_Access, This.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer (((Float (aLastWidth)) * (This.displayRatio)));
                    aLastHeight := Integer (((Float (aLastHeight)) * (This.displayRatio)));
                    This.scalableListener.scale (This.ratio);
                else
                    This.ratio := 1.0;
                    This.scalableListener.scale (This.ratio);
                end if;
            end if;
        end if;
        stringMaker.delete (0, stringMaker.length);
        This.logUtil.putF (stringMaker.append (This.LAST_WIDTH).appendint (aLastWidth).append (This.LAST_HEIGHT).appendint (aLastHeight).toString, This'Unchecked_Access, This.SET_LAST_SIZE_METHOD_NAME);
        This.xOffset := (aFullWidth) - (aLastWidth);
        This.yOffset := (aFullHeight) - (aLastHeight);
        This.left := This.scalableListener.getLeft (This.xOffset);
        This.top := This.scalableListener.getTop (This.yOffset);
        This.full_Case (This.WIDTH) := aFullWidth;
        This.full_Case (This.HEIGHT) := aFullHeight;
        This.last_Case (This.WIDTH) := aLastWidth;
        This.lastHalf (This.WIDTH) := (Java_Shift_Right_Arithmetic (This.last_Case (This.WIDTH), 1));
        This.last_Case (This.HEIGHT) := aLastHeight;
        This.lastHalf (This.HEIGHT) := (Java_Shift_Right_Arithmetic (This.last_Case (This.HEIGHT), 1));
        SWTJOGLProcessor_Package.getInstance.setCustom (aLastWidth, aLastHeight, This.ratio);
        This.add (This.SET_LAST_SIZE_METHOD_NAME);
   end setLastSizeForce;

   function isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer) return Boolean is
   begin
        if (lastHeight) > (lastWidth) then
            return True;
        else
            return False;
        end if;
   end isPortraitWH;

   function isPortrait (This : in out DisplayInfoSingleton) return Boolean is
   begin
        return This.isPortraitWH (This.last_Case (This.WIDTH), This.last_Case (This.HEIGHT));
   end isPortrait;

   procedure add (This : in out DisplayInfoSingleton; reason_Case : Unbounded_String) is
      stringMaker : StringMaker_Access;
   begin
        stringMaker := StringMaker_Package.Create;
        This.logUtil.putF (stringMaker.append (This.REASON).append (reason_Case).toString, This'Unchecked_Access, This.FIRE_METHOD_NAME);
        stringMaker.delete (0, stringMaker.length);
        This.logUtil.putF (This.toStringAppend (stringMaker), This'Unchecked_Access, This.FIRE_METHOD_NAME);
        This.list.add (reason_Case);
   end add;

   procedure process (This : in out DisplayInfoSingleton) is
   begin
        begin
            if (This.list.size) > (0) then
                This.processForced;
            end if;
            This.list.clear;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.FIRE_METHOD_NAME, e);
                end;
        end;
   end process;

   procedure processForced (This : in out DisplayInfoSingleton) is
      swtJOGLProcessor : SWTJOGLProcessor_Access;
   begin
        begin
            swtJOGLProcessor := SWTJOGLProcessor_Package.getInstance;
            swtJOGLProcessor.clear;
            DisplayChangeEventHandler_Package.getInstance.fireEvent (This.displayChangeEvent);
            LastDisplayChangeEventHandler_Package.getInstance.fireEvent (This.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.FIRE_METHOD_NAME, e);
                end;
        end;
   end processForced;

   procedure update (This : in out DisplayInfoSingleton; displayable : Displayable_Access; reason_Case : Unbounded_String) is
      aLastWidth : Integer;
      aLastHeight : Integer;
      aFullWidth : Integer;
      aFullHeight : Integer;
      stringMaker : StringMaker_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      operatingSystemInterface : GenericOperatingSystem_Access;
   begin
        aLastWidth := displayable.getWidth;
        aLastHeight := displayable.getHeight;
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker := StringMaker_Package.Create;
        This.logUtil.putF (stringMaker.append (CommonLabels_Package.getInstance.START_LABEL).append (reason_Case).append (This.LAST_WIDTH).appendint (aLastWidth).append (This.LAST_HEIGHT).appendint (aLastHeight).append (This.commonSeps.SPACE).append (This.toString).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
        if ((aLastWidth) > (0)) and then ((aLastHeight) > (0)) then
            features := Features_Package.getInstance;
            openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
            if ((not (features.isDefault (openGLFeatureFactory.OPENGL))) or else ((This.last_Case (This.WIDTH)) /= (aLastWidth))) or else ((This.last_Case (This.HEIGHT)) /= (aLastHeight)) then
                stringMaker.delete (0, stringMaker.length);
                This.logUtil.putF (stringMaker.append (This.UPDATE_FROM_ORIENTATION_CHANGE).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
                operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                if operatingSystemInterface.isOverScan then
                    aLastWidth := ((aLastWidth) * (operatingSystemInterface.getOverScanXPercent)) / (100);
                    aLastHeight := ((aLastHeight) * (operatingSystemInterface.getOverScanYPercent)) / (100);
                end if;
                if operatingSystemInterface.isScalable then
                    if This.isPortraitWH (aLastWidth, aLastHeight) then
                        if (Float (aLastHeight)) > (This.scaleLargestTo) then
                            This.displayRatio := (This.scaleLargestTo) / (Float (aLastHeight));
                            This.ratio := (Float (aLastHeight)) / (This.scaleLargestTo);
                            stringMaker.delete (0, stringMaker.length);
                            This.logUtil.putF (stringMaker.append (This.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat (This.displayRatio).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
                            aLastWidth := Integer (((Float (aLastWidth)) * (This.displayRatio)));
                            aLastHeight := Integer (((Float (aLastHeight)) * (This.displayRatio)));
                            This.scalableListener.scale (This.ratio);
                        else
                            This.ratio := 1.0;
                            This.scalableListener.scale (This.ratio);
                        end if;
                    else
                        if (Float (aLastWidth)) > (This.scaleLargestTo) then
                            This.displayRatio := (This.scaleLargestTo) / (Float (aLastWidth));
                            This.ratio := (Float (aLastWidth)) / (This.scaleLargestTo);
                            stringMaker.delete (0, stringMaker.length);
                            This.logUtil.putF (stringMaker.append (This.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat (This.displayRatio).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
                            aLastWidth := Integer (((Float (aLastWidth)) * (This.displayRatio)));
                            aLastHeight := Integer (((Float (aLastHeight)) * (This.displayRatio)));
                            This.scalableListener.scale (This.ratio);
                        else
                            This.ratio := 1.0;
                            This.scalableListener.scale (This.ratio);
                        end if;
                    end if;
                end if;
                stringMaker.delete (0, stringMaker.length);
                This.logUtil.putF (stringMaker.append (This.UPDATE_FROM_ORIENTATION_CHANGE).append (This.LAST_WIDTH).appendint (aLastWidth).append (This.LAST_HEIGHT).appendint (aLastHeight).toString, This'Unchecked_Access, This.commonStrings.UPDATE);
                This.xOffset := (aFullWidth) - (aLastWidth);
                This.yOffset := (aFullHeight) - (aLastHeight);
                This.left := This.scalableListener.getLeft (This.xOffset);
                This.top := This.scalableListener.getTop (This.yOffset);
                This.full_Case (This.WIDTH) := aFullWidth;
                This.full_Case (This.HEIGHT) := aFullHeight;
                This.last_Case (This.WIDTH) := aLastWidth;
                This.lastHalf (This.WIDTH) := (Java_Shift_Right_Arithmetic (This.last_Case (This.WIDTH), 1));
                This.last_Case (This.HEIGHT) := aLastHeight;
                This.lastHalf (This.HEIGHT) := (Java_Shift_Right_Arithmetic (This.last_Case (This.HEIGHT), 1));
                SWTJOGLProcessor_Package.getInstance.setCustom (aLastWidth, aLastHeight, This.ratio);
                This.add (This.commonStrings.UPDATE);
            end if;
        end if;
   end update;

   function toString (This : in out DisplayInfoSingleton) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        return This.toStringAppend (stringBuffer);
   end toString;

   function toStringAppend (This : in out DisplayInfoSingleton; stringBuffer : StringMaker_Access) return Unbounded_String is
   begin
        stringBuffer.append (This.DISPLAY_INFO);
        stringBuffer.append (This.FULL);
        stringBuffer.append (This.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (This.full_Case (This.WIDTH));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.FULL);
        stringBuffer.append (This.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (This.full_Case (This.HEIGHT));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.LAST);
        stringBuffer.append (This.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (This.last_Case (This.WIDTH));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.LAST);
        stringBuffer.append (This.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (This.last_Case (This.HEIGHT));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.LAST_HALF);
        stringBuffer.append (This.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint (This.lastHalf (This.WIDTH));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.LAST_HALF);
        stringBuffer.append (This.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint (This.lastHalf (This.HEIGHT));
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append ((if This.isPortrait then This.PORTRAIT else This.LANDSCAPE));
        return stringBuffer.toString;
   end toStringAppend;

   function getTop (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.top;
   end getTop;

   function getLeft (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.left;
   end getLeft;

   function getLastWidth (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.WIDTH);
   end getLastWidth;

   function getLastHeight (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.HEIGHT);
   end getLastHeight;

   function getLastHalfWidth (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.lastHalf (This.WIDTH);
   end getLastHalfWidth;

   function getLastHalfHeight (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.lastHalf (This.HEIGHT);
   end getLastHalfHeight;

   function getCustomLastWidth (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.CUSTOM_WIDTH);
   end getCustomLastWidth;

   function getCustomLastHeight (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.CUSTOM_HEIGHT);
   end getCustomLastHeight;

   function getRawLastWidth (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.WIDTH);
   end getRawLastWidth;

   function getRawLastHeight (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.last_Case (This.HEIGHT);
   end getRawLastHeight;

   procedure setCustom (This : in out DisplayInfoSingleton; width_Case : Integer; height_Case : Integer) is
   begin
        This.last_Case (This.CUSTOM_WIDTH) := width_Case;
        This.lastHalf (This.CUSTOM_WIDTH) := (Java_Shift_Right_Arithmetic (This.last_Case (This.CUSTOM_WIDTH), 1));
        This.last_Case (This.CUSTOM_HEIGHT) := height_Case;
        This.lastHalf (This.CUSTOM_HEIGHT) := (Java_Shift_Right_Arithmetic (This.last_Case (This.CUSTOM_HEIGHT), 1));
   end setCustom;

   procedure setScalableListener (This : in out DisplayInfoSingleton; scalableListener : BaseScalable_Access) is
   begin
        This.scalableListener := scalableListener;
   end setScalableListener;

   function getScalableListener (This : in out DisplayInfoSingleton) return ScalableListener_Access is
   begin
        return This.scalableListener;
   end getScalableListener;

   function getRatio (This : in out DisplayInfoSingleton) return Float is
   begin
        return This.ratio;
   end getRatio;

   function getDisplayRatio (This : in out DisplayInfoSingleton) return Float is
   begin
        return This.displayRatio;
   end getDisplayRatio;

   procedure setOffset (This : in out DisplayInfoSingleton; left : Integer; top : Integer) is
   begin
        This.left := left;
   end setOffset;

   function getxOffset (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.xOffset;
   end getxOffset;

   function getyOffset (This : in out DisplayInfoSingleton) return Integer is
   begin
        return This.yOffset;
   end getyOffset;

   procedure getInstance is
      Java_Result : constant DisplayInfoSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getLastHalf (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer_Array_Access := DisplayInfoSingleton'Class (This).getLastHalf;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHalf;

   procedure getLast (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer_Array_Access := DisplayInfoSingleton'Class (This).getLast;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLast;

   procedure getFull (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer_Array_Access := DisplayInfoSingleton'Class (This).getFull;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFull;

   procedure getScaleLargestTo (This : in out DisplayInfoSingleton) is
      Java_Result : constant Float := DisplayInfoSingleton'Class (This).getScaleLargestTo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScaleLargestTo;

   procedure isPortraitWH (This : in out DisplayInfoSingleton; lastWidth : Integer; lastHeight : Integer) is
      Java_Result : constant Boolean := DisplayInfoSingleton'Class (This).isPortraitWH (lastWidth, lastHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPortraitWH;

   procedure isPortrait (This : in out DisplayInfoSingleton) is
      Java_Result : constant Boolean := DisplayInfoSingleton'Class (This).isPortrait;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPortrait;

   procedure toString (This : in out DisplayInfoSingleton) is
      Java_Result : constant Unbounded_String := DisplayInfoSingleton'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure toStringAppend (This : in out DisplayInfoSingleton; stringBuffer : StringMaker_Access) is
      Java_Result : constant Unbounded_String := DisplayInfoSingleton'Class (This).toStringAppend (stringBuffer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringAppend;

   procedure getTop (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getTop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTop;

   procedure getLeft (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getLeft;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLeft;

   procedure getLastWidth (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getLastWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastWidth;

   procedure getLastHeight (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getLastHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHeight;

   procedure getLastHalfWidth (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getLastHalfWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHalfWidth;

   procedure getLastHalfHeight (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getLastHalfHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHalfHeight;

   procedure getCustomLastWidth (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getCustomLastWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomLastWidth;

   procedure getCustomLastHeight (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getCustomLastHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCustomLastHeight;

   procedure getRawLastWidth (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getRawLastWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRawLastWidth;

   procedure getRawLastHeight (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getRawLastHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRawLastHeight;

   procedure getScalableListener (This : in out DisplayInfoSingleton) is
      Java_Result : constant ScalableListener_Access := DisplayInfoSingleton'Class (This).getScalableListener;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getScalableListener;

   procedure getRatio (This : in out DisplayInfoSingleton) is
      Java_Result : constant Float := DisplayInfoSingleton'Class (This).getRatio;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRatio;

   procedure getDisplayRatio (This : in out DisplayInfoSingleton) is
      Java_Result : constant Float := DisplayInfoSingleton'Class (This).getDisplayRatio;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDisplayRatio;

   procedure getxOffset (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getxOffset;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getxOffset;

   procedure getyOffset (This : in out DisplayInfoSingleton) is
      Java_Result : constant Integer := DisplayInfoSingleton'Class (This).getyOffset;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getyOffset;

begin
   null;
   SINGLETON := DisplayInfoSingleton_Package.Create;

end org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;


