--  Generated Code Do Not Modify


with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.graphics.form.item.ABCustomGaugeItem_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out ABCustomGaugeItem'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ABCustomGaugeItem'Class; label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        ABCustomItem_Package.Initialize (This, label, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (label : Unbounded_String; maxValue : Integer; initialValue : Integer; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ABCustomGaugeItem_Access is
      This : constant ABCustomGaugeItem_Access := new ABCustomGaugeItem;
   begin
      ABCustomGaugeItem_Package.Initialize (This.all, label, maxValue, initialValue, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

begin
   null;
   NULL_GAUGE_ITEM := ABCustomGaugeItem_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, 1, 0, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE);

end org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;


