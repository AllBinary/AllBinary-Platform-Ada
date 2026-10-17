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


package body org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package is

   procedure Initialize_Fields (This : in out BasicPopupMenuPaintable'Class) is
   begin
      null;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.drawStringUtil := DrawVerticalStringUtil_Package.getInstance;
      
      
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (BasicPopupMenuPaintable_Access'(This'Unchecked_Access));
      
      This.BORDER := 0;
      This.heightOffset := 0;
      This.offset := 0;
      This.animationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPopupMenuPaintable'Class; rectangle_Param : access Rectangle'Class; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.foregroundBasicColor := foregroundBasicColor;
        This.label := BasicPopupMenuPaintable_Package.NAME;
        This.rectangle := rectangle;
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
        else
            This.animationInterface := RectangleFilledAnimation_Package.Create (This.rectangle.getWidth, This.rectangle.getHeight, BasicColorFactory_Package.getInstance.TRANSPARENT_GREY);
        end if;
        This.init (rectangle);
   end Initialize;

   function Create (rectangle_Param : access Rectangle'Class; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return BasicPopupMenuPaintable_Access is
      This : constant BasicPopupMenuPaintable_Access := new BasicPopupMenuPaintable;
   begin
      BasicPopupMenuPaintable_Package.Initialize (This.all, rectangle_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      features : Features_Access;
      isOpenGL : Boolean;
      BORDER : Integer;
   begin
        font := graphics.getFont;
        features := Features_Package.getInstance;
        isOpenGL := features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL);
        This.drawStringUtil.updateMeasurement (graphics, This.label);
        BORDER := 0;
        if (J2MEUtil_Package.isHTML) or else (isOpenGL) then
            BORDER := (MyFontProcessor_Package.defaultCharWidth (font)) / (2);
        elsif ((AndroidUtil_Package.isAndroid) or else (J2MEUtil_Package.isJ2SE)) or else (SWTUtil_Package.isSWT) then
            BORDER := MyFontProcessor_Package.defaultCharWidth (font);
        else
            BORDER := (MyFontProcessor_Package.defaultCharWidth (font)) * (2);
        end if;
        This.BORDER := BORDER;
        This.heightOffset := (This.rectangle.getHeight) - (((font.getHeight) * (BasicPopupMenuPaintable_Package.NAME.length)));
        if OpenGLFeatureUtil_Package.getInstance.isAnyThreed then
            This.heightOffset := (This.heightOffset) - ((font.getHeight) + (2));
            if AndroidUtil_Package.isAndroid then
                This.heightOffset := font.getHeight;
            else
                This.heightOffset := (This.heightOffset) - ((font.getHeight) + (2));
            end if;
        end if;
        This.offset := ((Java_Shift_Right_Arithmetic (This.heightOffset, 1))) + (((if SWTJOGLProcessor_Package.getInstance.isJOGL then 4 else 0)));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   --  throws Exception
   procedure init (This : in out BasicPopupMenuPaintable; rectangle_Param : access Rectangle'Class) is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      width : Integer;
      height : Integer;
      rectangleFilledAnimation : RectangleFilledAnimation_Access;
   begin
        This.rectangle := rectangle;
        width := This.rectangle.getWidth;
        height := This.rectangle.getHeight;
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            null;
        else
            rectangleFilledAnimation := RectangleFilledAnimation_Access (This.animationInterface);
            rectangleFilledAnimation.setWidth (width);
            rectangleFilledAnimation.setHeight (height);
        end if;
   end init;

   procedure paint (This : in out BasicPopupMenuPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      point : GPoint_Access;
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer;
   begin
        This.myFontProcessor.process (graphics);
        point := This.rectangle.getPoint;
        x := point.getX;
        y := point.getY;
        width := This.rectangle.getWidth;
        height := This.rectangle.getHeight;
        This.animationInterface.paintXY (graphics, x, y);
        This.basicSetColorUtil.setBasicColorP (graphics, This.foregroundBasicColor);
        This.drawStringUtil.paintVerticle (graphics, This.label, (x) + (This.BORDER), (y) + (This.offset), 0);
        graphics.drawRect (x, y, width, height);
   end paint;

begin
   null;
   NAME := To_Unbounded_String ("MENU");

end org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable_Package;


