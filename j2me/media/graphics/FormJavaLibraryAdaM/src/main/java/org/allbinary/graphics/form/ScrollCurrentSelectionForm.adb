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
      
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
      This.processor := Processor_Package.getInstance;
      This.preItemIndexDx := ItemIndexDx_Package.getInstance;
      This.dx := 0;
      This.dy := 0;
      This.maxWidth := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollCurrentSelectionForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ScrollSelectionForm_Package.Initialize (This, title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.moveForSmallScreen := moveForSmallScreen;
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory : ItemPaintableFactory_Access; border : Integer; adjustedExtraBorder : Integer; moveForSmallScreen : Boolean; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ScrollCurrentSelectionForm_Access is
      This : constant ScrollCurrentSelectionForm_Access := new ScrollCurrentSelectionForm;
   begin
      Initialize (This.all, title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out ScrollCurrentSelectionForm; rectangle : Rectangle_Access; formType : FormType_Access) is
      formTypeFactory : FormTypeFactory_Access;
   begin
        ScrollSelectionForm (This).init (rectangle, formType);
        formTypeFactory := FormTypeFactory_Package.getInstance;
        if (formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM) then
            This.processor := TempHorizontalFormProcessor_Package.Create (This'Unchecked_Access);
            This.preItemIndexDx := TempHorizontalItemIndexDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.HORIZONTAL_FORM) then
            This.processor := HorizontalFormProcessor_Package.Create (This'Unchecked_Access);
            This.preItemIndexDx := HorizontalItemIndexDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
            This.processor := VerticalFormProcessor_Package.Create (This'Unchecked_Access);
            This.preItemIndexDx := VerticalItemIndexDx_Package.Create (This'Unchecked_Access);
        elsif (formType) = (formTypeFactory.NULL_FORM_TYPE) then
            null;
        else
            This.logUtil.putF (formTypeFactory.UNK, This'Unchecked_Access, This.commonStrings.INIT);
        end if;
        This.myFontProcessor := This.updateMyFontProcessor;
   end init;

   procedure updateMeasurement (This : in out ScrollCurrentSelectionForm; graphics : Graphics_Access) is
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
        size := This.size;
        totalWidth := 0;
        item := null;
        for index in 0 .. (size) - 1 loop
            item := This.get (index);
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
        size := This.size;
        item2 := null;
        for index in 0 .. (size) - 1 loop
            item2 := This.get (index);
            if (This.maxWidth) < (item2.getMinimumWidth) then
                This.maxWidth := item2.getMinimumWidth;
            end if;
            totalHeight := (totalHeight) + ((item2.getMinimumHeight) + (This.border));
        end loop;
        This.dx := ((((This.rectangle.getWidth) - (This.maxWidth))) / (2));
        if (This.size) > (0) then
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

   function getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return This.getDiffX (item);
   end getXTempHorizontalForm;

   function getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return 0;
   end getXHorizontalForm;

   function getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
        return (This.getDiffX (item)) + (This.halfBorder);
   end getXVerticalForm;

   function getDiffX (This : in out ScrollCurrentSelectionForm; item : ABCustomItem_Access) return Integer is
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

   procedure paint (This : in out ScrollCurrentSelectionForm; graphics : Graphics_Access) is
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
            deltaX := This.getDx;
            deltaY := This.getDy;
            size := This.size;
            formTypeFactory := FormTypeFactory_Package.getInstance;
            item := null;
            for index in 0 .. (size) - 1 loop
                item := This.get (index);
                diffX := This.preItemIndexDx.getDx (index, item, This.dx, This.dy);
                if (index) = (This.getSelectedIndex) then
                    delta_Id := This.paintItem (graphics, index, item, (deltaX) + (diffX), deltaY);
                    This.paintable.paint (graphics, index, (deltaX) + (diffX), deltaY);
                else
                    delta_Id := This.paintUnselectedItem (graphics, index, item, (deltaX) + (diffX), deltaY);
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.canvasStrings.PAINT, e);
                end;
        end;
   end paint;

   procedure getXTempHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXTempHorizontalForm (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXTempHorizontalForm;

   procedure getXHorizontalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXHorizontalForm (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXHorizontalForm;

   procedure getXVerticalForm (This : in out ScrollCurrentSelectionForm; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getXVerticalForm (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getXVerticalForm;

   procedure getDiffX (This : in out ScrollCurrentSelectionForm; item : ABCustomItem_Access) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getDiffX (item);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDiffX;

   procedure getDx (This : in out ScrollCurrentSelectionForm) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getDx;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

   procedure getDy (This : in out ScrollCurrentSelectionForm) is
      Java_Result : constant Integer := ScrollCurrentSelectionForm'Class (This).getDy;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDy;

end org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;


package body org.allbinary.graphics.form.TempHorizontalFormProcessor_Package is

   procedure Initialize_Fields (This : in out TempHorizontalFormProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out TempHorizontalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return TempHorizontalFormProcessor_Access is
      This : constant TempHorizontalFormProcessor_Access := new TempHorizontalFormProcessor;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
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

    
   procedure Initialize (This : in out HorizontalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return HorizontalFormProcessor_Access is
      This : constant HorizontalFormProcessor_Access := new HorizontalFormProcessor;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
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

    
   procedure Initialize (This : in out VerticalFormProcessor'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return VerticalFormProcessor_Access is
      This : constant VerticalFormProcessor_Access := new VerticalFormProcessor;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
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

    
   procedure Initialize (This : in out TempHorizontalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return TempHorizontalItemIndexDx_Access is
      This : constant TempHorizontalItemIndexDx_Access := new TempHorizontalItemIndexDx;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollCurrentSelectionForm.getXTempHorizontalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out TempHorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := TempHorizontalItemIndexDx'Class (This).getDx (index, item, dx, dy);
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

    
   procedure Initialize (This : in out HorizontalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return HorizontalItemIndexDx_Access is
      This : constant HorizontalItemIndexDx_Access := new HorizontalItemIndexDx;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out HorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollCurrentSelectionForm.getXHorizontalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out HorizontalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := HorizontalItemIndexDx'Class (This).getDx (index, item, dx, dy);
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

    
   procedure Initialize (This : in out VerticalItemIndexDx'Class; scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) is
   begin
      ItemIndexDx_Package.Initialize (This);
      Initialize_Fields (This);
            This.scrollCurrentSelectionForm := scrollCurrentSelectionForm;
   end Initialize;

   function Create (scrollCurrentSelectionForm : ScrollCurrentSelectionForm_Access) return VerticalItemIndexDx_Access is
      This : constant VerticalItemIndexDx_Access := new VerticalItemIndexDx;
   begin
      Initialize (This.all, scrollCurrentSelectionForm);
      return This;
   end Create;
    
   --  throws Exception
   function getDx (This : in out VerticalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) return Integer is
   begin
            return This.scrollCurrentSelectionForm.getXVerticalForm (index, item, dx, dy);
   end getDx;

   procedure getDx (This : in out VerticalItemIndexDx; index : Integer; item : ABCustomItem_Access; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := VerticalItemIndexDx'Class (This).getDx (index, item, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDx;

end org.allbinary.graphics.form.VerticalItemIndexDx_Package;


