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


package body org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package is

   procedure Initialize_Fields (This : in out HtmlTableData'Class) is
   begin
      null;
      This.LEFT := CommonStrings_Package.getInstance.LEFT;
      This.RIGHT := CommonStrings_Package.getInstance.RIGHT;
      This.NONE := To_Unbounded_String ("none");
      This.TOP := To_Unbounded_String ("top");
      This.BOTTOM := To_Unbounded_String ("bottom");
      This.TOPBOT := To_Unbounded_String ("topbot");
      This.SIDES := To_Unbounded_String ("sides");
      This.ALL_Id := To_Unbounded_String ("all");
      This.BORDERED := To_Unbounded_String ("border");
      This.BASIC := To_Unbounded_String ("basic");
      This.ROWS := To_Unbounded_String ("rows");
      This.FRAMES := new Unbounded_String_Array'(This.NONE, This.TOP, This.BOTTOM, This.TOPBOT, This.SIDES, This.ALL_Id, This.BORDERED);
   end Initialize_Fields;

   procedure Initialize (This : in out HtmlTableData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HtmlTableData_Access is
      This : constant HtmlTableData_Access := new HtmlTableData;
   begin
      HtmlTableData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HtmlTableData_Access is
   begin
        return HtmlTableData_Package.instance;
   end getInstance;

begin
   null;
   instance := HtmlTableData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package;


