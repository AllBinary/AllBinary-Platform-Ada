--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABTextFieldItem_Package is

   procedure Initialize_Fields (This : in out ABTextFieldItem'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextFieldItem'Class; canvas_Param : access Canvas_Package.Canvas'Class; visitor_Param : access Visitor_Package.Visitor'Class; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
      visitor : constant Visitor_Access := Visitor_Access (visitor_Param);
      font : constant Font_Access := Font_Access (font_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABTextItem_Package.Initialize (This, label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.font := font;
   end Initialize;

   function Create (canvas_Param : access Canvas_Package.Canvas'Class; visitor_Param : access Visitor_Package.Visitor'Class; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font_Param : access Font_Package.Font'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextFieldItem_Access is
      This : constant ABTextFieldItem_Access := new ABTextFieldItem;
   begin
      ABTextFieldItem_Package.Initialize (This.all, canvas_Param, visitor_Param, label, value, maxSize, layout, altText, font_Param, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   function getLabel (This : in out ABTextFieldItem) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getLabel;

   procedure setLabel (This : in out ABTextFieldItem; label : Unbounded_String) is
   begin
        null;
   end setLabel;

   function getString (This : in out ABTextFieldItem) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getString;

   procedure setString (This : in out ABTextFieldItem; string_Id : Unbounded_String) is
   begin
        null;
   end setString;

   procedure setFocus (This : in out ABTextFieldItem; state : Boolean) is
   begin
        null;
   end setFocus;

   function getFontHeight (This : in out ABTextFieldItem) return Integer is
   begin
        return This.font.getHeight;
   end getFontHeight;

   procedure setBackgroundBasicColorP (This : in out ABTextFieldItem; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setBackgroundBasicColorP;

   procedure setForegroundBasicColorP (This : in out ABTextFieldItem; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setForegroundBasicColorP;

end org.allbinary.graphics.form.item.ABTextFieldItem_Package;


