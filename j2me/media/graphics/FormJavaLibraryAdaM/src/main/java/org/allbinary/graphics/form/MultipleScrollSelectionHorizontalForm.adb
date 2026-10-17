--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package is

   procedure Initialize_Fields (This : in out MultipleScrollSelectionHorizontalForm'Class) is
   begin
      null;
      This.rectPaintable := NullPaintable_Package.getInstance;
      This.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := ItemIndexPaintable_Package.getInstance;
      This.backgroundColor := BasicColorFactory_Package.getInstance.TRANSPARENT_GREY.intValue;
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (MultipleScrollSelectionHorizontalForm_Access'(This'Unchecked_Access));
      This.logged := False;
      This.fontHeight := 0;
   end Initialize_Fields;


   --  throws Exception
   function createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle'Class; formType_Param : access FormType'Class; border : Integer; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return ScrollSelectionForm_Access is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      formType : FormType_Access := FormType_Access (formType_Param);
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        scrollSelectionForm := MultipleScrollSelectionHorizontalForm_Package.Create (title, items, ItemPaintableFactory_Package.getInstance, border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm.init (rectangle, formType);
        return scrollSelectionForm;
   end createForm;

   procedure Initialize (This : in out MultipleScrollSelectionHorizontalForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory'Class; border : Integer; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      formPaintableFactory : ItemPaintableFactory_Access := ItemPaintableFactory_Access (formPaintableFactory_Param);
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ScrollSelectionForm_Package.Initialize (This, title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        if (J2MEUtil_Package.isJ2ME) or else (J2MEUtil_Package.isHTML) then
            null;
        else
            --  Java nested class MPaintable: move it to its own package
            This.rectPaintable := MPaintable_Package.Create;
        end if;
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; formPaintableFactory_Param : access ItemPaintableFactory'Class; border : Integer; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return MultipleScrollSelectionHorizontalForm_Access is
      This : constant MultipleScrollSelectionHorizontalForm_Access := new MultipleScrollSelectionHorizontalForm;
   begin
      MultipleScrollSelectionHorizontalForm_Package.Initialize (This.all, title, items, formPaintableFactory_Param, border, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure fillRect (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (This.backgroundColor);
        graphics.fillRect (This.x, This.y, This.rectangle.getWidth, This.rectangle.getHeight);
   end fillRect;

   --  throws Exception
   procedure init (This : in out MultipleScrollSelectionHorizontalForm; rectangle_Param : access Rectangle'Class; formType_Param : access FormType'Class) is
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      formType : FormType_Access := FormType_Access (formType_Param);
      formTypeFactory : FormTypeFactory_Access;
   begin
        ScrollSelectionForm (This).init (rectangle, formType);
        formTypeFactory := FormTypeFactory_Package.getInstance;
        if (formType) = (formTypeFactory.HORIZONTAL_FORM) then
            This.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := MultipleScrollSelectionFormHorizontalPaintable_Package.Create (MultipleScrollSelectionHorizontalForm_Access'(This'Unchecked_Access));
        elsif (formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then
            This.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := MultipleScrollSelectionFormVerticalPaintable_Package.Create (MultipleScrollSelectionHorizontalForm_Access'(This'Unchecked_Access));
        elsif (formType) = (formTypeFactory.NULL_FORM_TYPE) then
            null;
        else
            Java_Throw (Java_New_Exception ("Exception", formTypeFactory.UNK));
        end if;
   end init;

   procedure updateMeasurement (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   --  throws Exception
   function paintHorizontal (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx_Param : Integer; dy : Integer) return Integer is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
      dx : Integer := dx_Param;
      dx2 : Integer;
   begin
        dx2 := (This.paintItem (graphics, index, item, dx, dy)) + (This.border);
        This.paintable.paint (graphics, index, dx, dy);
        dx := dx2;
        return dx;
   end paintHorizontal;

   --  throws Exception
   function paintVertical (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        This.paintItem (graphics, index, item, dx, dy);
        This.paintable.paint (graphics, index, dx, dy);
        return dx;
   end paintVertical;

   function getStartIndex (This : in out MultipleScrollSelectionHorizontalForm) return Integer is
   begin
        return This.getSelectedIndex;
   end getStartIndex;

   procedure paint (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      start : Integer;
      size : Integer;
      dx : Integer;
      dy : Integer;
      item : ABCustomItem_Access;
      index : Integer;
   begin
        begin
            This.myFontProcessor.process (graphics);
            start := This.getStartIndex;
            size := This.size;
            dx := This.x;
            dy := This.y;
            This.rectPaintable.paint (graphics);
            graphics.drawString (This.getTitle, This.x, (This.y) - (This.fontHeight), 0);
            item := null;
            for index in start .. (size) - 1 loop
                item := This.get (index);
                if (dx) >= (This.rectangle.getMaxX) then
                    if This.logged then
                        null;
                    else
                        This.logged := True;
                        PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("painting beyond maxx: ")).appendint (Integer (This.rectangle.getMaxX)).toString, MultipleScrollSelectionHorizontalForm_Access'(This'Unchecked_Access), This.canvasStrings.PAINT);
                    end if;
                end if;
                dx := This.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint (graphics, index, item, dx, dy);
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            PreLogUtil_Package.put (This.commonStrings.EXCEPTION_Id, MultipleScrollSelectionHorizontalForm_Access'(This'Unchecked_Access), This.canvasStrings.PAINT);
                end;
        end;
   end paint;

   procedure createForm (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; rectangle_Param : access Rectangle'Class; formType_Param : access FormType'Class; border : Integer; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      Java_Result : constant ScrollSelectionForm_Access := createForm (title, items, rectangle_Param, formType_Param, border, backgroundBasicColor_Param, foregroundBasicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createForm;

   procedure paintHorizontal (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx_Param : Integer; dy : Integer) is
      Java_Result : constant Integer := MultipleScrollSelectionHorizontalForm'Class (This).paintHorizontal (graphics_Param, index, item_Param, dx_Param, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintHorizontal;

   procedure paintVertical (This : in out MultipleScrollSelectionHorizontalForm; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := MultipleScrollSelectionHorizontalForm'Class (This).paintVertical (graphics_Param, index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paintVertical;

end org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;


package body org.allbinary.graphics.form.MultipleScrollSelectionFormHorizontalPaintable_Package is

   procedure Initialize_Fields (This : in out MultipleScrollSelectionFormHorizontalPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out MultipleScrollSelectionFormHorizontalPaintable'Class; multipleScrollSelectionForm_Param : access MultipleScrollSelectionHorizontalForm'Class) is
      multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access := MultipleScrollSelectionHorizontalForm_Access (multipleScrollSelectionForm_Param);
   begin
      ItemIndexPaintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.multipleScrollSelectionForm := multipleScrollSelectionForm;
   end Initialize;

   function Create (multipleScrollSelectionForm_Param : access MultipleScrollSelectionHorizontalForm'Class) return MultipleScrollSelectionFormHorizontalPaintable_Access is
      This : constant MultipleScrollSelectionFormHorizontalPaintable_Access := new MultipleScrollSelectionFormHorizontalPaintable;
   begin
      MultipleScrollSelectionFormHorizontalPaintable_Package.Initialize (This.all, multipleScrollSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   function paint (This : in out MultipleScrollSelectionFormHorizontalPaintable; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
            return This.multipleScrollSelectionForm.paintHorizontal (graphics, index, item, dx, dy);
   end paint;

   procedure paint (This : in out MultipleScrollSelectionFormHorizontalPaintable; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := MultipleScrollSelectionFormHorizontalPaintable'Class (This).paint (graphics_Param, index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

end org.allbinary.graphics.form.MultipleScrollSelectionFormHorizontalPaintable_Package;


package body org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable_Package is

   procedure Initialize_Fields (This : in out MultipleScrollSelectionFormVerticalPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out MultipleScrollSelectionFormVerticalPaintable'Class; multipleScrollSelectionForm_Param : access MultipleScrollSelectionHorizontalForm'Class) is
      multipleScrollSelectionForm : MultipleScrollSelectionHorizontalForm_Access := MultipleScrollSelectionHorizontalForm_Access (multipleScrollSelectionForm_Param);
   begin
      ItemIndexPaintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.multipleScrollSelectionForm := multipleScrollSelectionForm;
   end Initialize;

   function Create (multipleScrollSelectionForm_Param : access MultipleScrollSelectionHorizontalForm'Class) return MultipleScrollSelectionFormVerticalPaintable_Access is
      This : constant MultipleScrollSelectionFormVerticalPaintable_Access := new MultipleScrollSelectionFormVerticalPaintable;
   begin
      MultipleScrollSelectionFormVerticalPaintable_Package.Initialize (This.all, multipleScrollSelectionForm_Param);
      return This;
   end Create;
    
   --  throws Exception
   function paint (This : in out MultipleScrollSelectionFormVerticalPaintable; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) return Integer is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      item : ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
            return This.multipleScrollSelectionForm.paintVertical (graphics, index, item, dx, dy);
   end paint;

   procedure paint (This : in out MultipleScrollSelectionFormVerticalPaintable; graphics_Param : access Graphics'Class; index : Integer; item_Param : access ABCustomItem'Class; dx : Integer; dy : Integer) is
      Java_Result : constant Integer := MultipleScrollSelectionFormVerticalPaintable'Class (This).paint (graphics_Param, index, item_Param, dx, dy);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end paint;

end org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable_Package;


