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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body org.allbinary.logic.visual.dhtml.html.HtmlTag_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out HtmlTag'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlTag'Class) is
   begin
      Initialize_Fields (This);
        This.otherAttributes := StdUtil_Package.getInstance.createHashMap;
   end Initialize;

   function Create return HtmlTag_Access is
      This : constant HtmlTag_Access := new HtmlTag;
   begin
      HtmlTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addAttribute (This : in out HtmlTag; key : Unbounded_String; value : Unbounded_String) is
   begin
        This.otherAttributes.put (Java_Box (key), Java_Box (value));
   end addAttribute;

end org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;


