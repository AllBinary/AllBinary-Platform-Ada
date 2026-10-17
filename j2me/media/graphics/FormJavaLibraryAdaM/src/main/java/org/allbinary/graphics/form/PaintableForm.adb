--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.PaintableForm_Package is

   procedure Initialize_Fields (This : in out PaintableForm'Class) is
   begin
      null;
      This.canvasStrings := CanvasStrings_Package.getInstance;
      This.rectangle := RectangleFactory_Package.SINGLETON;
      This.x := 0;
      This.y := 0;
      This.formType := FormTypeFactory_Package.getInstance.NULL_FORM_TYPE;
   end Initialize_Fields;


   function getNullPaintableForm return PaintableForm_Access is
   begin
        if (PaintableForm_Package.NULL_PAINTABLE_FORM) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PaintableForm_Package.NULL_PAINTABLE_FORM := PaintableForm_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, new ABCustomItem_Access_Array'(0 .. (0) - 1 => null), BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);
        end if;
        return PaintableForm_Access (PaintableForm_Package.NULL_PAINTABLE_FORM);
   end getNullPaintableForm;

   procedure Initialize (This : in out PaintableForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ABCustomForm_Package.Initialize (This, title, items, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.setSelectedIndex (0);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return PaintableForm_Access is
      This : constant PaintableForm_Access := new PaintableForm;
   begin
      PaintableForm_Package.Initialize (This.all, title, items, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PaintableForm; rectangle : Rectangle_Access; formType : FormType_Access) is
      point : GPoint_Access;
   begin
        This.rectangle := rectangle;
        point := This.rectangle.getPoint;
        This.x := point.getX;
        This.y := point.getY;
        This.formType := formType;
   end init;

   function getWidth (This : in out PaintableForm) return Integer is
   begin
        return This.rectangle.getWidth;
   end getWidth;

begin
   null;
   NULL_PAINTABLE_FORM := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.graphics.form.PaintableForm_Package;


