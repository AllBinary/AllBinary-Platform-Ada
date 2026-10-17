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


package body org.allbinary.graphics.form.ScrollSelectionForm_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionForm'Class) is
   begin
      null;
      This.rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
      
      
      
      This.scrollSelectionFormFormTypeItemIndexPaintable := ItemIndexPaintable_Package.getInstance;
      This.formTypeItemIndexDx := ItemIndexDx_Package.getInstance;
      This.paintable := ItemPaintableFactory_Package.getInstance;
      
   end Initialize_Fields;


   function createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PaintableForm_Access is
      commonStrings : CommonStrings_Access;
      logUtil : LogUtil_Access;
   begin
        begin
            if (formPaintableFactory) = (ItemPaintableFactory_Package.getInstance) then
                return ScrollSelectionForm_Package.Create (title, items, formPaintableFactory, border, -(3), backgroundBasicColor, foregroundBasicColor);
            else
                commonStrings := CommonStrings_Package.getInstance;
                logUtil := LogUtil_Package.getInstance;
                logUtil.putF (commonStrings.EXCEPTION_Id, logUtil, commonStrings.EXCEPTION_Id);
                return PaintableForm_Package.getNullPaintableForm;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            logUtil := LogUtil_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, logUtil, commonStrings.EXCEPTION_Id, e);
            return PaintableForm_Package.getNullPaintableForm;
                end;
        end;
   end createForm;

   function getNullScrollSelectionForm return ScrollSelectionForm_Access is
   begin
        if (ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_FORM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_FORM := ScrollSelectionForm_Package.createForm (StringUtil_Package.getInstance.EMPTY_STRING, new ABCustomItem_Access_Array'(0 .. (0) - 1 => null), ItemPaintableFactory_Package.getInstance, 0, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return ScrollSelectionForm_Access (ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_FORM);
   end getNullScrollSelectionForm;

   function getNullScrollSelectionFormHorizontal return ScrollSelectionForm_Access is
   begin
        if (ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_HORIZONTAL_FORM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_HORIZONTAL_FORM := ScrollSelectionForm_Package.createForm (StringUtil_Package.getInstance.EMPTY_STRING, new ABCustomItem_Access_Array'(0 .. (0) - 1 => null), ItemPaintableFactory_Package.getInstance, 0, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return ScrollSelectionForm_Access (ScrollSelectionForm_Package.NULL_SCROLL_SELECTION_HORIZONTAL_FORM);
   end getNullScrollSelectionFormHorizontal;

   procedure Initialize (This : in out ScrollSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        PaintableForm_Package.Initialize (This, title, items, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.adjustedExtraBorder := adjustedExtraBorder;
        This.buttonBasicColor := foregroundBasicColor;
        This.border := border;
        This.halfBorder := (Java_Shift_Right_Arithmetic (border, 1));
        This.paintable := formPaintableFactory.getInstanceItemPaintable (This'Unchecked_Access);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollSelectionForm_Access is
      This : constant ScrollSelectionForm_Access := new ScrollSelectionForm;
   begin
      ScrollSelectionForm_Package.Initialize (This.all, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ScrollSelectionForm; rectangle : Rectangle_Access; formType : FormType_Access) is
      formTypeFactory : FormTypeFactory_Access;
   begin
        PaintableForm (This).init (rectangle, formType);
        formTypeFactory := FormTypeFactory_Package.getInstance;
        if (formType) = (formTypeFactory.HORIZONTAL_FORM) then
            This.scrollSelectionFormFormTypeItemIndexPaintable := ScrollSelectionFormHorizontalPaintable_Package.Create (This'Unchecked_Access);
            This.formTypeItemIndexDx := ScrollSelectionFormHorizontalDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
            This.scrollSelectionFormFormTypeItemIndexPaintable := ScrollSelectionFormVerticalPaintable_Package.Create (This'Unchecked_Access);
            This.formTypeItemIndexDx := ScrollSelectionFormVericalDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM) then
            This.scrollSelectionFormFormTypeItemIndexPaintable := ScrollSelectionFormTempHorizontalPaintable_Package.Create (This'Unchecked_Access);
            This.formTypeItemIndexDx := ScrollSelectionFormTempHorizontalDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.NULL_FORM_TYPE) then
            null;
        else
            Java_Throw (Java_New_Exception ("Exception", formTypeFactory.UNK));
        end if;
   end init;

   function paintItemHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer is
      width : Integer;
   begin
        width := item.getMinimumWidth;
        return ((x) + (width)) + (This.border);
   end paintItemHorizontal;

   function paintItemVertical (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer is
      height : Integer;
   begin
        height := item.getMinimumHeight;
        return ((y) + (height)) + (This.border);
   end paintItemVertical;

   function paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer is
   begin
        return 0;
   end paintItemTempHorizontal;

   function getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return (dx) - (This.halfBorder);
   end getSelectedIndexForPointHorizontalDx;

   function getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return (dx) + (This.getDiffX (item));
   end getSelectedIndexForPointVerticalDx;

   function getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return (dx) + (This.getDiffX (item));
   end getSelectedIndexForPointTempHorizontalDx;

   function append (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer is
   begin
        return PaintableForm (This).append (item);
   end append;

   --  throws Exception
   function getSelectedItem (This : in out ScrollSelectionForm; point : GPoint_Access) return ABCustomItem_Access is
      index : Integer;
   begin
        index := This.getSelectedIndexForPoint (point);
        if (index) /= (-(1)) then
            return This.get (index);
        else
            return ABCustomItem_Package.getNullInstance;
        end if;
   end getSelectedItem;

   --  throws Exception
   function getItemIndex (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer is
      nextItem : ABCustomItem_Access;
      size : Integer;
      index : Integer;
   begin
        nextItem := null;
        size := This.size;
        for index in 0 .. (size) - 1 loop
            nextItem := ABCustomItem_Access (This.get (index));
            if (nextItem) = (item) then
                return index;
            end if;
        end loop;
        return -(1);
   end getItemIndex;

   function getStartIndex (This : in out ScrollSelectionForm) return Integer is
   begin
        return 0;
   end getStartIndex;

   --  throws Exception
   function getSelectedIndexForPoint (This : in out ScrollSelectionForm; point : GPoint_Access) return Integer is
      start : Integer;
      size : Integer;
      dx : Integer;
      dy : Integer;
      formTypeFactory : FormTypeFactory_Access;
      commonLabels : CommonLabels_Access;
      stringBuffer : StringMaker_Access;
      item : ABCustomItem_Access;
      width : Integer;
      height : Integer;
      diffX : Integer;
      index : Integer;
   begin
        start := This.getStartIndex;
        size := This.size;
        dx := This.getDx;
        dy := This.getDy;
        formTypeFactory := FormTypeFactory_Package.getInstance;
        commonLabels := CommonLabels_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (commonLabels.START_LABEL);
        stringBuffer.appendint (start);
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (commonLabels.TOTAL_LABEL);
        stringBuffer.appendint (size);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, ScrollSelectionForm_Package.GET_SELECTED_INDEX);
        item := null;
        width := 0;
        height := 0;
        diffX := 0;
        for index in start .. (size) - 1 loop
            item := This.get (index);
            width := item.getMinimumWidth;
            height := item.getMinimumHeight;
            diffX := This.formTypeItemIndexDx.getDx (index, item, dx, dy);
            if This.rectangleCollisionUtil.isInside (diffX, (dy) - (This.halfBorder), ((diffX) + (width)) + (This.border), (((dy) + (height)) + (This.halfBorder)) + (1), point.getX, point.getY) then
                stringBuffer.delete (0, stringBuffer.length);
                stringBuffer.append (commonLabels.ITEM_LABEL);
                stringBuffer.append (item.getLabel);
                stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
                stringBuffer.append (commonLabels.INDEX_LABEL);
                stringBuffer.appendint (index);
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, ScrollSelectionForm_Package.GET_SELECTED_INDEX);
                return index;
            end if;
            if (This.formType) = (formTypeFactory.HORIZONTAL_FORM) then
                dx := ((dx) + (width)) + (This.border);
                if (dx) > (This.rectangle.getMaxX) then
                    exit;
                end if;
            elsif (This.formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
                dy := ((dy) + (height)) + (This.border);
                if (dy) > (This.rectangle.getMaxY) then
                    exit;
                end if;
            elsif (This.formType) = (formTypeFactory.NULL_FORM_TYPE) then
                null;
            else
                Java_Throw (Java_New_Exception ("Exception", formTypeFactory.UNK));
            end if;
        end loop;
        return -(1);
   end getSelectedIndexForPoint;

   --  throws Exception
   function processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer) return Integer is
      formTypeFactory : FormTypeFactory_Access;
      index : Integer;
      max : Integer;
   begin
        formTypeFactory := FormTypeFactory_Package.getInstance;
        if (This.size) = (0) then
            return -(1);
        end if;
        index := This.getSelectedIndex;
        if ((This.formType) = (formTypeFactory.HORIZONTAL_FORM)) or else ((This.formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM)) then
            if (gameKeyCode) = (Canvas_Package.RIGHT) then
                index := index + 1;
            elsif (gameKeyCode) = (Canvas_Package.LEFT) then
                index := index - 1;
            end if;
        elsif (This.formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
            if (gameKeyCode) = (Canvas_Package.DOWN) then
                index := index + 1;
            elsif (gameKeyCode) = (Canvas_Package.UP) then
                index := index - 1;
            end if;
        elsif (This.formType) = (formTypeFactory.NULL_FORM_TYPE) then
            null;
        else
            Java_Throw (Java_New_Exception ("Exception", formTypeFactory.UNK));
        end if;
        max := (This.size) - (1);
        if (index) < (0) then
            This.setSelectedIndex (0);
        elsif (index) > (max) then
            This.setSelectedIndex (max);
        else
            This.setSelectedIndex (index);
        end if;
        return -(1);
   end processInputKey;

   function isInForm (This : in out ScrollSelectionForm; point : GPoint_Access) return Boolean is
   begin
        if This.rectangleCollisionUtil.isInside (This.x, (This.y) - (This.halfBorder), (This.rectangle.getMaxX) + (This.border), (This.rectangle.getMaxY) + (This.border), point.getX, point.getY) then
            This.logUtil.putF (StringMaker_Package.Create.append (StringUtil_Package.getInstance.toString (point)).append (ScrollSelectionForm_Package.INSIDE_FORM).toString, This'Unchecked_Access, ScrollSelectionForm_Package.IS_IN_FORM);
            return True;
        end if;
        return False;
   end isInForm;

   --  throws Exception
   function paintItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer is
      width : Integer;
      height : Integer;
      adjustedBorder : Integer;
   begin
        item.paintXY (graphics, x, y);
        width := item.getMinimumWidth;
        height := item.getMinimumHeight;
        graphics.setColor (This.getButtonBasicColor.intValue);
        adjustedBorder := 3;
        graphics.drawRect (((x) - (This.halfBorder)) - (adjustedBorder), ((y) - (This.halfBorder)) - (adjustedBorder), ((width) + (This.border)) + (This.adjustedExtraBorder), ((height) + (This.border)) + (This.adjustedExtraBorder));
        return This.scrollSelectionFormFormTypeItemIndexPaintable.paint (graphics, index, item, x, y);
   end paintItem;

   --  throws Exception
   function paintUnselectedItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) return Integer is
   begin
        graphics.setColor (This.getButtonBasicColor.intValue);
        item.paintUnselected (graphics, x, y);
        return This.scrollSelectionFormFormTypeItemIndexPaintable.paint (graphics, index, item, x, y);
   end paintUnselectedItem;

   function getDiffX (This : in out ScrollSelectionForm; item : ABCustomItem_Access) return Integer is
   begin
        return 0;
   end getDiffX;

   function getDx (This : in out ScrollSelectionForm) return Integer is
   begin
        return This.x;
   end getDx;

   function getDy (This : in out ScrollSelectionForm) return Integer is
   begin
        return This.y;
   end getDy;

   procedure setButtonBasicColor (This : in out ScrollSelectionForm; buttonBasicColor : BasicColor_Access) is
   begin
        This.buttonBasicColor := buttonBasicColor;
   end setButtonBasicColor;

   function getButtonBasicColor (This : in out ScrollSelectionForm) return BasicColor_Access is
   begin
        return This.buttonBasicColor;
   end getButtonBasicColor;

   procedure createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      Java_Result : constant PaintableForm_Access := createForm (title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createForm;

   procedure paintItemHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).paintItemHorizontal (graphics, index, item, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintItemHorizontal;

   procedure paintItemVertical (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).paintItemVertical (graphics, index, item, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintItemVertical;

   procedure paintItemTempHorizontal (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).paintItemTempHorizontal (graphics, index, item, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintItemTempHorizontal;

   procedure getSelectedIndexForPointHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getSelectedIndexForPointHorizontalDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedIndexForPointHorizontalDx;

   procedure getSelectedIndexForPointVerticalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getSelectedIndexForPointVerticalDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedIndexForPointVerticalDx;

   procedure getSelectedIndexForPointTempHorizontalDx (This : in out ScrollSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getSelectedIndexForPointTempHorizontalDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedIndexForPointTempHorizontalDx;

   procedure append (This : in out ScrollSelectionForm; item : ABCustomItem_Access) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).append (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end append;

   procedure getSelectedItem (This : in out ScrollSelectionForm; point : GPoint_Access) is
      Java_Result : constant ABCustomItem_Access := ScrollSelectionForm'Class (This).getSelectedItem (point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedItem;

   procedure getItemIndex (This : in out ScrollSelectionForm; item : ABCustomItem_Access) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getItemIndex (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemIndex;

   procedure getSelectedIndexForPoint (This : in out ScrollSelectionForm; point : GPoint_Access) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getSelectedIndexForPoint (point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedIndexForPoint;

   procedure processInputKey (This : in out ScrollSelectionForm; gameKeyCode : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).processInputKey (gameKeyCode);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInputKey;

   procedure isInForm (This : in out ScrollSelectionForm; point : GPoint_Access) is
      Java_Result : constant Boolean := ScrollSelectionForm'Class (This).isInForm (point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInForm;

   procedure paintItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).paintItem (graphics, index, item, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintItem;

   procedure paintUnselectedItem (This : in out ScrollSelectionForm; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; x : Integer; y : Integer) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).paintUnselectedItem (graphics, index, item, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintUnselectedItem;

   procedure getDiffX (This : in out ScrollSelectionForm; item : ABCustomItem_Access) is
      Java_Result : constant Integer := ScrollSelectionForm'Class (This).getDiffX (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDiffX;

begin
   null;
   NULL_SCROLL_SELECTION_FORM := NullUtil_Package.getInstance.NULL_OBJECT;
   NULL_SCROLL_SELECTION_HORIZONTAL_FORM := NullUtil_Package.getInstance.NULL_OBJECT;
   INSIDE_FORM := To_Unbounded_String (" inside form");
   IS_IN_FORM := To_Unbounded_String ("isInForm");
   GET_SELECTED_INDEX := To_Unbounded_String ("getSelectedIndexForPoint");

end org.allbinary.graphics.form.ScrollSelectionForm_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormHorizontalPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormHorizontalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexPaintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormHorizontalPaintable_Access is
      This : constant ScrollSelectionFormHorizontalPaintable_Access := new ScrollSelectionFormHorizontalPaintable;
   begin
      ScrollSelectionFormHorizontalPaintable_Package.Initialize (This.all, scrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.paintItemHorizontal (graphics, index, item, dx, dy);
   end paint;

   procedure paint (This : in out ScrollSelectionFormHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormHorizontalPaintable'Class (This).paint (graphics, index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalPaintable_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormVerticalPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormVerticalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexPaintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormVerticalPaintable_Access is
      This : constant ScrollSelectionFormVerticalPaintable_Access := new ScrollSelectionFormVerticalPaintable;
   begin
      ScrollSelectionFormVerticalPaintable_Package.Initialize (This.all, scrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function paint (This : in out ScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.paintItemVertical (graphics, index, item, dx, dy);
   end paint;

   procedure paint (This : in out ScrollSelectionFormVerticalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormVerticalPaintable'Class (This).paint (graphics, index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

end org.allbinary.graphics.form.ScrollSelectionFormVerticalPaintable_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormTempHorizontalPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalPaintable'Class; scrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexPaintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (scrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormTempHorizontalPaintable_Access is
      This : constant ScrollSelectionFormTempHorizontalPaintable_Access := new ScrollSelectionFormTempHorizontalPaintable;
   begin
      ScrollSelectionFormTempHorizontalPaintable_Package.Initialize (This.all, scrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.paintItemTempHorizontal (graphics, index, item, dx, dy);
   end paint;

   procedure paint (This : in out ScrollSelectionFormTempHorizontalPaintable; graphics : Graphics_Access; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormTempHorizontalPaintable'Class (This).paint (graphics, index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalPaintable_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormHorizontalDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormHorizontalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := multipleScrollSelectionForm;
   end Initialize;

   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormHorizontalDx_Access is
      This : constant ScrollSelectionFormHorizontalDx_Access := new ScrollSelectionFormHorizontalDx;
   begin
      ScrollSelectionFormHorizontalDx_Package.Initialize (This.all, multipleScrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.getSelectedIndexForPointHorizontalDx (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out ScrollSelectionFormHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormHorizontalDx'Class (This).getDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.ScrollSelectionFormHorizontalDx_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormVericalDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormVericalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := multipleScrollSelectionForm;
   end Initialize;

   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormVericalDx_Access is
      This : constant ScrollSelectionFormVericalDx_Access := new ScrollSelectionFormVericalDx;
   begin
      ScrollSelectionFormVericalDx_Package.Initialize (This.all, multipleScrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.getSelectedIndexForPointVerticalDx (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out ScrollSelectionFormVericalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormVericalDx'Class (This).getDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.ScrollSelectionFormVericalDx_Package;


package body org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package is

   procedure Initialize_Fields (This : in out ScrollSelectionFormTempHorizontalDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ScrollSelectionFormTempHorizontalDx'Class; multipleScrollSelectionForm : ScrollSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollSelectionForm := multipleScrollSelectionForm;
   end Initialize;

   function Create (multipleScrollSelectionForm : ScrollSelectionForm_Access) return ScrollSelectionFormTempHorizontalDx_Access is
      This : constant ScrollSelectionFormTempHorizontalDx_Access := new ScrollSelectionFormTempHorizontalDx;
   begin
      ScrollSelectionFormTempHorizontalDx_Package.Initialize (This.all, multipleScrollSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollSelectionForm.getSelectedIndexForPointTempHorizontalDx (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out ScrollSelectionFormTempHorizontalDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollSelectionFormTempHorizontalDx'Class (This).getDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.ScrollSelectionFormTempHorizontalDx_Package;


