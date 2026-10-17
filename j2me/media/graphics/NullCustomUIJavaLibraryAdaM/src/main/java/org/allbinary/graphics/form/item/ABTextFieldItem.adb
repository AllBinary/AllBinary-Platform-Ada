--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABTextFieldItem_Package is

   procedure Initialize_Fields (This : in out ABTextFieldItem'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextFieldItem'Class; canvas : Canvas_Access; visitor : Visitor_Access; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ABTextItem_Package.Initialize (This, label, layout, altText, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.font := font;
   end Initialize;

   function Create (canvas : Canvas_Access; visitor : Visitor_Access; label : Unbounded_String; value : Unbounded_String; maxSize : Integer; layout : Integer; altText : Unbounded_String; font : Font_Access; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABTextFieldItem_Access is
      This : constant ABTextFieldItem_Access := new ABTextFieldItem;
   begin
      ABTextFieldItem_Package.Initialize (This.all, canvas, visitor, label, value, maxSize, layout, altText, font, backgroundBasicColor, foregroundBasicColor);
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

   procedure setBackgroundBasicColorP (This : in out ABTextFieldItem; basicColor : BasicColor_Access) is
   begin
        null;
   end setBackgroundBasicColorP;

   procedure setForegroundBasicColorP (This : in out ABTextFieldItem; basicColor : BasicColor_Access) is
   begin
        null;
   end setForegroundBasicColorP;

end org.allbinary.graphics.form.item.ABTextFieldItem_Package;


