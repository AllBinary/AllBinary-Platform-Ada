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


package body org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package is

   procedure Initialize_Fields (This : in out ScrollCurrentSelectionForm'Class) is
   begin
      null;
      
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.processor := Processor_Package.getInstance;
      This.preItemIndexDx := ItemIndexDx_Package.getInstance;
      This.dx := 0;
      This.dy := 0;
      This.maxWidth := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollCurrentSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      formPaintableFactory : constant ItemPaintableFactory_Access := ItemPaintableFactory_Access (formPaintableFactory_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ScrollSelectionForm_Package.Initialize (This, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.moveForSmallScreen := moveForSmallScreen;
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory_Package.ItemPaintableFactory'Class; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ScrollCurrentSelectionForm_Access is
      This : constant ScrollCurrentSelectionForm_Access := new ScrollCurrentSelectionForm;
   begin
      ScrollCurrentSelectionForm_Package.Initialize (This.all, title, items, formPaintableFactory_Param, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ScrollCurrentSelectionForm; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      formType : constant FormType_Access := FormType_Access (formType_Param);
      formTypeFactory : FormTypeFactory_Access;
   begin
        ScrollSelectionForm (This).init (rectangle, formType);
        formTypeFactory := FormTypeFactory_Package.getInstance;
        if (formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM) then
            This.processor := TempHorizontalFormProcessor_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
            This.preItemIndexDx := TempHorizontalItemIndexDx_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
        elsif (formType) = (formTypeFactory.HORIZONTAL_FORM) then
            This.processor := HorizontalFormProcessor_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
            This.preItemIndexDx := HorizontalItemIndexDx_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
        elsif (formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
            This.processor := VerticalFormProcessor_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
            This.preItemIndexDx := VerticalItemIndexDx_Package.Create (ScrollCurrentSelectionForm_Access'(This'Unchecked_Access));
        elsif (formType) = (formTypeFactory.NULL_FORM_TYPE) then
            null;
        else
            This.logUtil.putF (formTypeFactory.UNK, ScrollCurrentSelectionForm_Access'(This'Unchecked_Access), This.commonStrings.INIT);
        end if;
        This.myFontProcessor := This.updateMyFontProcessor;
   end init;

   procedure updateMeasurement (This : in out ScrollCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure processTempHorizontalForm (This : in out ScrollCurrentSelectionForm) is
   begin
        This.dx := ((This.x) - (30)) + ((Java_Shift_Right_Arithmetic (This.rectangle.getWidth, 1)));
        This.dy := This.y;
   end processTempHorizontalForm;

   procedure processHorizontalForm (This : in out ScrollCurrentSelectionForm) is
      size : Integer;
      totalWidth : Integer;
      item : ABCustomItem_Access;
      index : Integer;
      maxTitleHeight : Integer;
   begin
        size := ScrollCurrentSelectionForm'Class (This).size;
        totalWidth := 0;
        item := null;
        for index in 0 .. (size) - 1 loop
            item := ScrollCurrentSelectionForm'Class (This).get (index);
            totalWidth := (totalWidth) + ((item.getMinimumWidth) + (This.border));
        end loop;
        This.dx := ((This.x) + ((Java_Shift_Right_Arithmetic (This.rectangle.getWidth, 1)))) - ((Java_Shift_Right_Arithmetic (totalWidth, 1)));
        This.dy := (This.y) + ((Java_Shift_Right_Arithmetic (This.rectangle.getHeight, 1)));
        if This.moveForSmallScreen then
            maxTitleHeight := 175;
            if (This.dy) < (maxTitleHeight) then
                This.dy := maxTitleHeight;
            end if;
        end if;
   end processHorizontalForm;

   procedure processVerticalForm (This : in out ScrollCurrentSelectionForm) is
      totalHeight : Integer;
      size : Integer;
      item2 : ABCustomItem_Access;
      index : Integer;
      maxTitleHeight : Integer;
   begin
        totalHeight := 0;
        size := ScrollCurrentSelectionForm'Class (This).size;
        item2 := null;
        for index in 0 .. (size) - 1 loop
            item2 := ScrollCurrentSelectionForm'Class (This).get (index);
            if (This.maxWidth) < (item2.getMinimumWidth) then
                This.maxWidth := item2.getMinimumWidth;
            end if;
            totalHeight := (totalHeight) + ((item2.getMinimumHeight) + (This.border));
        end loop;
        This.dx := ((((This.rectangle.getWidth) - (This.maxWidth))) / (2));
        if (ScrollCurrentSelectionForm'Class (This).size) > (0) then
            This.dy := (This.y) + (((((This.rectangle.getHeight) - (totalHeight))) / (2)));
            if This.moveForSmallScreen then
                maxTitleHeight := 175;
                if (This.dy) < (maxTitleHeight) then
                    This.dy := maxTitleHeight;
                end if;
            end if;
        else
            This.dy := This.y;
        end if;
   end processVerticalForm;

   function getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return ScrollCurrentSelectionForm'Class (This).getDiffX (item);
   end getXTempHorizontalForm;

   function getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return 0;
   end getXHorizontalForm;

   function getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return (ScrollCurrentSelectionForm'Class (This).getDiffX (item)) + (This.halfBorder);
   end getXVerticalForm;

   function getDiffX (This : in out ScrollCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        return (Java_Shift_Right_Arithmetic (((This.maxWidth) - (item.getMinimumWidth)), 1));
   end getDiffX;

   function getDx (This : in out ScrollCurrentSelectionForm) return Integer is
   begin
        return This.dx;
   end getDx;

   function getDy (This : in out ScrollCurrentSelectionForm) return Integer is
   begin
        return This.dy;
   end getDy;

   procedure paint (This : in out ScrollCurrentSelectionForm; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      delta_Id : Integer;
      deltaX : Integer;
      deltaY : Integer;
      size : Integer;
      formTypeFactory : FormTypeFactory_Access;
      item : ABCustomItem_Access;
      diffX : Integer;
      index : Integer;
   begin
        begin
            This.processor.process;
            delta_Id := 0;
            deltaX := ScrollCurrentSelectionForm'Class (This).getDx;
            deltaY := ScrollCurrentSelectionForm'Class (This).getDy;
            size := ScrollCurrentSelectionForm'Class (This).size;
            formTypeFactory := FormTypeFactory_Package.getInstance;
            item := null;
            for index in 0 .. (size) - 1 loop
                item := ScrollCurrentSelectionForm'Class (This).get (index);
                diffX := This.preItemIndexDx.getDx (index, item, This.dx, This.dy);
                if (index) = (ScrollCurrentSelectionForm'Class (This).getSelectedIndex) then
                    delta_Id := ScrollCurrentSelectionForm'Class (This).paintItem (graphics, index, item, (deltaX) + (diffX), deltaY);
                    This.paintable.paint (graphics, index, (deltaX) + (diffX), deltaY);
                else
                    delta_Id := ScrollCurrentSelectionForm'Class (This).paintUnselectedItem (graphics, index, item, (deltaX) + (diffX), deltaY);
                    This.paintable.paint (graphics, index, (deltaX) + (diffX), deltaY);
                end if;
                if (This.formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM) then
                    null;
                elsif (This.formType) = (formTypeFactory.HORIZONTAL_FORM) then
                    deltaX := delta_Id;
                elsif (This.formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
                    deltaY := delta_Id;
                else
                    Java_Throw (Java_New_Exception ("Exception", formTypeFactory.UNK));
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ScrollCurrentSelectionForm_Access'(This'Unchecked_Access), This.canvasStrings.PAINT, e);
                end;
        end;
   end paint;

   procedure getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXTempHorizontalForm (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXTempHorizontalForm;

   procedure getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXHorizontalForm (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXHorizontalForm;

   procedure getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXVerticalForm (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXVerticalForm;

   procedure getDiffX (This : in out ScrollCurrentSelectionForm; item_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getDiffX (item_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDiffX;

end org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;


package body org.allbinary.graphics.form.TempHorizontalFormProcessor_Package is

   procedure Initialize_Fields (This : in out TempHorizontalFormProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TempHorizontalFormProcessor'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return TempHorizontalFormProcessor_Access is
      This : constant TempHorizontalFormProcessor_Access := new TempHorizontalFormProcessor;
   begin
      TempHorizontalFormProcessor_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure process (This : in out TempHorizontalFormProcessor) is
   begin
            This.scrollCurrentSelectionForm.processTempHorizontalForm;
            This.scrollCurrentSelectionForm.processor := Processor_Package.getInstance;
   end process;

end org.allbinary.graphics.form.TempHorizontalFormProcessor_Package;


package body org.allbinary.graphics.form.HorizontalFormProcessor_Package is

   procedure Initialize_Fields (This : in out HorizontalFormProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out HorizontalFormProcessor'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return HorizontalFormProcessor_Access is
      This : constant HorizontalFormProcessor_Access := new HorizontalFormProcessor;
   begin
      HorizontalFormProcessor_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure process (This : in out HorizontalFormProcessor) is
   begin
            This.scrollCurrentSelectionForm.processHorizontalForm;
            This.scrollCurrentSelectionForm.processor := Processor_Package.getInstance;
   end process;

end org.allbinary.graphics.form.HorizontalFormProcessor_Package;


package body org.allbinary.graphics.form.VerticalFormProcessor_Package is

   procedure Initialize_Fields (This : in out VerticalFormProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out VerticalFormProcessor'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return VerticalFormProcessor_Access is
      This : constant VerticalFormProcessor_Access := new VerticalFormProcessor;
   begin
      VerticalFormProcessor_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure process (This : in out VerticalFormProcessor) is
   begin
            This.scrollCurrentSelectionForm.processVerticalForm;
            This.scrollCurrentSelectionForm.processor := Processor_Package.getInstance;
   end process;

end org.allbinary.graphics.form.VerticalFormProcessor_Package;


package body org.allbinary.graphics.form.TempHorizontalItemIndexDx_Package is

   procedure Initialize_Fields (This : in out TempHorizontalItemIndexDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TempHorizontalItemIndexDx'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return TempHorizontalItemIndexDx_Access is
      This : constant TempHorizontalItemIndexDx_Access := new TempHorizontalItemIndexDx;
   begin
      TempHorizontalItemIndexDx_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
            return This.scrollCurrentSelectionForm.getXTempHorizontalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := TempHorizontalItemIndexDx'Class (This).getDx (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.TempHorizontalItemIndexDx_Package;


package body org.allbinary.graphics.form.HorizontalItemIndexDx_Package is

   procedure Initialize_Fields (This : in out HorizontalItemIndexDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out HorizontalItemIndexDx'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return HorizontalItemIndexDx_Access is
      This : constant HorizontalItemIndexDx_Access := new HorizontalItemIndexDx;
   begin
      HorizontalItemIndexDx_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out HorizontalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
            return This.scrollCurrentSelectionForm.getXHorizontalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out HorizontalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := HorizontalItemIndexDx'Class (This).getDx (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.HorizontalItemIndexDx_Package;


package body org.allbinary.graphics.form.VerticalItemIndexDx_Package is

   procedure Initialize_Fields (This : in out VerticalItemIndexDx'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out VerticalItemIndexDx'Class; scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) is
      scrollCurrentSelectionForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (scrollCurrentSelectionForm_Param);
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class) return VerticalItemIndexDx_Access is
      This : constant VerticalItemIndexDx_Access := new VerticalItemIndexDx;
   begin
      VerticalItemIndexDx_Package.Initialize (This.all, scrollCurrentSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out VerticalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
            return This.scrollCurrentSelectionForm.getXVerticalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out VerticalItemIndexDx; index : Integer; item_Param : access ABCustomItem_Package.ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := VerticalItemIndexDx'Class (This).getDx (index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.VerticalItemIndexDx_Package;


