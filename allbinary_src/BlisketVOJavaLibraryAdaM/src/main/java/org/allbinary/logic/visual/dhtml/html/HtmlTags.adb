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


package body org.allbinary.logic.visual.dhtml.html.HtmlTags_Package is

   procedure Initialize_Fields (This : in out HtmlTags'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HtmlTags'Class) is
   begin
      Initialize_Fields (This);
        This.htmlTagVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return HtmlTags_Access is
      This : constant HtmlTags_Access := new HtmlTags;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function get (This : in out HtmlTags; index : Integer) return HtmlTag_Access is
   begin
        return HtmlTag_Access (This.htmlTagVector.get (index));
   end get;

   procedure add (This : in out HtmlTags; htmlTag : HtmlTag_Access) is
   begin
        This.htmlTagVector.add (htmlTag);
   end add;

   function size (This : in out HtmlTags) return Integer is
   begin
        return This.htmlTagVector.size;
   end size;

   procedure get (This : in out HtmlTags; index : Integer) is
      Java_Result : constant HtmlTag_Access := HtmlTags'Class (This).get (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure size (This : in out HtmlTags) is
      Java_Result : constant Integer := HtmlTags'Class (This).size;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end size;

end org.allbinary.logic.visual.dhtml.html.HtmlTags_Package;


