--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ChoiceGroupItem_Package is

   procedure Initialize_Fields (This : in out ChoiceGroupItem'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ChoiceGroupItem'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ChoiceGroupItem_Access is
      This : constant ChoiceGroupItem_Access := new ChoiceGroupItem;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.form.item.ChoiceGroupItem_Package;


