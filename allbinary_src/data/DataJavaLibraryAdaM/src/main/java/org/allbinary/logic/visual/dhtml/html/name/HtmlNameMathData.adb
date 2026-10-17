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


package body org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package is

   procedure Initialize_Fields (This : in out HtmlNameMathData'Class) is
   begin
      null;
      This.EQUALS := To_Unbounded_String ("_EQUALS_");
      This.PLUS := To_Unbounded_String ("_PLUS_");
      This.MINUS := To_Unbounded_String ("_MINUS_");
      This.DIVIDE := To_Unbounded_String ("_DIVIDE_");
      This.MULTIPLY := To_Unbounded_String ("_MULTIPLY_");
   end Initialize_Fields;


   function getInstance return HtmlNameMathData_Access is
   begin
        return HtmlNameMathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HtmlNameMathData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HtmlNameMathData_Access is
      This : constant HtmlNameMathData_Access := new HtmlNameMathData;
   begin
      HtmlNameMathData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := HtmlNameMathData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;


