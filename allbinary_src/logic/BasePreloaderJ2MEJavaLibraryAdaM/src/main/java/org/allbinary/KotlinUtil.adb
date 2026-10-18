--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.KotlinUtil_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out KotlinUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out KotlinUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return KotlinUtil_Access is
      This : constant KotlinUtil_Access := new KotlinUtil;
   begin
      KotlinUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function isKotlin return Boolean is
   begin
        return False;
   end isKotlin;

   function getShortName return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getShortName;

end org.allbinary.KotlinUtil_Package;


