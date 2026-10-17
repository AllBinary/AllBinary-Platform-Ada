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


package body org.allbinary.graphics.form.item.SelectableTextItem_Package is

   procedure Initialize_Fields (This : in out SelectableTextItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectableTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABTextItem_Package.Initialize (This, label, layout, altText, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return SelectableTextItem_Access is
      This : constant SelectableTextItem_Access := new SelectableTextItem;
   begin
      SelectableTextItem_Package.Initialize (This.all, label, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   function isFocusable (This : in out SelectableTextItem) return Boolean is
   begin
        return True;
   end isFocusable;

   procedure paintXY (This : in out SelectableTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      stringComponent : ABStringComponent_Access;
   begin
        This.myFontProcessor.process (graphics);
        stringComponent := This.getLabelStringComponent;
        if (stringComponent) /= (null) then
            graphics.setColor (stringComponent.getForegroundBasicColor.intValue);
        end if;
        graphics.drawString (This.getLabel, (x) + (2), y, 0);
   end paintXY;

end org.allbinary.graphics.form.item.SelectableTextItem_Package;


