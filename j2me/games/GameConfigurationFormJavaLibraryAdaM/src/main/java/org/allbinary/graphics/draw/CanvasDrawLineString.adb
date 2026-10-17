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


package body org.allbinary.graphics.draw.CanvasDrawLineString_Package is

   procedure Initialize_Fields (This : in out CanvasDrawLineString'Class) is
   begin
      null;
      This.drawStringUtil := DrawStringUtil_Package.getInstance;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      
      
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

   procedure updateMeasurement (This : in out CanvasDrawLineString; graphics : Graphics_Access) is
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure paint (This : in out CanvasDrawLineString; graphics : Graphics_Access; string_Id : Unbounded_String; line : Integer) is
   begin
        This.myFontProcessor.process (graphics);
        This.drawStringUtil.drawCenterString (graphics, string_Id, 0, Length (string_Id), This.x, (This.y) + (((line) * (This.fontHeight))));
   end paint;

begin
   null;
   NULL_CANVAS_DRAW_LINE_STRING := CanvasDrawLineString_Package.Create (0, 0);

end org.allbinary.graphics.draw.CanvasDrawLineString_Package;


