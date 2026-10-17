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


package body org.allbinary.game.displayable.canvas.MyFormUtil_Package is

   procedure Initialize_Fields (This : in out MyFormUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.popupMenuRectangle := RectangleFactory_Package.SINGLETON;
   end Initialize_Fields;

   procedure Initialize (This : in out MyFormUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MyFormUtil_Access is
      This : constant MyFormUtil_Access := new MyFormUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return MyFormUtil_Access is
   begin
        return MyFormUtil_Package.instance;
   end getInstance;

   procedure updateMeasurement (This : in out MyFormUtil; graphics : Graphics_Access) is
      font : Font_Access;
      displayInfo : DisplayInfoSingleton_Access;
      features : Features_Access;
      isOpenGL : Boolean;
      TOTAL_CHAR_WIDTH : Integer;
      width : Integer;
      pointFactory : PointFactory_Access;
   begin
        font := graphics.getFont;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        features := Features_Package.getInstance;
        isOpenGL := features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL);
        TOTAL_CHAR_WIDTH := (if (SWTJOGLProcessor_Package.getInstance.isJOGL) and then (isOpenGL) then 2 else 3);
        width := MyFontProcessor_Package.defaultStringWidth (font, TOTAL_CHAR_WIDTH);
        pointFactory := PointFactory_Package.getInstance;
        if (displayInfo.getLastHeight) < (320) then
            This.popupMenuRectangle := Rectangle_Package.Create (pointFactory.createXY (0, 25), width, (((font.getHeight) * (4))) + (2));
        else
            This.popupMenuRectangle := Rectangle_Package.Create (pointFactory.createXY (0, (displayInfo.getLastHalfHeight) - (70)), width, ((font.getHeight) * (5)));
        end if;
   end updateMeasurement;

   function getPopupMenuRectangle (This : in out MyFormUtil) return Rectangle_Access is
   begin
        return This.popupMenuRectangle;
   end getPopupMenuRectangle;

   procedure getInstance is
      Java_Result : constant MyFormUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getPopupMenuRectangle (This : in out MyFormUtil) is
      Java_Result : constant Rectangle_Access := MyFormUtil'Class (This).getPopupMenuRectangle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPopupMenuRectangle;

begin
   null;
   instance := MyFormUtil_Package.Create;

end org.allbinary.game.displayable.canvas.MyFormUtil_Package;


