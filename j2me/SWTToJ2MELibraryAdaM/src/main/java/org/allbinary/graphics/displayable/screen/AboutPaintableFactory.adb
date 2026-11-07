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


with org.allbinary.game.paint.AboutPaintable_Package; use org.allbinary.game.paint.AboutPaintable_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package is

   package AboutPaintable_Package renames Standard.org.allbinary.game.paint.AboutPaintable_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   procedure Initialize_Fields (This : in out AboutPaintableFactory'Class) is
   begin
      null;
      This.paintableArray := new Paintable_Access_Array'(0 => NullPaintable_Package.getInstance);
   end Initialize_Fields;


   function getInstance return AboutPaintableFactory_Access is
   begin
        return AboutPaintableFactory_Access (AboutPaintableFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AboutPaintableFactory'Class) is
      INFO : Unbounded_String_Array_Access;
      DEVELOPERS : Unbounded_String_Array_Access;
   begin
      Initialize_Fields (This);
        INFO := new Unbounded_String_Array'(To_Unbounded_String ("Built with the"), To_Unbounded_String ("AllBinary Platform"), StringUtil_Package.getInstance.EMPTY_STRING, To_Unbounded_String ("Comments or Questions:"), To_Unbounded_String ("support@allbinary.com"));
        DEVELOPERS := new Unbounded_String_Array'(To_Unbounded_String ("Developed By:"), To_Unbounded_String ("Travis Berthelot"));
        This.paintableArray := AboutPaintable_Package.getInstance (INFO, DEVELOPERS).getPaintableArrayInstance;
   end Initialize;

   function Create return AboutPaintableFactory_Access is
      This : constant AboutPaintableFactory_Access := new AboutPaintableFactory;
   begin
      AboutPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := AboutPaintableFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;


