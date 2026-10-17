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


package body org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package is

   procedure Initialize_Fields (This : in out BasicErrorNodeUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicErrorNodeUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicErrorNodeUtil_Access is
      This : constant BasicErrorNodeUtil_Access := new BasicErrorNodeUtil;
   begin
      BasicErrorNodeUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function get (document : Document_Access; errorText : Unbounded_String) return Node_Access is
      node : Node_Access;
   begin
        begin
            node := document.createElement (ErrorData_Package.getInstance.NAME);
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, ErrorData_Package.getInstance.TEXT, errorText));
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Error Node Creation Failure")));
                end;
        end;
   end get;

   procedure get (document : Document_Access; errorText : Unbounded_String) is
      Java_Result : constant Node_Access := get (document, errorText);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tree.dom.BasicErrorNodeUtil_Package;


