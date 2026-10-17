--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package is

   procedure Initialize_Fields (This : in out HtmlMetaAttributeData'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlMetaAttributeData'Class; id : Integer; value : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := value;
        This.id := id;
   end Initialize;

   function Create (id : Integer; value : Unbounded_String) return HtmlMetaAttributeData_Access is
      This : constant HtmlMetaAttributeData_Access := new HtmlMetaAttributeData;
   begin
      Initialize (This.all, id, value);
      return This;
   end Create;

   function equals (This : in out HtmlMetaAttributeData; htmlMetaAttributeData : HtmlMetaAttributeData_Access) return Boolean is
   begin
        if (htmlMetaAttributeData.id) = (This.id) then
            return True;
        else
            return False;
        end if;
   end equals;

   function toString (This : in out HtmlMetaAttributeData) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure equals (This : in out HtmlMetaAttributeData; htmlMetaAttributeData : HtmlMetaAttributeData_Access) is
      Java_Result : constant Boolean := HtmlMetaAttributeData'Class (This).equals (htmlMetaAttributeData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equals;

   procedure toString (This : in out HtmlMetaAttributeData) is
      Java_Result : constant Unbounded_String := HtmlMetaAttributeData'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;


