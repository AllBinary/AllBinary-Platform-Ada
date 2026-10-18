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

   procedure Initialize (This : in out PaintableForm'Class; title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABCustomForm_Package.Initialize (This, title, items, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        PaintableForm'Class (This).setSelectedIndex (0);
   end Initialize;

   function Create (title : Unbounded_String; items : ABCustomItem_Access_Array_Access; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return PaintableForm_Access is
      This : constant PaintableForm_Access := new PaintableForm;
   begin
      PaintableForm_Package.Initialize (This.all, title, items, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PaintableForm; rectangle_Param : access Rectangle_Package.Rectangle'Class; formType_Param : access FormType_Package.FormType'Class) is
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      formType : constant FormType_Access := FormType_Access (formType_Param);
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


