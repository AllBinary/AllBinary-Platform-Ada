--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ABCustomGaugeItem_Package is

   procedure Initialize_Fields (This : in out ABCustomGaugeItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABCustomGaugeItem'Class; label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        ABCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return ABCustomGaugeItem_Access is
      This : constant ABCustomGaugeItem_Access := new ABCustomGaugeItem;
   begin
      ABCustomGaugeItem_Package.Initialize (This.all, label, maxValue, initialValue, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

begin
   null;
   NULL_GAUGE_ITEM := ABCustomGaugeItem_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, 1, 0, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);

end org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;


