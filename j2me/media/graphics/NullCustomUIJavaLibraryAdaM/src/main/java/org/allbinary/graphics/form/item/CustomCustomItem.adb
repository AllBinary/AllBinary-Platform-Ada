--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.CustomCustomItem_Package is

   procedure Initialize_Fields (This : in out CustomCustomItem'Class) is
   begin
      null;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomCustomItem'Class; label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ABCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
   end Initialize;

   function Create (label : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CustomCustomItem_Access is
      This : constant CustomCustomItem_Access := new CustomCustomItem;
   begin
      Initialize (This.all, label, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure updateMeasurement (This : in out CustomCustomItem; graphics : Graphics_Access) is
   begin
        null;
   end updateMeasurement;

end org.allbinary.graphics.form.item.CustomCustomItem_Package;


