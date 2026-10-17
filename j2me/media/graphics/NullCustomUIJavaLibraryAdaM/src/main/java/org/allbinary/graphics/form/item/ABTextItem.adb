--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABTextItem_Package is

   procedure Initialize_Fields (This : in out ABTextItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        CustomCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABTextItem_Access is
      This : constant ABTextItem_Access := new ABTextItem;
   begin
      Initialize (This.all, label, layout, altText, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure keyPressed (This : in out ABTextItem; keyCode : Integer) is
   begin
        null;
   end keyPressed;

   procedure paintUnselected (This : in out ABTextItem; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        null;
   end paintUnselected;

   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access is
   begin
        return ABStringComponent_Package.NULL_STRING_COMPONENT;
   end getLabelStringComponent;

   procedure getLabelStringComponent (This : in out ABTextItem) is
      Java_Result : constant ABStringComponent_Access := ABTextItem'Class (This).getLabelStringComponent;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLabelStringComponent;

end org.allbinary.graphics.form.item.ABTextItem_Package;


