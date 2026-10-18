--  Generated Code Do Not Modify



package body org.allbinary.graphics.form.item.ABTextItem_Package is

   procedure Initialize_Fields (This : in out ABTextItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABTextItem'Class; label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CustomCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABTextItem_Access is
      This : constant ABTextItem_Access := new ABTextItem;
   begin
      ABTextItem_Package.Initialize (This.all, label, layout, altText, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure keyPressed (This : in out ABTextItem; keyCode : Integer) is
   begin
        null;
   end keyPressed;

   procedure paintUnselected (This : in out ABTextItem; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintUnselected;

   function getLabelStringComponent (This : in out ABTextItem) return ABStringComponent_Access is
   begin
        return ABStringComponent_Package.NULL_STRING_COMPONENT;
   end getLabelStringComponent;

end org.allbinary.graphics.form.item.ABTextItem_Package;


