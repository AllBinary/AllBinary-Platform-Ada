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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.TouchScreenTypesFactory_Package; use org.allbinary.input.motion.button.TouchScreenTypesFactory_Package;

package body org.allbinary.input.motion.button.TouchScreenFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out TouchScreenFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.touch := False;
      This.multiTouch := False;
      This.multiTouchDistinct := False;
      This.touchScreenType := TouchScreenTypesFactory_Package.getInstance.NOTOUCH;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchScreenFactory'Class) is
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        begin
            TouchScreenFactory'Class (This).setTouch (True);
            TouchScreenFactory'Class (This).setMultiTouch (False);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchScreenFactory_Package.SINGLETON, commonStrings.GET_INSTANCE, e);
                end;
        end;
   end Initialize;

   function Create return TouchScreenFactory_Access is
      This : constant TouchScreenFactory_Access := new TouchScreenFactory;
   begin
      TouchScreenFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return TouchScreenFactory_Access is
   begin
        return TouchScreenFactory_Package.SINGLETON;
   end getInstance;

   procedure setMultiTouch (This : in out TouchScreenFactory; multiTouch : Boolean) is
   begin
        This.multiTouch := multiTouch;
   end setMultiTouch;

   function isMultiTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.multiTouch;
   end isMultiTouch;

   procedure setTouch (This : in out TouchScreenFactory; touch : Boolean) is
   begin
        This.touch := touch;
   end setTouch;

   function isTouch (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.touch;
   end isTouch;

   procedure setMultiTouchDistinct (This : in out TouchScreenFactory; multiTouchDistinct : Boolean) is
   begin
        This.multiTouchDistinct := multiTouchDistinct;
   end setMultiTouchDistinct;

   function isMultiTouchDistinct (This : in out TouchScreenFactory) return Boolean is
   begin
        return This.multiTouchDistinct;
   end isMultiTouchDistinct;

   procedure setTouchScreenType (This : in out TouchScreenFactory; touchScreenType_Param : access TouchScreenType_Package.TouchScreenType'Class) is
      touchScreenType : constant TouchScreenType_Access := TouchScreenType_Access (touchScreenType_Param);
   begin
        This.touchScreenType := touchScreenType;
   end setTouchScreenType;

   function getTouchScreenType (This : in out TouchScreenFactory) return TouchScreenType_Access is
   begin
        return This.touchScreenType;
   end getTouchScreenType;

   function toString (This : in out TouchScreenFactory) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("TouchScreen: "));
        stringBuffer.appendboolean (TouchScreenFactory'Class (This).isTouch);
        stringBuffer.append (To_Unbounded_String (" MultiTouch: "));
        stringBuffer.appendboolean (TouchScreenFactory'Class (This).isMultiTouch);
        stringBuffer.append (To_Unbounded_String (" Distinct MultiTouch: "));
        stringBuffer.appendboolean (TouchScreenFactory'Class (This).isMultiTouchDistinct);
        stringBuffer.append (To_Unbounded_String (" TouchScreenType: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (TouchScreenFactory'Class (This).getTouchScreenType));
        return stringBuffer.toString;
   end toString;

begin
   null;
   SINGLETON := TouchScreenFactory_Package.Create;

end org.allbinary.input.motion.button.TouchScreenFactory_Package;


