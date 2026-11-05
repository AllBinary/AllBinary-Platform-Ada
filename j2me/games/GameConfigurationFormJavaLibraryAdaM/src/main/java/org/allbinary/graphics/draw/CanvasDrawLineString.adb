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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package; use org.allbinary.graphics.draw.DrawStringUtil_Package;
with org.allbinary.graphics.draw.DrawStringUtil_Package_References;
with org.allbinary.graphics.draw.DrawStringUtil_Package;

package body org.allbinary.graphics.draw.CanvasDrawLineString_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype DrawStringUtil_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access;
   function "=" (Left, Right : DrawStringUtil_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   subtype DrawStringUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.draw.DrawStringUtil_Package_References.DrawStringUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DrawStringUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.draw.DrawStringUtil_Package_References."=";
   procedure Initialize_Fields (This : in out CanvasDrawLineString'Class) is
   begin
      null;
      This.drawStringUtil := DrawStringUtil_Package.getInstance;
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (CanvasDrawLineString_Access'(This'Unchecked_Access)));
      
      
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasDrawLineString'Class; x : Integer; y : Integer) is
   begin
      Initialize_Fields (This);
        This.x := x;
        This.y := y;
   end Initialize;

   function Create (x : Integer; y : Integer) return CanvasDrawLineString_Access is
      This : constant CanvasDrawLineString_Access := new CanvasDrawLineString;
   begin
      CanvasDrawLineString_Package.Initialize (This.all, x, y);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CanvasDrawLineString; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out CanvasDrawLineString; graphics_Param : access Graphics_Package.Graphics'Class; string_Id : Unbounded_String; line : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        This.drawStringUtil.drawCenterString (graphics, string_Id, 0, Ada.Strings.Unbounded.Length (string_Id), This.x, (This.y) + (((line) * (This.fontHeight))));
   end paint;

begin
   null;
   NULL_CANVAS_DRAW_LINE_STRING := CanvasDrawLineString_Package.Create (0, 0);

end org.allbinary.graphics.draw.CanvasDrawLineString_Package;


