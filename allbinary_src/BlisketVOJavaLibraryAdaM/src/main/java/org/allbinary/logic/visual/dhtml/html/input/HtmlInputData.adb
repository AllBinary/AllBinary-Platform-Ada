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


package body org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package is

   procedure Initialize_Fields (This : in out HtmlInputData'Class) is
   begin
      null;
      This.TEXT := To_Unbounded_String ("text");
      This.RADIO := To_Unbounded_String ("radio");
      This.CHECKBOX := To_Unbounded_String ("checkbox");
      This.HIDDEN := To_Unbounded_String ("hidden");
      This.IMAGE := To_Unbounded_String ("image");
      This.PASSWORD := To_Unbounded_String ("password");
      This.RESET := To_Unbounded_String ("reset");
      This.SUBMIT := To_Unbounded_String ("submit");
      This.TYPES := new Unbounded_String_Array'(This.TEXT, This.RADIO, This.CHECKBOX, This.HIDDEN, This.IMAGE, This.PASSWORD, This.RADIO, This.RESET, This.SUBMIT);
   end Initialize_Fields;

   procedure Initialize (This : in out HtmlInputData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HtmlInputData_Access is
      This : constant HtmlInputData_Access := new HtmlInputData;
   begin
      HtmlInputData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HtmlInputData_Access is
   begin
        return HtmlInputData_Package.instance;
   end getInstance;

begin
   null;
   instance := HtmlInputData_Package.Create;

end org.allbinary.logic.visual.dhtml.html.input.HtmlInputData_Package;


