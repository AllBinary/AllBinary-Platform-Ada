--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.CustomCustomItem_Package is

   procedure Initialize_Fields (This : in out CustomCustomItem'Class) is
   begin
      null;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (CustomCustomItem_Access'(This'Unchecked_Access));
      This.myFontProcessor := This.updateMyFontProcessor;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomCustomItem'Class; label : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) is
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (label : Unbounded_String; backgroundBasicColor_Param : access BasicColor'Class; foregroundBasicColor_Param : access BasicColor'Class) return CustomCustomItem_Access is
      This : constant CustomCustomItem_Access := new CustomCustomItem;
   begin
      CustomCustomItem_Package.Initialize (This.all, label, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CustomCustomItem; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end updateMeasurement;

end org.allbinary.graphics.form.item.CustomCustomItem_Package;


